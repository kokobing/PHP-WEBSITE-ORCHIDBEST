<?php
require "../inc/config.php";
require "../inc/function.class.php";

//新闻内容
$strSQL = "select * from newsinfo where id_newsinfo='".$_GET[newsid]."'  " ;
$objDB->Execute($strSQL);
$onenews=$objDB->fields();

//新闻内容目录
$strSQL = "select name from newsdir where id_newsdir=$onenews[id_newsdir]  " ;
$objDB->Execute($strSQL);
$onenewsdir=$objDB->fields();
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

<div id="newscontentright">
<div id="newscontentrightmainbox">
<div class="txt"  id="aboutcontentright_navi"><a href="/en/" class="link_aboutnavi">Home</a> > <a href="/en/news/news.php" class="link_aboutnavi"> News </a> ><a href="/en/news/news.php?ndir=<?=$onenews[id_newsdir];?>" class="link_aboutnavi">  <?=$onenewsdir[name];?></a> > News Content</div>
<div class="txt" id="newscontentright_content">

<div id="onenewstitle">
<ul>
 <li class="txt_newstitle"><?=$onenews[title];?></li>
 <li><?=$onenews[newsdate];?></li>
</ul>
</div><!--end onenewstitle!-->

<div id="onenewscontent">
<?=$onenews[content];?>
</div><!--end onenewscontent!-->
</div><!--end aboutcontentright_content!-->
</div><!--end aboutcontentrightmainbox!-->
</div><!--end aboutcontentright!-->

</div><!--end aboutcontent!-->





</div><!--end contain!-->


<? require "../footer.php"; ?>




</body>
</html>
