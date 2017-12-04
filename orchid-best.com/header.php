<div id="header_box">
<div id="header_1">
<div id="headerlogo"><img src="/inc/pics/logo.png" width="279" height="44" /></div>
<!--end headerlogo!-->
<div id="headerlogoright">
<div class="txt" id="headerlogoright1"></div>
<div id="headerlogoright2"><img src="/inc/pics/psearch.png" /></div>
</div><!--end headerlogoright!-->
</div><!--end header_1!-->
</div><!--end header_box!-->

<div id="header_menu_box">

<script type="text/javascript">
<!--
stm_bm(["menu0b0f",900,"","/inc/pics/blank.gif",0,"","",0,0,250,0,1000,1,0,0,"","488",0,0,1,2,"hand","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,0,0,0,100,"",-2,"",-2,50,0,0,"#999999","#FFFFFF","",0,0,0,"#CCCCCC"]);
stm_ai("p0i0",[2,"","","",0,0,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#A6CE3A",1,"#B70C0C",1,"/inc/pics/menubg.gif","/inc/pics/menubg.gif",3,3,0,0,"#CCCCCC","#CCCCCC","#FFFFFF","#444744","bold 10pt 'Arial','Verdana'","bold 10pt Arial",0,0,"","","","",0,0,0],100,36);
stm_aix("p0i1","p0i0",[0,"HOME","","",-1,-1,0,"/index.php","_self","","","","",0,0,0,"","",0,0,0,1,1,"#A6CE3A",1,"#B70C0C",1,"/inc/pics/menu1.gif","/inc/pics/menu1_2.gif"],134,36);
stm_aix("p0i2","p0i1",[0,"About Us","","",-1,-1,0,"/about/about.php"],134,36);
stm_bpx("p1","p0",[1,4,1,0,0,0,0,0,100,"",-2,"",-2,50,2,3]);
stm_aix("p1i0","p0i0",[2,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFFF",0,"#FFFFFF",0,"","",3,3,0,0,"#CCCCCC","#CCCCCC","#000000","#000000","bold 9pt 'Arial','Verdana'","bold 9pt Arial"],300,10);
stm_aix("p1i1","p1i0",[0,"             About Us","","",-1,-1,0,"/about/about.php","_self","","","","",0,0,0,"","",0,0,0,0,1,"#FFFFFF",0,"#FFFFFF",0,"","",3,3,0,0,"#CCCCCC","#CCCCCC","#444744","#E85100"],300,40);
stm_aix("p1i2","p1i0",[2,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6E6E6",0,"#E6E6E6"],300,1);
stm_aix("p1i3","p1i1",[0,"             Our Culture","","",-1,-1,0,"/about/culture.php"],300,40);
stm_aix("p1i4","p1i2",[],300,1);
stm_aix("p1i5","p1i1",[0,"             Our History","","",-1,-1,0,"/about/history.php"],300,40);
stm_ep();
stm_aix("p0i3","p0i1",[0,"Products","","",-1,-1,0,"/product/products.php"],134,36);
stm_bpx("p2","p1",[]);

<?php
//产品一级目录
$strSQL = "select name,id_proddir from productdir where level='1' and dele='1' order by id_proddir asc " ;
$objDB->Execute($strSQL);
$pdtsdir1=$objDB->GetRows();

for($i=0;$i<sizeof($pdtsdir1);$i++){
?>
<?php if($i==0){?>stm_aix("p2i<?=$i;?>","p1i0",[],300,10);<?php }?>
<?php if($i!=0){?>stm_aix("p2i<?=$i;?>","p1i2",[],300,1);<?php }?>
stm_aix("p2i<?=$i;?>","p1i1",[0,"            <?=$pdtsdir1[$i][name];?>","","",-1,-1,0,"/product/products.php?pdir1=<?=$pdtsdir1[$i][id_proddir];?>"],300,40);
<?php }?>


stm_ep();
stm_aix("p0i4","p0i1",[0,"News","","",-1,-1,0,"/news/news.php"],134,36);
stm_bpx("p3","p1",[0,4]);
stm_aix("p3i0","p1i1",[0,"            Company News","","",-1,-1,0,"/news/news.php?ndir=19"],223,40);
stm_aix("p3i1","p1i1",[0,"            Industry News","","",-1,-1,0,"/news/news.php?ndir=21"],223,40);
stm_aix("p3i2","p1i1",[0,"            Product News","","",-1,-1,0,"/news/news.php?ndir=20"],223,40);
stm_aix("p3i3","p1i1",[0,"            Announcements","","",-1,-1,0,"/news/news.php?ndir=22"],223,40);
stm_mc("p3",[2,"#E6E6E6",0,1,"",3]);
stm_ep();
stm_aix("p0i5","p0i1",[0,"Contact Us","","",-1,-1,0,"/about/contact.php"],134,36);
stm_ep();
stm_cf([0,0,0,"Main_frame","Navigation_frame",1]);
stm_em();
//-->
</script>

</div><!--end header_menu_box!-->