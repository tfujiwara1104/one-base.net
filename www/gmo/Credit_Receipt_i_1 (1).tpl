<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=shift_jis" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- <link rel="stylesheet" href="{$CSSPATH}/common.css" /> -->
	<link rel="stylesheet" href="https://onecollege.net/css/gmo.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>���x���葱������</title>
	
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

<div class="wrapper">
<div class="bodyinner">

	<!--�w�b�_�[�J�n-->
	<div class="header">
		<p class="header_p">ONE BASE - Market Place -</p>
		<h1>���x���葱��</h1>
	

	<div class="flow clearfix">
		<ul>
			<li>
				<span>���x�����@�̑I�� &gt;</span>
			</li>
			<li>
				<span>�K�v�������L�� &gt;</span>
			</li>
			{if $Confirm eq "1"}
			<li>
				<span>�m�F���Ď葱�� &gt;</span>
			</li>
			{/if}
			<li class="current">
				<span>���x���葱������</span>
			</li>
		</ul>
	</div>
	</div>
	<p class="active"><a href="{$CancelURL|htmlspecialchars}">&lt; �}�[�P�b�g�ɖ߂�</a></p>

	<div class="main">
	
		<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
		
			<p>{insert name="input_returnParams"}</p>
			
			<p class="txt">���ς��������܂���<br>�w�������́A���j���[ <i class="fas fa-caret-right"></i>�w���������i ���炲�m�F���������܂�</p>
		
			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">�����p���e</span>
						</h2>
					</div>
				</div>
				
				<div class="bl_body">
		
					<table class="generic">
					{if $JobCd != "CHECK" }
					  <tr>
					    <th>���i���</th>
					    <td >{$Amount|number_format|htmlspecialchars}�~</td>
					  </tr>
					  <tr>
					    <th>����ŁE(�z����)</th>
					    <td >{$Tax|number_format|htmlspecialchars}�~</td>
					  </tr>
					  {/if}
					  <!-- <tr>
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
					  </tr> -->
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
					</table>
					
					<p class="control_pay">
						<span class="submit">
							<input type="submit" value="����" />
						</span>
					</p>
					<br class="clear" />	
				</div>
				
			</div>
		</form>
	</div><br>
<footer><p class="footer">�^�c��� ONE COLLEGE LLC</p></footer>
		
</div>
</div>
{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
</body>
</html>