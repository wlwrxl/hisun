<!-- 广告焦点图管理图片上传弹窗 -->
<script type="text/javascript">
$(document).ready(function(){
	var options = {
		success : function(result){
			if(result != ''){
				$("#image<?php echo $_POST['id'];?>").attr("value",result);
			}
		},
	};
	$('#formUpImage').submit(function(){
		$(this).ajaxSubmit(options);
		$.dialog.close();
		return false;
	});
});
</script>
<div class="dialog_imageup">
<form id="formUpImage" action="admin.php?mod=advertisedeal" method="post" enctype="multipart/form-data">
	<div class="dialog_imageup_title center fw700">
		上传图片
	</div>
	<div class="dialog_imageup_main">
		<input type="file" name="upfile" /><input type="hidden" name="pop" value="upImage2" /><input type="submit" value="上传" />
	</div>
</form>
</div>