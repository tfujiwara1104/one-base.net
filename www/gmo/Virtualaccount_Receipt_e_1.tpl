<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja-JP" xml:lang="ja-JP">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=shift_jis" />
	<meta http-equiv="Content-style-Type" content="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- <link rel="stylesheet" href="{$CSSPATH}/common.css" /> -->
	<link rel="stylesheet" href="https://one-base.net/css/gmo.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome-animation/0.0.10/font-awesome-animation.css" type="text/css" media="all" />
	<title>��s�U��(�o�[�`��������)</title>

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
		<h1>��s�U���@�U������</h1>
	</div>

	<div class="flow">
	</div>

	<div class="main">

		<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
			<p>{insert name="input_returnParams"}</p>

			<p class="txt">��s�U��(�o�[�`��������)�̂��x�����\�����݂���t���܂���</p>
			<p class="txt">�U�������܂łɈȉ��̌����ɐU���݂��s���Ă�������<br>�U���������ɂ��U���݂��Ȃ��ꍇ�̓L�����Z�������ƂȂ�܂�</p>
			

			<div class="block">

						<h2>
							<span class="p">�����p���e</span>
						</h2>

				<div class="bl_body">
					<div>
						<p class="txt_v"><i class="fas fa-exclamation-triangle faa-flash animated"></i>�U���݂̍ۂ́A�U���˗��l����<span style="color: red;font-weight: bold;">�U���R�[�h�{���q�l����</span>����͂��Ă��������B</p>
						<table id="cartinfo" class="generic">
							<tr>
								<th>���z</th>
								<td>{$Amount|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>����ŁE(�z����)</th>
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
							</tr>
 -->						</table>

						<p class="txt"><i class="fas fa-exclamation-triangle faa-flash animated"></i>�U���݂̍ۂ́A�U���˗��l����<span style="color: red;font-weight: bold;">�U���R�[�h�{���q�l����</span>����͂��Ă�������</p>					

						<p class="control_v">
							���� or ��ʕۑ������Ă���u����v�{�^���������Ă�������
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
<footer><p class="footer">�^�c��� ONE COLLEGE LLC</p></footer>
</div>
</div>
</body>
</html>