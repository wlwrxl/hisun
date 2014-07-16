<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  136527220@qq.com
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

$pop = isset($_POST['pop'])?$_POST['pop']:'default';

if($pop == 'create_art'){
	$title = $_POST['title'];
	$column = $_POST['column'];
	$author = $_POST['author'];
	$source = $_POST['source'];
	$sourceurl = $_POST['sourceurl'];
	$content = $_POST['content'];
	$clicknum = $_POST['clicknum'];
	$order = $_POST['order'];
	$isfocus = $_POST['isfocus'];
	$image = $_POST['image'];
	if(empty($title)){
		echo "<script>alert('标题必须填写');history.back();</script>";
		exit();
	}else{
		$db->table("module_article")->insert("(`column`,`title`,`author`,`source`,`sourceurl`,`content`,`clicknum`,`pubDatetime`,`order`,`checked`,`isfocus`,`focusimage`) VALUES('$column','$title','$author','$source','$sourceurl','$content','$clicknum',now(),'$order','1','$isfocus','$image')");
		Jump("admin.php?chan=".$_POST['chan']."&col=".$_POST['column']);
	}
}

if($pop == 'edit_art'){
	$id = $_POST['id'];
	$title = $_POST['title'];
	$author = $_POST['author'];
	$source = $_POST['source'];
	$sourceurl = $_POST['sourceurl'];
	$pubDatetime = $_POST['pubDatetime'];
	$content = $_POST['content'];
	$clicknum = $_POST['clicknum'];
	$order = $_POST['order'];
	$isfocus = $_POST['isfocus'];
	$image = $_POST['image'];
	if(empty($title)){
		echo "<script>alert('标题必须填写');history.back();</script>";
		exit();
	}else{
		$db->table("module_article")->where("`id`='$id'")->update("`title`='$title',`author`='$author',`source`='$source',`sourceurl`='$sourceurl',`pubDatetime`='$pubDatetime',`content`='$content',`clicknum`='$clicknum',`order`='$order',`isfocus`='$isfocus',`focusimage`='$image'");
		Jump("admin.php?chan=".$_POST['chan']."&col=".$_POST['col']);
	}
}

if($pop == 'delete_art'){
	$id = $_POST['id'];
	$db->table("module_article")->where("`id`='$id'")->delete();
}

if($pop == 'check_art'){
	$id = $_POST['id'];
	$db->table("module_article")->where("`id`='$id'")->update("`checked`='1'");
}

if($pop == 'upImage'){
	$config = array(
        "savePath" => "data/image/",
        "maxSize" => 10000, //KB
        "allowFiles" => array(".gif", ".png", ".jpg", ".jpeg", ".bmp")
    );
    $upimage = new upload("upfile", $config);
    $info = $upimage->getFileInfo();

	$img_dir = 'data/image/'.date("Ymd").'/';
	$new_dir = FILE_PATH.$img_dir.basename($info['url']);
	$Thumb = new Thumb('',$img_dir);
	$Thumb->reImg($new_dir,340,290);

	echo $info['url'];
}
?>