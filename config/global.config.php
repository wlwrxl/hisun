<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  sunqinye@gmail.com  136527220
 * Copyright: Author All rights reserved.
 *
 * 全局配置文件
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

$config = array(
	/*数据库配置*/
	'DB_TYPE' => 'mysql',			//数据库类型
	'DB_HOST' => 'localhost',		//服务器地址
	'DB_PORT' => '3306',			//端口
	'DB_USER' => 'root',			//用户名
	'DB_PASSWORD' => '',			//密码
	'DB_NAME' => 'cgse',				//数据库名
	'DB_PREFIX' => 'hc_',				//表名前缀
	'DB_CHARSET' => 'utf8',			//字符集

	/*Cookie设置*/
	'COOKIE_PREFIX' => 'hc_',
	'COOKIE_PATH' => '/',
	'COOKIE_DOMAIN' => '',

	/*模板设置*/
	'TEMPLATE_PATH' => 'template/default/',

	/*安全设置*/
	'SAFE_KEY' => 'hisuncms',

	/*调试模式*/
	'DEBUG_MODEL' => false,
);
?>