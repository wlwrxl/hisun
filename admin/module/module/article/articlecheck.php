<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  136527220@qq.com
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

permit('checkarticle');

require_once(FILE_PATH.'admin/template/common/common.html');
require_once(FILE_PATH.'admin/template/common/header.html');

if($op == 'default'){
	$m_articles = $db->table("module_article")->where("`checked`='0'")->order("`id` DESC")->page(15)->selectall();
	$pageshow = $db->show(3);
}

require_once(FILE_PATH.'admin/template/module/article/articlecheck.html');
require_once(FILE_PATH.'admin/template/common/footer.html');
?>