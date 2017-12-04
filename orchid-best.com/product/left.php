<?php 

//产品一级目录
$strSQL = "select name,id_proddir from productdir where level='1' and dele='1' order by id_proddir asc " ;
$objDB->Execute($strSQL);
$pdtsdir1=$objDB->GetRows();
?>

<div id="productcontentleft_1">
</div><!--end homecontentleft_1!-->
<div id="productcontentleft_2">

<?php for($i=0;$i<sizeof($pdtsdir1);$i++){

//产品二级目录
$strSQL = "select name,id_proddir from productdir where fatherid='".$pdtsdir1[$i][id_proddir]."' and level='2' and dele='1' order by id_proddir asc " ;
$objDB->Execute($strSQL);
$pdtsdir2=$objDB->GetRows();

?>
<div id="productcontentleft_pdir1">
<a href="products.php?pdir1=<?=$pdtsdir1[$i][id_proddir];?>" class="<?php if($pdtsdir1[$i][id_proddir]==$_GET[pdir1] && $_GET[pdir2]==""){echo "link_navi_1red";}else{echo "link_navi_1";}?>"><?php echo $pdtsdir1[$i][name];?></a>
</div><!--end homecontentleft_pdir1!-->

<div id="productleft_dir1">
<ul>
   <?php for($j=0;$j<sizeof($pdtsdir2);$j++){?>
     <li><a href="products.php?pdir1=<?=$pdtsdir1[$i][id_proddir];?>&pdir2=<?=$pdtsdir2[$j][id_proddir];?>" class="<?php if($pdtsdir2[$j][id_proddir]==$_GET[pdir2]){echo "link_navi_red";}else{echo "link_navi";}?>"><?php echo $pdtsdir2[$j][name];?></a></li>
     <?php }?>
</ul>
</div><!--end homeleft_dir1!-->
<?php }?>

</div><!--end homecontentleft_2!-->
<div id="productcontactpic">
<img src="/inc/pics/contact.jpg" />
</div><!--end homecontactpic!-->

