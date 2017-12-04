<?php
//页脚
$strSQL = "select content from layout  where id_layout='5'" ;
$objDB->Execute($strSQL);
$footer_BQ=$objDB->fields();
?>
<a href="http://www.ty-sh.com"  style="margin-left:-7458px; color:#FFFFFF; font-size:1px; line-height:1px;">腾岩科技</a>
<div id="footer">
<div id="footer_txt">
<?=$footer_BQ[content];?>
</div>
</div><!--end footer!-->