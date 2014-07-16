<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  sunqinye@gmail.com  136527220
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

$pop = isset($_POST['pop'])?$_POST['pop']:'default';

if($pop == 'add_pro'){
	$title = $_POST['title'];
	$column = $_POST['column'];
	$picture1 = $_POST['picture1'];
	$picture2 = $_POST['picture2'];
	$picture3 = $_POST['picture3'];
	$sex = $_POST['sex'];
	$xueli = $_POST['xueli'];
	$zhicheng = $_POST['zhicheng'];
	$model = $_POST['model'];
	$spec = $_POST['spec'];
	$price = $_POST['price'];
	$jianjie = $_POST['jianjie'];
	$introduce = $_POST['introduce'];
	$clicknum = $_POST['clicknum'];
	$order = $_POST['order'];

	if(empty($title)){
		echo "<script>alert('名称必须填写');history.back();</script>";
		exit();
	}else{
		$db->table("module_product")->insert("(`column`,`title`,`sex`,`xueli`,`zhicheng`,`jianjie`,`model`,`spec`,`price`,`introduce`,`picture1`,`picture2`,`picture3`,`clicknum`,`datetime`,`order`) VALUES('$column','$title','$sex','$xueli','$zhicheng','$jianjie','$model','$spec','$price','$introduce','$picture1','$picture2','$picture3','$clicknum',now(),'$order')");
		Jump("admin.php?chan=".$_POST['chan']."&col=".$_POST['column']);
	}
}

if($pop == 'edit_pro'){
	$id = $_POST['id'];
	$title = $_POST['title'];
	$sex = $_POST['sex'];
	$xueli = $_POST['xueli'];
	$zhicheng = $_POST['zhicheng'];
	$picture1 = $_POST['picture1'];
	$picture2 = $_POST['picture2'];
	$picture3 = $_POST['picture3'];
	$model = $_POST['model'];
	$spec = $_POST['spec'];
	$price = $_POST['price'];
	$jianjie = $_POST['jianjie'];
	$introduce = $_POST['introduce'];
	$clicknum = $_POST['clicknum'];
	$order = $_POST['order'];
	if(empty($title)){
		echo "<script>alert('名称必须填写');history.back();</script>";
		exit();
	}else{
		$db->table("module_product")->where("`id`='$id'")->update("`title`='$title',`sex`='$sex',`xueli`='$xueli',`zhicheng`='$zhicheng',`jianjie`='$jianjie',`model`='$model',`spec`='$spec',`price`='$price',`introduce`='$introduce',`picture1`='$picture1',`picture2`='$picture2',`picture3`='$picture3',`clicknum`='$clicknum',`order`='$order'");
		Jump("admin.php?chan=".$_POST['chan']."&col=".$_POST['col']);
	}

}

if($pop == 'delete_pro'){
	$id = $_POST['id'];
	$db->table("module_product")->where("`id`='$id'")->delete();
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
	$Thumb->reImg($new_dir,330,220);

	echo $info['url'];
}
?>