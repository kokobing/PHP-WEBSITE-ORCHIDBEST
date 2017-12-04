<?php
require "./inc/config.php";
require "./inc/function.class.php";

//首页－最新产品
$strSQL = "select title,intro,opicname,url from layoutpic  where id_layout='7' and dele='1' order by id_layoutpic desc" ;
$objDB->Execute($strSQL);
$zxcp_sy=$objDB->GetRows();

//首页－产品展示
$strSQL = "select title,intro,opicname,url from layoutpic  where id_layout='12' and dele='1' order by id_layoutpic desc" ;
$objDB->Execute($strSQL);
$cpzs_sy=$objDB->GetRows();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="inc/css/css1.css" rel="stylesheet" type="text/css">
<link href="inc/css/homeslidenotext.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="inc/js/stmenu.js"></script>
<script src="/inc/js/jquery.min.js"></script>
<script src="/inc/js/jquery.easing.1.3.js"></script>
<script src="/inc/js/slides.min.jquery.js"></script>
<script src="inc/js/jcarousellite_1.0.1.pack.js" type="text/javascript"></script>
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

<script type="text/javascript">
   $(document).ready(function(){
    $(".jCarouselLite").jCarouselLite({
        btnNext: ".next",
        btnPrev: ".prev",
   auto: 3000,
   scroll: 1,
   speed: 1000,
   visible: 5
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

<? require "header.php"; ?>

<div id="contain">
<div id="mainadv">

	<div id="container">
        <? require "mainadv.php"; ?>
	</div>

</div><!--end mainadv!-->

<div id="homebg">
</div><!--end homebg!-->

<div id="homecontent">
<div id="homecontentleft">

<? require "left.php"; ?>

</div><!--end homecontentleft!-->
<div id="homecontentright">
<div id="homecontentright_l">
<div id="homecontentright_l1"><img src="inc/pics/newproduct.gif" /></div>
<div id="homecontentright_l2box">
<div id="homecontentright_l2box_1"><a href="<?=$zxcp_sy[0][url];?>"><img src="upload/layout/<?=$zxcp_sy[0][opicname];?>" border="0" /></a></div>
<div id="homecontentright_l2box_2"><span class="txt"><strong><a href="<?=$zxcp_sy[0][url];?>"  class="link_navi"><?=$zxcp_sy[0][title];?></a></strong></span><br />
<a href="<?=$zxcp_sy[0][url];?>" class="link_navi"><?php echo cutstr($zxcp_sy[0][intro],150,1);?></a></div>
</div><!--end homecontentright_l2box!-->

<div id="homecontentright_l2box">
<div id="homecontentright_l2box_1"><a href="<?=$zxcp_sy[1][url];?>"><img src="upload/layout/<?=$zxcp_sy[1][opicname];?>" border="0" /></a></div>
<div id="homecontentright_l2box_2"><span class="txt"><strong><a href="<?=$zxcp_sy[1][url];?>"  class="link_navi"><?=$zxcp_sy[1][title];?></a></strong></span><br />
<a href="<?=$zxcp_sy[1][url];?>" class="link_navi"><?php echo cutstr($zxcp_sy[1][intro],140,1);?></a></div>
</div><!--end homecontentright_l2box!-->

</div><!--end homecontentright_l!-->

<div id="homecontentright_r">
<div id="homecontentright_l">
<div id="homecontentright_l1"><img src="inc/pics/recmdproduct.gif" /></div>
<div id="homecontentright_l2box">
<div id="homecontentright_l2box_1"><a href="<?=$zxcp_sy[2][url];?>"><img src="upload/layout/<?=$zxcp_sy[2][opicname];?>" border="0" /></a></div>
<div id="homecontentright_l2box_2"><span class="txt"><strong><a href="<?=$zxcp_sy[2][url];?>"  class="link_navi"><?=$zxcp_sy[2][title];?></a></strong></span><br />
<a href="<?=$zxcp_sy[2][url];?>" class="link_navi"><?php echo cutstr($zxcp_sy[2][intro],150,1);?></a></div>
</div><!--end homecontentright_l2box!-->

<div id="homecontentright_l2box">
<div id="homecontentright_l2box_1"><a href="<?=$zxcp_sy[3][url];?>"><img src="upload/layout/<?=$zxcp_sy[3][opicname];?>" border="0" /></a></div>
<div id="homecontentright_l2box_2"><span class="txt"><strong><a href="<?=$zxcp_sy[3][url];?>"  class="link_navi"><?=$zxcp_sy[3][title];?></a></strong></span><br />
<a href="<?=$zxcp_sy[3][url];?>" class="link_navi"><?php echo cutstr($zxcp_sy[3][intro],140,1);?></a></div>
</div><!--end homecontentright_l2box!-->

</div>
</div>
<!--end homecontentright_r!-->

<div id="homecontentright_3">
<div id="homeproductshow"><div id="homemore"><img src="inc/pics/more.gif" /></div></div>
<div id="homeproductshow1">
<div  class="prev"><img src="/inc/pics/arrow_l.gif"  /></div>
<div class="jCarouselLite">
     <ul>
     <?php for($i=0;$i<sizeof($cpzs_sy);$i++){?>
      <li><a href="<?=$cpzs_sy[$i][url];?>"><img src="upload/layout/<?=$cpzs_sy[$i][opicname];?>" alt="" width="122" height="122" border="0"></a></li>
      <?php }?>
      </ul>
    </div>
<div  class="next"><img src="/inc/pics/arrow_r.gif"/></div>
</div>
</div><!--end homecontentright_3!-->

</div><!--end homecontentright!-->
</div><!--end homenewstxt!-->




</div><!--end contain!-->


<? require "footer.php"; ?>




</body>
</html>
