<?php
require "../inc/config.php";
require "../inc/function.class.php";

//企业文化
$strSQL = "select content from pageset where id_pageset='4'" ;
$objDB->Execute($strSQL);
$culture=$objDB->fields();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="../inc/css/css1.css" rel="stylesheet" type="text/css">
<link href="../inc/css/homeslidenotext.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../inc/js/stmenu.js"></script>
<script src="../inc/js/jquery.min.js"></script>
<script src="../inc/js/jquery.easing.1.3.js"></script>
<script src="../inc/js/slides.min.jquery.js"></script>
<script src="../inc/js/jcarousellite_1.0.1.pack.js" type="text/javascript"></script>
<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: '/inc/pics/loading.gif',
				play: 5000,
				pause: 2500,
				effect: 'fade, fade',
				hoverPause: true
			});
		});
</script>


<?php if($setinfo[iscopy]=='1'){?>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>
<?php }?>
<?php if($setinfo[otherheader]!=''){echo $setinfo[otherheader];}?>
</head>
<body>

<? require "../header.php"; ?>

<div id="aboutcontain">
<div id="mainadv">

	<div id="container">
        <? require "../mainadv.php"; ?>
	</div>

</div><!--end mainadv!-->

<div id="aboutcontent">

<div id="aboutcontentleft">
<?php require "left.php"; ?>
</div><!--end aboutcontentleft!-->

<div id="aboutcontentright">
<div id="aboutcontentrightmainbox">
<div class="txt"  id="aboutcontentright_navi"><a href="/" class="link_aboutnavi">Home</a> > <a href="#" class="link_aboutnavi">Our Culture</a></div>
<div class="txt" id="aboutcontentright_content">
<?=$culture[content];?>
</div><!--end aboutcontentright_content!-->
</div><!--end aboutcontentrightmainbox!-->
</div><!--end aboutcontentright!-->

</div><!--end aboutcontent!-->





</div><!--end contain!-->


<? require "../footer.php"; ?>




</body>
</html>
