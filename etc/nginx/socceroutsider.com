

server {
            listen   80;
            server_name  www.socceroutsider.com;
            rewrite ^/(.*) http://socceroutsider.com/$1 permanent;
           }


server {

            listen   80;
            server_name socceroutsider.com

            location / {
                        root   /home/chris/www/socceroutsider.com/src/;
                        index  index.html;
                        }

}
