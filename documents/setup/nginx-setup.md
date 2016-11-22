# Setup nginx server

> setp one (install nginx server)
```sh
sudo apt-get install nginx
```

---
> step two (config website hosts and url rules)
```
# Examples like below (file path: /etc/nginx/sites-available/; file name: default)
server {
    listen       80;
    server_name iwish.com *.iwish.com;
    root  /home/user/Documents/iwish/src/backend/web;(Change this path to your web entry path)
    index index.html index.htm index.php;

    access_log /var/log/nginx/iwish.com-access.log;
    error_log  /var/log/nginx/iwish.com-error.log;

    location / {
        proxy_pass http://iwish.com:81;
    }

    location /api {
        try_files $uri $uri/ /index.php?$args;
    }

    location /webapp/build/ {
        alias /home/user/Documents/iwish/src/webapp/web/build/;
    }

    location /webapp {
        proxy_pass http://iwish.com:82;
    }

    location ~ .*\.(php|php5)?$ {
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        # or fastcgi_pass   127.0.0.1:9000;
        include        fastcgi_params;
    }

    location ~ /\.(ht|svn|git) {
            deny all;
    }
}

server {
    listen       81;
    server_name iwish.com *.iwish.com;
    root  /home/user/Documents/iwish/src/frontend/web;
    index index.html index.htm index.php;

    access_log /var/log/nginx/iwish.com-access.log;
    error_log  /var/log/nginx/iwish.com-error.log;

    location / {
        try_files $uri $uri/ /index.php?$args;
    }

    location /vendor/ {
        alias /home/user/Documents/iwish/src/vendor/;
    }

    location /dist/ {
        alias /home/user/Documents/iwish/src/web/dist/;
    }

    location ~ .*\.(php|php5)?$ {
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        # or fastcgi_pass   127.0.0.1:9000;
        include        fastcgi_params;
    }

    location ~ /\.(ht|svn|git) {
            deny all;
    }
}

server {
    listen       82;
    server_name iwish.com *.iwish.com;
    root /home/user/Documents/iwish/src/webapp/web;
    index index.php;

    access_log /var/log/nginx/iwish-webapp-access.log;
    error_log  /var/log/nginx/iwish-webapp-error.log;

    location / {
        try_files $uri $uri/ /index.php?$args;
        #try_files $uri$args $uri$args/ index.php;
    }

    location /vendor/ {
        alias /home/user/Documents/iwish/src/vendor/;
    }

    location /dist/ {
        alias /home/user/Documents/iwish/src/web/dist/;
    }

    location ~ .*\.(php|php5)?$ {
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        # or fastcgi_pass   127.0.0.1:9000;
        include        fastcgi_params;
    }

    location ~ /\.(ht|svn|git) {
            deny all;
    }

    location ~ /.+\.(coffee|scss) {
           deny all;
    }
}
```

# Basic usage

1. Start nginx server
```sh
sudo service nginx start
```

2. Stop nginx server
```sh
sudo service nginx stop

```

3. Restart nginx server
```sh
sudo service nginx restart

# When you change nginx configuration you need to restart the server
```

4. Check nginx server status
```sh
service nginx status
```

5. Find out all comman about nginx
```sh
service nginx --status-all
```

6. Check nginx version
```sh
nginx -v
```

# Useful link
1. How to install and config nginx on ubuntu
**[help.ubuntu.com](https://help.ubuntu.com/community/Nginx)**

2. Nginx offical site
**[www.nginx.com](https://www.nginx.com/)**