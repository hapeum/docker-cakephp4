# docker-cakephp4

--
# 使い方 #

1. ソースダウンロード

```
git clone https://github.com/hapeum/docker-cakephp4.git <フォルダー名>
```

2. docker image 生成

```
cd <フォルダー名>
docker-compose build
```

3. container 生成

```
docker-composer up -d
```

4. CakePHPアプリ生成

```
docker exec -it cake_php /bin/bash

[container側]
cd /var/www/html
composer create-project --prefer-dist cakephp/app .
```

5. CakePHPの環境設定

var/www/html/config/app_local.php 修正

```
'Datasources' => [
	'default' => [
	  'host' => '172.26.0.4', ※docker-compose.ymlで指定したMySQLのアドレス
	  'username' => 'root',
	  'password' => 'mypass',
	  'database' => 'cake',
	]
]
```
