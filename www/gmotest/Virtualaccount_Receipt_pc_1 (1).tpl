<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja-JP" xml:lang="ja-JP">
<head>
	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta http-equiv="content-style-type" content="text/css" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<link rel="stylesheet" href="https://onecollege.net/css/gmostyle.css" type="text/css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" type="text/css">
	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Josefin+Sans:wght@100;200;300;400&family=Lobster&display=swap" rel="stylesheet">
	<title>�����U�ւ̂��\����</title>

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

<div class="header">
		<div id="purchase_headimg">
			<h2 class="purchase_head_h2">Payment Completed</h2>
			<p class="purchase_head_p">���ϊ���</p>
			<div class="purchase_Lion_rogomark">
				<a href="{$CancelURL|htmlspecialchars}">
					<img src="https://onecollege.net/img/common/Lion_rogomark_fff_B.png" alt="" />	
				</a>
			</div>
		</div>
</div><!-- header -->

	<div class="main">

		<p class="previous_page"><a href="{$CancelURL|htmlspecialchars}"><i class="fas fa-angle-left"></i> ���i�y�[�W�֖߂�</a></p>

		<h1 class="Payment_completed_h1">��s�U���̎��{</h1>
		<div class="flow">
			<ul>
				<li><span>���x�����@�̑I�� &gt;</span></li>
				<li class="current"><span>��s�U�����@�̕\��</span></li>
				<!-- {if $Confirm eq '1'}<li><span>�m�F���Ď葱�� &gt;</span></li>{/if} -->
				<!-- <li><span>���x���葱������</span></li> -->
			</ul>
		</div>

		<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
			<p>{insert name="input_returnParams"}</p>

			<p class="txt">��s�U���͌��ϑ�s��Ўw��̃o�[�`���������ւ����������������ƂŌ��ς��������܂��B</p>
			<p class="txt">�U�������Ɍ��炸�A���݂₩�ɐU���݂��s���Ă��������B</p>
			<p class="txt">�U���݂̍ۂ́A<span class="txt_span">�U���˗��l���Ɂu �U���R�[�h �{ ���q�l�̎��� �v�����</span>���Ă��������B</p>

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="title_p">�����p���e</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">
					<div>
						<table id="cartinfo" class="generic">
							<tr>
								<th>���z</th>
								<td>{$Amount|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>�ő���</th>
								<td>{$Tax|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>���x�����v</th>
								<td>{$Total|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>�U�����s��</th>
								<td >{$VaBankName|htmlspecialchars}({$VaBankCode|htmlspecialchars})</td>
							</tr>
							<tr>
								<th>�U����x�X��</th>
								<td >{$VaBranchName|htmlspecialchars}({$VaBranchCode|htmlspecialchars})</td>
							</tr>
							<tr>
								<th>�U����Ȗ�</th>
								<td >{$VaAccountType|htmlspecialchars}</td>
							</tr>
							<tr>
								<th>�U��������ԍ�</th>
								<td >{$VaAccountNumber|htmlspecialchars}</td>
							</tr>
							<tr>
								<th>�U������</th>
								<td >{$VaAvailableDateDisp|date_format:"%Y/%m/%d"|htmlspecialchars}</td>
							</tr>
							<tr>
								<th>�U���R�[�h</th>
								<td >{$VaTradeCode|htmlspecialchars}</td>
							</tr>
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
						</table>
						<p class="control_virtual">
							<span class="submit">
								<input type="submit" value="����" />
							</span>
						</p>
						<br class="clear" />
					</div>
				</div>
			</div>
		</form>
	</div>

</div>
</div>
</body>
</html>