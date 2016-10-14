# Table of content

##setup-environment

### Setup PHP

1. Install PHP
The Yii2.0 require the verison of PHP must be >= 5.4.0, so before install PHP and its extensions, you must do like below first
```sh
sudo add-apt-repository ppa:ondrej/php5
sudo apt-get update
```
Then install PHP and its extensions
```sh
sudo apt-get install php5-cgi php5-fpm php5-curl php5-mcrypt php5-gd php5-dev
```

2. PHP-FPM Status Management

```sh
sudo service php5-fpm {start|stop|quit|restart|reload|logrotate}
```

### Setup Redis

1. Install Redis
```sh
sudo apt-get install redis-server
```

2. Install PHP Redis extension
```sh
sudo apt-get install php5-redis
```

### Setup SCSS

1. Install ruby (version > 1.9.1)
```sh
sudo apt-get install ruby
```

2. Use mirror for ruby
```sh
gem sources --remove http://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l
*** CURRENT SOURCES ***
https://ruby.taobao.org
```
Ensure only ruby.taobao.org exists

3. Install SASS
```sh
gem install sass
```

### Setup grunt and bower

1. Install nodejs
```sh
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash
. ~/.profile
nvm install v0.12.10
```

2. Install grunt
```sh
npm install -g grunt-cli
```

3. Setup bower
```sh
npm install -g bower
```


# IF You have error or problem when you install software, pelease write down it on FAQ.markdown file