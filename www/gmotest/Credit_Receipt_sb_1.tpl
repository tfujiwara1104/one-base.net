<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta http-equiv="content-style-type" content="text/css" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<link rel="stylesheet" href="https://one-base.net/css/gmostyle.css" type="text/css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" type="text/css">
	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Josefin+Sans:wght@100;200;300;400&family=Lobster&display=swap" rel="stylesheet">
	<title>���x�����葱������</title>
	{literal}
	<script type="text/javascript">
		var submitted = false
		function blockForm(){
			if( submitted ){
				return false
			}
			submitted = true
			return true
		}
	</script>
	{/literal}
	
</head>
<body>
<div class="header">
		<div id="purchase_headimg">
			<h2 class="purchase_head_h2">Payment Completed</h2>
			<p class="purchase_head_p">���ϊ���</p>
			<div class="purchase_Lion_rogomark">
				<a href="{$CancelURL|htmlspecialchars}">
					<img src="https://one-base.net/img/common/Lion_rogomark_fff_B.png" alt="" />	
				</a>
			</div>
		</div>
</div><!-- header -->
	<div class="main">
	<!--�w�b�_�[�J�n-->

	<div class="flow03">
		<ul>
			<li class="current">
				<span>���x���葱������</span>
			</li>
		</ul>
	</div>

	<p class="txt_end">���ς��������܂����B���ւ��i�݂��������B</p>
	
		<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
		
			<p>{insert name="input_returnParams"}</p>
			
			
		
			<div class="block">
				<!-- <div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">�����p���e</span>
						</h2>
					</div>
				</div> -->
				
				<div class="bl_body">
		
					<!-- <table class="generic">
					{if $JobCd != "CHECK" }
					  <tr>
					    <th>���z</th>
					    <td >{$Amount|number_format|htmlspecialchars}�~</td>
					  </tr>
					  <tr>
					    <th>�ő���</th>
					    <td >{$Tax|number_format|htmlspecialchars}�~</td>
					  </tr>
					  {/if}
					  {* ���R���ڂ�\������ꍇ�A������̍s���폜���Ă��������B
					  <tr>
					    <th>:���R���ڂP����:</th>
					    <td >{$ClientField1|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>:���R���ڂQ����:</th>
					    <td >{$ClientField2|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>:���R���ڂR����:</th>
					    <td >{$ClientField3|htmlspecialchars}</td>
					  </tr>
					  ���R���ڂ�\������ꍇ�A������̍s���폜���Ă��������B*}
					  <tr>
					    <th>�x�����@</th>
					    <td >
					    	{$MethodName|htmlspecialchars}
							  {if $Method eq "2"}
						   	 /{$PayTimes|htmlspecialchars}��
						   	 {/if}
					   	 </td>
					  </tr>
					  <tr>
					    <th>�J�[�h�ԍ�</th>
					    <td >{$CardNo|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>�L������(MM/YY)</th>
					    <td >{$ExpireMonth|htmlspecialchars}/{$ExpireYear|htmlspecialchars}</td>
					  </tr>
					</table> -->
					
					<p class="control03">
						<span class="submit">
							<input type="submit" value="TOP�֖߂�" />
						</span>
					</p>
					<br class="clear" />	
				</div>
				
			</div>
		</form>
	</div>
		

{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
</body>
</html>