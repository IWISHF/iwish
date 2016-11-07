# Set up composer
==Way-One: The below steps is official site offered==
>step one (download composer installer programe)
```sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```
---
>step two (validate file)
```sh
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
```
---
>step three (execute installer programe)
```sh
php composer-setup.php
# You can install composer to a specific directory. such as: php composer-setup.php --install-dir=bin
```
---
>step four (delete composer-setp.php file)
```sh
php -r "unlink('composer-setup.php');"
```
---
>step five (optional: install on global)
```sh
mv composer.phar /usr/local/bin/composer
```

==Way-Two: use curl to install composer==
>install composer locally
```sh
curl -sS https://getcomposer.org/installer | php
```
---
>install composer global
```sh
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

### Set up it with shell file

You also can use bash command to install composer.
Do it like this:
first: you need to cd in setup-shell directory.
second: execute shell file
```sh
bash composer-setup.sh
```

# Basic usage
==Notice: the follow command based on composer install on global==\
**[Composer Command site](https://getcomposer.org/doc/03-cli.md/)**

1. install the defined dependencies for your project
```sh
composer install
```
2. update composer.lock file
```sh
composer update
```
3. Adds required packages to your composer.json and installs them
```sh
composer require 
```


**[Composer official site](https://getcomposer.org/)**