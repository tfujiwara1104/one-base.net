<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja-JP" xml:lang="ja-JP">
<head>
	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta http-equiv="content-style-type" content="text/css" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<link rel="stylesheet" href="https://one-base.net/css/gmostyle.css" type="text/css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" type="text/css">
	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Josefin+Sans:wght@100;200;300;400&family=Lobster&display=swap" rel="stylesheet">
	<title>�x�����@�I���y�[�W</title>
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

		<h1 class="Payment_completed_h1">���ς��J�n���܂�</h1>
		<div class="flow">
			<ul>
				<li class="current"><span>���x�����@�̑I�� &gt;</span></li>
				<li><span>�K�v�������L�� &gt;</span></li>
				<!-- {if $Confirm eq '1'}<li><span>�m�F���Ď葱�� &gt;</span></li>{/if} -->
				<li><span>���x���葱������</span></li>
			</ul>
		</div>
	
		<p class="txt">���x�������@</p>
		{if  $CheckMessageArray neq null }
		<div id="GP_msg">
			<ul>
			{foreach item=message from=$CheckMessageArray}
				<li>{$message}</li>
			{/foreach}
			</ul>
		</div>
		{/if}

		<form action="{$SelectURL|htmlspecialchars}" onsubmit="return blockForm()" method="post">
			<p>
			{insert name="input_keyItems"}
			</p>
			

			<div class="block">
				<!-- <div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">���x�����@�����I�т��������B</span>
						</h2>
					</div>
				</div> -->

				<div class="bl_body">

					<div class="paytypelist">

						{insert name="radio_paymentType"}

{* ++�x�����@�̑I�������J�X�^�}�C�Y�������ꍇ�́A��L��"radio_paymentType"�s���R�����g�A�E�g���A�ȉ��������p��������
						<ul>
							<li>
								<input type="radio" name="PayType" value="credit" id="paytype_credit"/><label for="paytype_credit">�N���W�b�g�J�[�h</label>
								<p class="visa_master"><i class="fab fa-cc-visa"></i><i class="fab fa-cc-mastercard"></i><i class="fab fa-cc-jcb"></i><i class="fab fa-cc-amex"></i><i class="fab fa-cc-diners-club"></i><i class="fab fa-cc-discover"></i></p>
							</li>
							<li>
								<input type="radio" name="PayType" value="virtualaccount" id="paytype_virtualaccount"/><label for="paytype_virtualaccount">��s�U��(�o�[�`��������)</label>
							</li>
							<!-- <li>
								<input type="radio" name="PayType" value="cvs" id="paytype_cvs"/><label for="paytype_cvs">�R���r�j�G���X�X�g�A</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="edy" id="paytype_edy"/><label for="paytype_edy">�y�VEdy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="suica" id="paytype_suica"/><label for="paytype_suica">���o�C��Suica</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="payeasy" id="paytype_payeasy"/><label for="paytype_payeasy">Pay-easy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="paypal" id="paytype_paypal"/><label for="paytype_paypal">PayPal</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="netid" id="paytype_netid"/><label for="paytype_netid">�l�b�giD</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="webmoney" id="paytype_webmoney"/><label for="paytype_webmoney">WebMoney</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="au" id="paytype_au"/><label for="paytype_au">au</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="docomo" id="paytype_docomo"/><label for="paytype_docomo">docomo</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="sb" id="paytype_sb"/><label for="paytype_sb">�\�t�g�o���N�܂Ƃ߂Ďx����(�a)</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jibun" id="paytype_jibun"/><label for="paytype_jibun">���Ԃ��s</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jcbPreca" id="paytype_jcbpreca"/><label for="paytype_jcbpreca">JCB PREMO</label>
							</li>
							<li>
								<fieldset>
									<legend><input type="radio" name="PayType" value="netcash" id="paytype_netcash"/><label for="paytype_netcash">NET CASH</label></legend>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NETCASH" id="netcash_paytype_netcash" /><label for="netcash_paytype_netcash">NET CASH</label></div>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NNCGIFT" id="netcash_paytype_nncgift" /><label for="netcash_paytype_nncgift">nanaco�M�t�g</label></div>
								</fieldset>
							</li>
							<li>
								<input type="radio" name="PayType" value="rakutenid" id="paytype_rakutenid"/><label for="paytype_rakutenid">�y�V�y�C</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="linepay" id="paytype_linepay"/><label for="paytype_linepay">LINE Pay����</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="unionpay" id="paytype_unionpay"/><label for="paytype_unionpay">�l�b�g�������</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="recruit" id="paytype_recruit"/><label for="paytype_recruit">���N���[�g���񂽂�x��������</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="paysle" id="paytype_paysle"/><label for="paytype_paysle">PAYSLE����</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="ganb" id="paytype_ganb"/><label for="paytype_ganb">��s�U��(�o�[�`�������� ��������)</label>
							</li> -->

						</ul>
-- *}
						<p class="control">
							<span class="submit"><input type="submit" value="�i��" /></span>
						</p>
					</div>
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

</div><!-- main -->

{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
</body>
</html>