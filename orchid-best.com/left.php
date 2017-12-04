<?php 

//产品一级目录
$strSQL = "select name,id_proddir from productdir where level='1' and dele='1' order by id_proddir asc " ;
$objDB->Execute($strSQL);
$pdtsdir1=$objDB->GetRows();
?>

<div id="homecontentleft_1">
</div><!--end homecontentleft_1!-->
<div id="homecontentleft_2">

<?php for($i=0;$i<sizeof($pdtsdir1);$i++){

//产品二级目录
$strSQL = "select name,id_proddir from productdir where fatherid='".$pdtsdir1[$i][id_proddir]."' and level='2' and dele='1' order by id_proddir asc " ;
$objDB->Execute($strSQL);
$pdtsdir2=$objDB->GetRows();

?>
<div class="txt" id="homecontentleft_pdir1">
<a href="/product/products.php?pdir1=<?=$pdtsdir1[$i][id_proddir];?>" class="link_navi_1"><?php echo $pdtsdir1[$i][name];?></a>
</div><!--end homecontentleft_pdir1!-->

<div id="homeleft_dir1">
<ul>
   <?php for($j=0;$j<sizeof($pdtsdir2);$j++){?>
     <li><a href="/product/products.php?pdir1=<?=$pdtsdir1[$i][id_proddir];?>&pdir2=<?=$pdtsdir2[$j][id_proddir];?>" class="link_navi"><?php echo $pdtsdir2[$j][name];?></a></li>
   <?php }?>
</ul>
</div><!--end homeleft_dir1!-->
<?php }?>

</div><!--end homecontentleft_2!-->
<div id="homecontactpic">
<img src="inc/pics/contact.jpg" />
</div><!--end homecontactpic!-->

<script countryuage="javascript">
	function ChangeTab(tag){
		var tag = tag; 
		var c_form = "productleft_dir"+tag;
		for(i=1;i<5;i++){
			var tagForm = "productleft_dir"+i;   
			if(i==tag){
				document.getElementById(tagForm).style.display="block";
			}else{
				document.getElementById(tagForm).style.display="none";
			}
		}
 }
		<?php if(isset($_GET[tag])){echo 'var tag = '.$_GET[tag].';';}else{echo 'var tag = 1;';}?>
		ChangeTab(tag);
</script>  
