<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=shift_jis" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- <link rel="stylesheet" href="{$CSSPATH}/common.css" /> -->
	<link rel="stylesheet" href="https://one-base.net/css/gmo.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>�N���W�b�g���ϓ���</title>
	
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
				<a href="{$SelectURL|htmlspecialchars}">
					<span>���x�����@�̑I�� &gt;</span>
				</a>
			</li>
		
			<li  class="current">
				<span>�K�v�������L�� &gt;</span>
			</li>
			{if $Confirm eq '1'}
			<li>
				<span>�m�F���Ď葱�� &gt;</span>
			</li>
			{/if}
			<li>
				<span>���x���葱������</span>
			</li>
		</ul>
	</div>
	</div>
	<p class="active"><a href="{$CancelURL|htmlspecialchars}">&lt; �}�[�P�b�g�ɖ߂�</a></p>

	<div class="main">

		{if  $CheckMessageArray neq null }
		<div id="GP_msg">
			<ul>
			{foreach item=message from=$CheckMessageArray}
				<li>{$message}</li>
			{/foreach}
			</ul>
		</div>
		{/if}

		<form action="{$ExecURL|htmlspecialchars}" onsubmit="return blockForm()" method="post">

			<p>{insert name="input_keyItems"}</p>

			<div class="block">

						<h2>
							<span class="p">�N���W�b�g�J�[�h���ς̕K�v���������L����������</span>
						</h2>

				<div class="bl_body">

					<table class="generic" summary="credit_1" id="credit">
						<tr>
							<th>���x�������@</th>
							<td>
								{insert name="select_payMethodList"}
							</td>
						</tr>
						<tr>
							<th>������<br /><span class="note"><i class="fas fa-caret-right"></i>���x�����@�������̏ꍇ�A�K���I����������</span></th>
							<td>
								{insert name="select_payTimesList"}
							</td>
						</tr>
						{if $MemberCardArray ne null}
							<tr>
								<th class="td_bl2">
									�J�[�h�̎w����@��I�����Ă�������
								</th>
								<td>
									{insert name="radio_paymentMode"}
								</td>
							</tr>
							<tr>
								<th class="inner_label" colspan="2">
									�J�[�h�ԍ�����͂��Č��ς���ꍇ�A�ȉ��̓��e����͂��Ă�������
								</th>
							</tr>
						{/if}
						<tr>
							<th>�J�[�h�ԍ�<br /><span class="note"><i class="fas fa-caret-right"></i>�n�C�t���f-�f�����ŁA�����݂̂��L����������</span></th>
							<td><input name="CardNo" type="text" id="Name" value="{$CardNo|htmlspecialchars}" class="code" maxlength="16" size="20"/></td>
						</tr>
						<tr>
							<th>�J�[�h�L������</th>
						<td>
							{insert name="select_expireList"}
						</td>
					</tr>
					<tr>
						<th>�Z�L�����e�B�R�[�h</th>
						<td><input name="SecurityCode" type="text" id="SecurityCode" value="{$SecurityCode|htmlspecialchars}" class="code" maxlength="4" size="6" /></td>
					</tr>
					{if $MemberCardArray ne null}
						<tr>
							<th class="inner_label" colspan="2">
								�o�^�J�[�h�Ō��ς���ꍇ�A�ȉ��̓��e����͂��Ă�������
							</th>
						</tr>
						<tr>
							<th class="td_bl2">�����p�ɂȂ�J�[�h��I�����Ă�������</th>
							<td>{insert name="select_memberCardList"}</td>
						</tr>
					{/if}
					</table>
					<p class="control">
						<span class="submit">
							{if $Confirm eq "1"}
							<input type="submit" value="�m�F����" />
							{else}
							<input type="submit" value="���ς���" />
							{/if}
						</span>
					</p>
				</div>
			</div>

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2 class="h2_pay">
							�����p���e
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<div>
						<table id="cartinfo" class="generic">
							<tr>
								<th>���i���</th>
								<td>{$Amount|number_format|htmlspecialchars} �~</td>
							</tr>
							<tr>
								<th>����ŁE(�z����)</th>
								<td>{$Tax|number_format|htmlspecialchars} �~</td>
							</tr>
							<tr>
								<th>���x�����v</th>
								<td>{$Total|number_format|htmlspecialchars} �~</td>
							</tr>
						</table>
					</div>

				</div>

			</div>

			<br class="clear" />

		</form>
	</div><br>
<footer>
	<p class="footer">�^�c��� ONE COLLEGE LLC</p>
</footer>
</div>
</div>
{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
</body>
</html>