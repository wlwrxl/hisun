<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  sunqinye@gmail.com  136527220
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

permit('user');

require_once(FILE_PATH.'admin/template/common/common.html');
require_once(FILE_PATH.'admin/template/common/header.html');

//管理员组将从0起始改为从1起始
$result = $db->table("group")->selectall();
foreach ($result as $value){
	$groups[$value['gid']] = $value;
}

//用户组将从0起始改为从1起始
$result = $db->table("user_group")->selectall();
foreach ($result as $value){
	$usergroups[$value['gid']] = $value;
}

if($op == 'default'){
	$users = $db->table("user")->page(20)->selectall();
	$pageshow = $db->show(3);
}
if($op == 'edit'){
	$uid = isset($_GET['uid'])?$_GET['uid']:'0';
	if($uid != '0'){
		$userinfo = $db->table("user")->where("`uid`='$uid'")->selectone();
	}
	$columns = $db->table("column")->where("`channel`='11'")->selectall();
	$group_columns = $db->table("user_group_column")->where("`uid`='$uid'")->selectall();
	foreach ($group_columns as $group_column){
		$columns_permit[] = $group_column['cid'];
	}
	if(empty($columns_permit)) $columns_permit = array();
}

if($op == 'editadmin'){
	$uid = isset($_GET['uid'])?$_GET['uid']:'0';
	if($uid != '0'){
		$userinfo = $db->table("admin")->where("`uid`='$uid'")->selectone();
	}
	$channels = $db->table("channel")->selectall();
	$group_columns = $db->table("group_column")->where("`uid`='$uid'")->selectall();
	foreach ($group_columns as $group_column){
		$columns_permit[] = $group_column['cid'];
	}
	if(empty($columns_permit)) $columns_permit = array();
}

if($op == 'listadmin'){
	$users = $db->table("admin")->page(20)->selectall();
	$pageshow = $db->show(3);
}

if($op == 'managegroup'){
	$gid = isset($_GET['gid'])?$_GET['gid']:'1';
	$groupall = $groups[$gid];
}

if($op == 'manageusergroup'){
	$gid = isset($_GET['gid'])?$_GET['gid']:'1';
	$usergroupall = $usergroups[$gid];
}

require_once(FILE_PATH.'admin/template/user/user.html');
require_once(FILE_PATH.'admin/template/common/footer.html');
?>