<?php 
//首页－BANNER图
$strSQL = "select title,intro,opicname,url from layoutpic  where id_layout='8' and dele='1' order by id_layoutpic desc" ;
$objDB->Execute($strSQL);
$banner_sy=$objDB->GetRows();

?>
			<div id="slides">
				<div class="slides_container">
                <?php for($i=0;$i<sizeof($banner_sy);$i++){?>
					<a href="javascript:void(0)"><img src="/upload/layout/<?php echo $banner_sy[$i][opicname];?>" width="950" alt="Slide <?=$i?>"></a>
                <?php }?>
                </div>
			</div>