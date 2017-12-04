<?php

//功能函数 上传
function upload_file($uploadfile,$savepath,$file_name){
	$upload_file=$_FILES[$uploadfile]['tmp_name'];
	$upload_file_name=$_FILES[$uploadfile]['name'];
	$upload_file_size=$_FILES[$uploadfile]['size'];
	if($upload_file_name==null) return null;
	$name=$file_name;
	$typeA=explode(".",basename($upload_file_name));
	$type=".".$typeA[count($typeA)-1];
	if($upload_file_size>3000000){
		print("<script> alert('上传的文件大小超过3M');</script>");
		print("<script> window.history.back();</script>");
		exit;
	}
	if(strtoupper($type)!=".JPEG"&&strtoupper($type)!=".JPG"&&strtoupper($type)!=".GIF"){
		print("<script> alert('上传文件类型不正确');</script>");
		print("<script> window.history.go(-1);</script>");
		exit;
	}
	if(!move_uploaded_file($upload_file,$savepath.$name.$type)){
		print("<script> alert('文件上传失败');</script>");
		print("<script> window.history.back();</script>");
		exit;
	}
	return $name.$type;
}


//处理调用

if ( is_uploaded_file( $_FILES['photo']['tmp_name'] ) ){//是否上传照片
       
	    $image_file=upload_file("photo","upload/",mktime());//上传图片
		$pic_path= "/upload/".$image_file;//图片路径
         echo $pic_path;//图片路径

}


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test</title>
</head>
<body><br />
<br />
<br />
<br />
<br />

<form id="form1" name="form1" enctype="multipart/form-data" method="post" action="upload.php">
  <label>
  <input name="photo" type="file"  size="10" class="input_01" id="photo" />
  <input name="OK" type="submit" id="OK" value="OK" />
  </label>
</form>

</body>
</html>
