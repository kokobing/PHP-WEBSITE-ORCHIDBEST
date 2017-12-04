<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/pagenav.class.php";


//公司产品
if(!isset($_GET[pdir1]) || $_GET[pdir1]==''){

$intRows = 12;
$strSQLNum = "SELECT COUNT(*) as num from productinfo as a 
          left join productpic as b on a.id_prodinfo=b.id_prodinfo 
		  left join productdir as c on a.id_proddir=c.id_proddir
		  where a.dele='1' and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5) ";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select a.title,a.content,a.id_prodinfo,a.id_proddir,b.opicname,c.fatherid from productinfo as a 
          left join productpic as b on a.id_prodinfo=b.id_prodinfo 
		  left join productdir as c on a.id_proddir=c.id_proddir
		  where a.dele='1' and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5)  order by a.id_prodinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();

}elseif(isset($_GET[pdir1]) && !isset($_GET[pdir2])){

$intRows = 12;
$strSQLNum = "SELECT COUNT(*) as num from productinfo as a 
           left join productpic as b on a.id_prodinfo=b.id_prodinfo
		   left join productdir as c on a.id_proddir=c.id_proddir
		   where c.fatherid='".$_GET[pdir1]."' and a.dele=1 and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5) ";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select a.title,a.content,a.id_prodinfo,a.id_proddir,b.opicname,c.fatherid from productinfo as a 
           left join productpic as b on a.id_prodinfo=b.id_prodinfo
		   left join productdir as c on a.id_proddir=c.id_proddir
		   where c.fatherid='".$_GET[pdir1]."' and a.dele=1 and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5)  order by a.id_prodinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();

}elseif(isset($_GET[pdir1]) && isset($_GET[pdir2])){

$intRows = 12;
$strSQLNum = "SELECT COUNT(*) as num from productinfo as a 
           left join productpic as b on a.id_prodinfo=b.id_prodinfo
		   left join productdir as c on a.id_proddir=c.id_proddir
		   where c.id_proddir='".$_GET[pdir2]."' and a.dele=1 and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5) ";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select a.title,a.content,a.id_prodinfo,a.id_proddir,b.opicname,c.fatherid from productinfo as a 
           left join productpic as b on a.id_prodinfo=b.id_prodinfo
		   left join productdir as c on a.id_proddir=c.id_proddir
		   where c.id_proddir='".$_GET[pdir2]."' and a.dele=1 and (c.fatherid=1 or c.fatherid=2 or c.fatherid=3 or c.fatherid=4 or c.fatherid=5) order by a.id_prodinfo desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();

}

//产品一级目录
$strSQL = "select name,id_proddir from productdir where id_proddir='".$_GET[pdir1]."'  " ;
$objDB->Execute($strSQL);
$pdirnavi=$objDB->fields();

//产品二级目录
$strSQL = "select name from productdir where id_proddir='".$_GET[pdir2]."'  " ;
$objDB->Execute($strSQL);
$pdirnavi2=$objDB->fields();

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
<div id="productcontentleft">
<?php require "left.php"; ?>
</div><!--end aboutcontentleft!-->
<div id="aboutcontentright">
<div id="aboutcontentrightmainbox">
<div class="txt"  id="aboutcontentright_navi"><a href="/" class="link_aboutnavi">Home</a> > <a href="/product/products.php?pdir1=<?=$pdirnavi[id_proddir];?>&tag=<?=$_GET[tag];?>" class="link_aboutnavi"><?=$pdirnavi[name];?></a><?php if(isset($_GET[pdir2])){echo '&nbsp;&nbsp;>&nbsp;&nbsp;'.$pdirnavi2[name];}?></div>
<div class="txt" id="prodcontentright_content">

<?php for($i=0;$i<sizeof($arrprods);$i++){?>
  <div id="productlist">
  <a href="productsinfo.php?pid=<?=$arrprods[$i][id_prodinfo];?>&pdir1=<?=$arrprods[$i][fatherid];?>&pdir2=<?=$arrprods[$i][id_proddir];?>"><img src="/upload/product/<?=$arrprods[$i][opicname];?>" width="135" height="135" border="0" /></a>
  <h1><a href="productsinfo.php?pid=<?=$arrprods[$i][id_prodinfo];?>&pdir1=<?=$arrprods[$i][fatherid];?>&pdir2=<?=$arrprods[$i][id_proddir];?>"><?=$arrprods[$i][title];?></a></h1>
  </div><!--end productlist!-->
<?php }?>

</div><!--end aboutcontentright_content!-->
</div><!--end aboutcontentrightmainbox!-->
</div><!--end aboutcontentright!-->
</div><!--end aboutcontent!-->
</div><!--end contain!-->
<? require "../footer.php"; ?>
</body>
</html>
