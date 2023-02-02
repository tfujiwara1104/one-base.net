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
	<title>�K�v�������͉��</title>
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
			<h2 class="purchase_head_h2">Payment</h2>
			<p class="purchase_head_p">����</p>
			<div class="purchase_Lion_rogomark">
				<a href="{$CancelURL|htmlspecialchars}">
					<img src="https://one-base.net/img/common/Lion_rogomark_fff_B.png" alt="" />	
				</a>
			</div>
		</div>
</div><!-- header -->

<div class="main">
		<p class="previous_page"><a href="{$CancelURL|htmlspecialchars}"><i class="fas fa-angle-left"></i> ���i�y�[�W�֖߂�</a></p>

		<h1 class="Payment_completed_h1">�N���W�b�g�J�[�h����</h1>
		<div class="flow2">
			<ul>
				<li  class="current">
				<span>�K�v�������L�� &gt;</span>
				</li>
				<!-- {if $Confirm eq '1'}<li><span>�m�F���Ď葱�� &gt;</span></li>{/if} -->
				<li><span>���x���葱������</span></li>
			</ul>
		</div>

		<p class="txt">�K�v���������L����������</p>
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
				<!-- <div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">�N���W�b�g�J�[�h���ς̕K�v���������L�����������B</span>
						</h2>
					</div>
				</div> -->

				<div class="bl_body">

					<table class="generic02" summary="credit_1" id="credit">
						<tr>
							<th>���x�������@</th>
							<td>
								{insert name="select_payMethodList"}
							</td>
						</tr>
						<tr>
							<th class="note_th">������<br /><span class="note">���x�������@�������̏ꍇ�A�K���I�����Ă�������</span></th>
							<td>
								{insert name="select_payTimesList"}
							</td>
						</tr>
						<tr class="no_tr">
							<th></th>
							<td></td>
						</tr>
						{if $MemberCardArray ne null}
							<tr>
								<th class="td_bl2">
									�J�[�h�̎w����@��I�����Ă��������B
								</th>
								<td>
									{insert name="radio_paymentMode"}
								</td>
							</tr>
							<tr>
								<th class="inner_label" colspan="2">
									�J�[�h�ԍ�����͂��Č��ς���ꍇ�A�ȉ��̓��e����͂��Ă��������B
								</th>
							</tr>
						{/if}
						<tr>
							<th class="note_th">�J�[�h�ԍ�<br /><span class="note">�n�C�t���f-�f�����ŁA�����݂̂��L����������</span></th>
							<td><input name="CardNo" type="text" id="Name" value="{$CardNo|htmlspecialchars}" class="code" maxlength="16" size="20"/></td>
						</tr>
						<tr class="no_tr">
							<th></th>
							<td></td>
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
								�o�^�J�[�h�Ō��ς���ꍇ�A�ȉ��̓��e����͂��Ă��������B
							</th>
						</tr>
						<tr>
							<th class="td_bl2">�����p�ɂȂ�J�[�h��I�����Ă��������B</th>
							<td>{insert name="select_memberCardList"}</td>
						</tr>
					{/if}
					</table>

					<p class="control02">
						<span class="submit">
							{if $Confirm eq "1"}
							<input type="submit" value="�m�F����" />
							{else}
							<input type="submit" value="���ς���" />
							{/if}
						</span>
					</p>
				</div>
			</div><br class="clear" />

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">�����p���e</span>
						</h2>
					</div>
				</div>
				<div class="bl_body">
					<div>
						<table id="cartinfo" class="generic">
							<tr>
								<th>���i���</th>
								<td>{$Amount|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>����ŁE�z����</th>
								<td>{$Tax|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>���x�����v</th>
								<td>{$Total|number_format|htmlspecialchars}�~</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</form>
	</div>


{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
</body>
</html>