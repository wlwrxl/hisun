<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  sunqinye@gmail.com  136527220
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

$pop = isset($_POST['pop'])?$_POST['pop']:'default';

if($pop == 'savepage'){
	$id = $_POST['id'];
	$content = $_POST['content'];
	$db->table("module_page")->where("`id`='$id'")->update("`content`='$content'");
	echo '<script>history.back();</script>';
}
?>