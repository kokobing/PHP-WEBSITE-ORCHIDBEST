<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/pagenav.class.php";


//新闻动态
if(!isset($_GET[ndir]) || $_GET[ndir]==''){
$intRows = 10;
$strSQLNum = "SELECT COUNT(*) as num from newsinfo as a left join newsdir as b on a.id_newsdir=b.id_newsdir where a.dele=1 and b.fatherid!=1";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select a.*,b.fatherid from newsinfo as a left join newsdir as b on a.id_newsdir=b.id_newsdir where a.dele=1 and b.fatherid!=1 order by a.id_newsinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrnews=$objDB->GetRows();

}elseif(isset($_GET[ndir])){

$intRows = 10;
$strSQLNum = "SELECT COUNT(*) as num from newsinfo  where id_newsdir='".$_GET[ndir]."'  and dele=1";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select * from newsinfo  where id_newsdir='".$_GET[ndir]."' and dele=1  order by id_newsinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrnews=$objDB->GetRows();
}

//新闻内容目录
$strSQL = "select name from newsdir where id_newsdir='".$_GET[ndir]."'  " ;
$objDB->Execute($strSQL);
$newsdirnavi=$objDB->fields();

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

<div id="newscontentleft">
<?php require "left.php"; ?>
</div><!--end aboutcontentleft!-->

<div id="aboutcontentright">
<div id="aboutcontentrightmainbox">
<div class="txt"  id="aboutcontentright_navi"><a href="/" class="link_aboutnavi">Home</a> > <a href="news.php?ndir=<?=$_GET[ndir]?>" class="link_aboutnavi"><?=$newsdirnavi[name];?></a></div>
<div class="txt" id="newscontentright_content">

<div id="allnews">
  <ul>
  <?php for($i=0;$i<sizeof($arrnews);$i++){?>
    <li><span><?=$arrnews[$i][newsdate];?></span><a href="newspage.php?newsid=<?=$arrnews[$i][id_newsinfo];?>" class="link_navi"><?=$arrnews[$i][title];?></a></li>
  <?php }?>
  </ul>
</div><!--end allnews!-->
<div id="allnewsnavi"><?php echo $strNavigate;?></div>


</div><!--end aboutcontentright_content!-->
</div><!--end aboutcontentrightmainbox!-->
</div><!--end aboutcontentright!-->

</div><!--end aboutcontent!-->





</div><!--end contain!-->


<? require "../footer.php"; ?>




</body>
</html>
