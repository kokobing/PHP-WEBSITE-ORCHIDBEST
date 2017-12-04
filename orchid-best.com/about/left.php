<?php
//Global－Contact Us－Left
$strSQL = "select content from layout  where id_layout='10'" ;
$objDB->Execute($strSQL);
$contact_global=$objDB->fields();
?>

<div id="aboutcontentleft_title">
<div id="aboutcontentleftimg"><img src="../inc/pics/aboutcompanyen.gif" /></div>
<div id="aboutcontentleft_dir1">
<ul>
<li><a href="/about/about.php" class="link_aboutnavi">About Us</a></li>
<li><a href="/about/culture.php" class="link_aboutnavi">Our Culture</a></li>
<li><a href="/about/history.php" class="link_aboutnavi">Our History</a></li>
</ul>
</div>

<div id="aboutcontentleftcontact">
<img src="../inc/pics/contacten.gif" />
<div id="aboutcontentleftcontacttxt">
<?=$contact_global[content];?>
</div>
</div>

</div><!--end aboutcontentleft_title!-->


