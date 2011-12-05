<!-- INCLUDE "../shared/layout/header.tpl" -->
		<script language="JavaScript" type="text/JavaScript">
		/*<![CDATA[*/
			$(document).ready(function(){
				$('span.i_app_installer').sw_iMSCPtooltips('span.title');

			});
			function action_delete() {
				if (!confirm("{TR_MESSAGE_DELETE}"))
				return false;
			}
			function action_activate() {
				if (!confirm("{TR_MESSAGE_ACTIVATE}"))
				return false;
			}
			function action_import() {
				if (!confirm("{TR_MESSAGE_IMPORT}"))
				return false;
			}
			function action_install(url) {
				if (!confirm("{TR_MESSAGE_INSTALL}"))
				return false;
				document.getElementById('sw_wget').value = url;
				document.getElementById('sw_upload_form').submit();
			}
		/*]]>*/
		</script>
		<div class="header">
			{MAIN_MENU}

			<div class="logo">
				<img src="{ISP_LOGO}" alt="i-MSCP logo" />
			</div>
		</div>

		<div class="location">
			<div class="location-area">
			<h1 class="manage_users">{TR_MENU_MANAGE_USERS}</h1>
		</div>
		<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
				<li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="settings.php">{TR_MENU_SETTINGS}</a></li>
				<li><a href="#" onclick="return false;">{TR_MENU_MANAGE_SOFTWARE}</a></li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>

		<div class="body">
			<h2 class="apps_installer"><span>{TR_UPLOAD_SOFTWARE}</span></h2>
			<!-- BDP: page_message -->
			<div class="{MESSAGE_CLS}">{MESSAGE}</div>
			<!-- EDP: page_message -->


			<table>
				<tr>
					<td>
						<form action="software_manage.php" name="sw_upload_form" id="sw_upload_form" method="post" enctype="multipart/form-data">
							<table>
								<tr>
									<td width="200">{TR_SOFTWARE_FILE}</td>
									<td><input type="file" name="sw_file" id="sw_file" size="60" /></td>
								</tr>
								<tr>
									<td width="200">{TR_SOFTWARE_URL}</td>
									<td><input type="text" name="sw_wget" id="sw_wget" value="{VAL_WGET}" size="60" /></td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="buttons">
											<input type="button" class="button" value="{TR_UPLOAD_SOFTWARE_BUTTON}" onClick="javascript:document.getElementById('sw_upload_form').submit();" />
											<input name="upload" type="hidden" value="upload" />
											<input type="hidden" name="send_software_upload_token" id="send_software_upload_token" value="{SOFTWARE_UPLOAD_TOKEN}" />
										</div>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
				</table>
				<table>
				<tr>
					<th>{TR_SOFTWARE_NAME}</th>
					<th width="60">{TR_SOFTWARE_VERSION}</th>
					<th width="60">{TR_SOFTWARE_LANGUAGE}</th>
					<th width="60">{TR_SOFTWARE_TYPE}</th>
					<th width="120">{TR_SOFTWARE_ADMIN}</th>
					<th align="center" width="65">{TR_SOFTWARE_DOWNLOAD}</th>
					<th align="center" width="65">{TR_SOFTWARE_DELETE}</th>
					<th align="center" width="90">{TR_SOFTWARE_RIGHTS}</th>
				</tr>
				<!-- BDP: no_softwaredepot_list -->
				<tr>
					<td colspan="8"><div class="info">{NO_SOFTWAREDEPOT}</div></td>
				</tr>
				<!-- EDP: no_softwaredepot_list -->
				<!-- BDP: list_softwaredepot -->
				<tr>
					<td><span class="icon i_app_installer" title="{TR_TOOLTIP}">{TR_NAME}</span></td>
					<td>{TR_VERSION}</td>
					<td>{TR_LANGUAGE}</td>
					<td>{TR_TYPE}</td>
					<td>{TR_ADMIN}</td>
					<td align="center"><a target="_blank" class="icon i_app_download" href="{DOWNLOAD_LINK}">{TR_DOWNLOAD}</a></td>
					<td align="center"><a href="{DELETE_LINK}" class="icon i_delete" onClick="return action_delete()">{TR_DELETE}</a></td>
					<td align="center"><a href="{SOFTWARE_RIGHTS_LINK}" class="icon i_{SOFTWARE_ICON}">{RIGHTS_LINK}</a></td>
				</tr>
				<!-- EDP: list_softwaredepot -->
				<tr>
					<th colspan="8">{TR_SOFTWAREDEPOT_COUNT}:&nbsp;{TR_SOFTWAREDEPOT_NUM}</th>
				</tr>
			</table>
			<!-- BDP: webdepot_list -->
			<br />
			<h2 class="apps_installer"><span>{TR_WEBDEPOT}</span></h2>
			<table>
				<tr>
					<th>{TR_PACKAGE_TITLE}</th>
					<th width="120">{TR_PACKAGE_INSTALL_TYPE}</th>
					<th width="120">{TR_PACKAGE_VERSION}</th>
					<th width="120">{TR_PACKAGE_LANGUAGE}</th>
					<th width="120">{TR_PACKAGE_TYPE}</th>
					<th width="120">{TR_PACKAGE_VENDOR_HP}</th>
					<th width="180">{TR_PACKAGE_ACTION}</th>
				</tr>
				<!-- BDP: no_webdepotsoftware_list -->
				<tr>
					<td colspan="7"><div class="info">{NO_WEBDEPOTSOFTWARE_AVAILABLE}</div></td>
				</tr>
				<!-- EDP: no_webdepotsoftware_list -->
				<!-- BDP: list_webdepotsoftware -->
				<tr>
					<td><span class="icon i_app_installer" title="{TR_PACKAGE_TOOLTIP}">{TR_PACKAGE_NAME}</span></td>
					<td align="center">{TR_PACKAGE_INSTALL_TYPE}</td>
					<td align="center">{TR_PACKAGE_VERSION}</td>
					<td align="center">{TR_PACKAGE_LANGUAGE}</td>
					<td align="center">{TR_PACKAGE_TYPE}</td>
					<td align="center">{TR_PACKAGE_VENDOR_HP}</td>
					<!-- BDP: package_install_link -->
					<td align="center"><a href="#" onClick="return action_install('{PACKAGE_HTTP_URL}')">{TR_PACKAGE_INSTALL}</a></td>
					<!-- EDP: package_install_link -->
					<!-- BDP: package_info_link -->
					<td align="left"><span class="icon i_help">Help</span>{TR_PACKAGE_INSTALL}</td>
					<!-- EDP: package_info_link -->
				</tr>
				<!-- EDP: list_webdepotsoftware -->
				<tr>
					<td colspan="7">
						<form action="software_manage.php" method="post" name="update_webdepot" id="update_webdepot">
							<div class="buttons">
								<input name="Submit" type="submit" class="button" value="{TR_APPLY_CHANGES}" />
								<input type="hidden" name="uaction" value="updatewebdepot" />
							</div>
						</form>
					</td>
				</tr>
				<tr>
					<th colspan="7">{TR_WEBDEPOTSOFTWARE_COUNT}:&nbsp;{TR_WEBDEPOTSOFTWARE_ACT_NUM}</th>
				</tr>
			</table>
			<!-- EDP: webdepot_list -->
			<br />
			<h2 class="apps_installer"><span>{TR_AWAITING_ACTIVATION}</span></h2>
			<table>
				<tr>
					<th>{TR_SOFTWARE_NAME}</th>
					<th width="60">{TR_SOFTWARE_VERSION}</th>
					<th width="60">{TR_SOFTWARE_LANGUAGE}</th>
					<th width="60">{TR_SOFTWARE_TYPE}</th>
					<th width="120">{TR_SOFTWARE_RESELLER}</th>
					<th align="center" width="65">{TR_SOFTWARE_IMPORT}</th>
					<th align="center" width="65">{TR_SOFTWARE_DOWNLOAD}</th>
					<th align="center" width="65">{TR_SOFTWARE_ACTIVATION}</th>
					<th align="center" width="65">{TR_SOFTWARE_DELETE}</th>
				</tr>
				<!-- BDP: no_software_list -->
				<tr>
					<td colspan="9"><div class="info">{NO_SOFTWARE}</div></td>
				</tr>
				<!-- EDP: no_software_list -->
				<!-- BDP: list_software -->
				<tr>
					<td><span class="icon i_app_installer" title="{TR_TOOLTIP}">{TR_NAME}</span></td>
					<td>{TR_VERSION}</td>
					<td>{TR_LANGUAGE}</td>
					<td>{TR_TYPE}</td>
					<td>{TR_RESELLER}</td>
					<td align="center"><a href="{IMPORT_LINK}" class="icon i_app_download" onClick="return action_import()">{TR_IMPORT}</a></td>
					<td align="center"><a href="{DOWNLOAD_LINK}" class="icon i_app_download" target="_blank">{TR_DOWNLOAD}</a></td>
					<td align="center"><a href="{ACTIVATE_LINK}" class="icon i_edit" onClick="return action_activate()">{TR_ACTIVATION}</a></td>
					<td align="center"><a href="{DELETE_LINK}" class="icon i_delete" onClick="return action_delete()">{TR_DELETE}</a></td>
				</tr>
				<!-- EDP: list_software -->
				<tr>
					<th colspan="9">{TR_SOFTWARE_ACT_COUNT}:&nbsp;{TR_SOFTWARE_ACT_NUM}</th>
				</tr>
			</table>
			<br />
			<h2 class="apps_installer"><span>{TR_ACTIVATED_SOFTWARE}</span></h2>
			<table>
				<tr>
					<th>{TR_RESELLER_NAME}</th>
					<th align="center" width="150">{TR_RESELLER_COUNT_SWDEPOT}</th>
					<th align="center" width="150">{TR_RESELLER_COUNT_WAITING}</th>
					<th align="center" width="150">{TR_RESELLER_COUNT_ACTIVATED}</th>
					<th align="center" width="150">{TR_RESELLER_SOFTWARE_IN_USE}</th>
				</tr>
				<!-- BDP: no_reseller_list -->
				<tr>
					<td colspan="5"><div class="info">{NO_RESELLER}</div></td>
				</tr>
				<!-- EDP: no_reseller_list -->
				<!-- BDP: list_reseller -->
				<tr>
					<td>{RESELLER_NAME}</td>
					<td align="center" width="100">{RESELLER_COUNT_SWDEPOT}</td>
					<td align="center" width="100">{RESELLER_COUNT_WAITING}</td>
					<td align="center" width="100">{RESELLER_COUNT_ACTIVATED}</td>
					<td align="center" width="100"><a href="software_reseller.php?id={RESELLER_ID}">{RESELLER_SOFTWARE_IN_USE}</a></td>
				</tr>
				<!-- EDP: list_reseller -->
				<tr>
					<th colspan="5">{TR_RESELLER_ACT_COUNT}:&nbsp;{TR_RESELLER_ACT_NUM}</th>
				</tr>
			</table>
			<div class="paginator">
			</div>
		</div>
<!-- INCLUDE "../shared/layout/footer.tpl" -->
