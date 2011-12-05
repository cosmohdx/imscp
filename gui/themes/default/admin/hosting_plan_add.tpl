<!-- INCLUDE "../shared/layout/header.tpl" -->
		<div class="header">
            {MAIN_MENU}

            <div class="logo">
                <img src="{ISP_LOGO}" alt="i-MSCP logo" />
            </div>
        </div>

		<div class="location">
			<div class="location-area">
				<h1 class="hosting_plans">{TR_MENU_HOSTING_PLANS}</h1>
			</div>
			<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
                <li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="hosting_plan.php">{TR_MENU_HOSTING_PLANS}</a></li>
				<li><a href="hosting_plan_add.php">{TR_ADD_HOSTING_PLAN}</a></li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>


		<div class="body">
			<h2 class="hosting_plans"><span>{TR_ADD_HOSTING_PLAN}</span></h2>

			<!-- BDP: page_message -->
			<div class="{MESSAGE_CLS}">{MESSAGE}</div>
			<!-- EDP: page_message -->

			<form name="reseller_add_host_plant_frm" method="post" action="hosting_plan_add.php">
					<fieldset>
						<legend>{TR_HOSTING PLAN PROPS}</legend>
						<table>
							<tr>
								<td><label for="hp_name">{TR_TEMPLATE_NAME}</label></td>
								<td><input id="" type="text" name="hp_name" value="{HP_NAME_VALUE}"/></td>
							</tr>
							<tr>
								<td><label for="hp_description">{TR_TEMPLATE_DESCRIPTON}</label></td>
								<td><textarea id="hp_description" name="hp_description" cols="40" rows="8">{HP_DESCRIPTION_VALUE}</textarea></td>
							</tr>
							<tr>
								<td><label for="hp_sub">{TR_MAX_SUBDOMAINS}</label></td>
								<td><input id="hp_sub"  type="text" name="hp_sub" value="{TR_MAX_SUB_LIMITS}"/></td>
							</tr>
							<tr>
								<td><label for="hp_als">{TR_MAX_ALIASES}</label></td>
								<td><input id="hp_als" type="text" name="hp_als" value="{TR_MAX_ALS_VALUES}" /></td>
							</tr>
							<tr>
								<td><label for="hp_mail">{TR_MAX_MAILACCOUNTS}</label></td>
								<td><input id="hp_mail" type="text" name="hp_mail" value="{HP_MAIL_VALUE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_ftp">{TR_MAX_FTP}</label></td>
								<td><input id="hp_ftp" type="text" name="hp_ftp" value="{HP_FTP_VALUE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_sql_db">{TR_MAX_SQL}</label></td>
								<td><input id="hp_sql_db" type="text" name="hp_sql_db" value="{HP_SQL_DB_VALUE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_sql_user">{TR_MAX_SQL_USERS}</label></td>
								<td><input id="hp_sql_user" type="text" name="hp_sql_user" value="{HP_SQL_USER_VALUE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_traff">{TR_MAX_TRAFFIC}</label></td>
								<td><input id="hp_traff" type="text" name="hp_traff" value="{HP_TRAFF_VALUE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_disk">{TR_DISK_LIMIT}</label></td>
								<td><input id="hp_disk"  type="text" name="hp_disk" value="{HP_DISK_VALUE}" /></td>
							</tr>
							<tr>
								<td>{TR_PHP}</td>
								<td>
									<input type="radio" name="php" value="_yes_" {TR_PHP_YES} id="php_yes"/><label for="php_yes">{TR_YES}</label>
									<input type="radio" name="php" value="_no_" {TR_PHP_NO} id="php_no" /><label for="php_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_CGI}</td>
								<td>
									<input type="radio" name="cgi" value="_yes_" {TR_CGI_YES} id="cgi_yes"/><label for="cgi_yes">{TR_YES}</label>
									<input type="radio" name="cgi" value="_no_" {TR_CGI_NO} id="cgi_no" /><label for="cgi_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_DNS}</td>
								<td>
									<input type="radio" name="dns" value="_yes_" {TR_DNS_YES} id="dns_yes"/><label for="dns_yes">{TR_YES}</label>
									<input type="radio" name="dns" value="_no_" {TR_DNS_NO} id="dns_no" /><label for="dns_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_BACKUP}</td>
								<td>
									<input type="radio" name="backup" value="_dmn_" {VL_BACKUPD} id="backup_dmn"/><label for="backup_dmn">{TR_BACKUP_DOMAIN}</label>
									<input type="radio" name="backup" value="_sql_" {VL_BACKUPS} id="backup_sql" /><label for="backup_sql">{TR_BACKUP_SQL}</label>
									<input type="radio" name="backup" value="_full_" {VL_BACKUPF} id="backup_full" /><label for="backup_full">{TR_BACKUP_FULL}</label>
									<input type="radio" name="backup" value="_no_" {VL_BACKUPN} id="backup_none" /><label for="backup_none">{TR_BACKUP_NO}</label>
								</td>
							</tr>
							<!-- BDP: t_software_support -->
							<tr>
								<td>{TR_SOFTWARE_SUPP}</td>
								<td>
									<input type="radio" name="software_allowed" value="_yes_" {VL_SOFTWAREY} id="software_allowed_yes" /><label for="software_allowed_yes">{TR_YES}</label>
									<input type="radio" name="software_allowed" value="_no_" {VL_SOFTWAREN} id="software_allowed_no" /><label for="software_allowed_no">{TR_NO}</label>
								</td>
							</tr>
 							<!-- EDP: t_software_support -->
						</table>
					</fieldset>
					<fieldset>
						<legend>{TR_BILLING_PROPS}</legend>
						<table>
							<tr>
								<td><label for="hp_price">{TR_PRICE}</label></td>
								<td><input name="hp_price" type="text" id="hp_price" value="{HP_PRICE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_setupfee">{TR_SETUP_FEE}</label></td>
								<td><input name="hp_setupfee" type="text" id="hp_setupfee" value="{HP_SETUPFEE}" /></td>
							</tr>
							<tr>
								<td><label for="hp_value">{TR_VALUE}</label></td>
								<td><input name="hp_value" type="text" id="hp_value" value="{HP_VELUE}" /><span class="legend">{TR_EXAMPLE}</span></td>
							</tr>
							<tr>
								<td><label for="hp_payment">{TR_PAYMENT}</label></td>
								<td><input name="hp_payment" type="text" id="hp_payment" value="{HP_PAYMENT}" /></td>
							</tr>
							<tr>
								<td>{TR_STATUS}</td>
								<td>
									<input type="radio" name="status" value="1" {TR_STATUS_YES} id="status_yes"/><label for="status_yes">{TR_YES}</label>
									<input type="radio" name="status" value="0" {TR_STATUS_NO} id="status_no" /><label for="status_no">{TR_NO}</label>
								</td>
							</tr>
						</table>
					</fieldset>
					<fieldset>
						<legend>{TR_TOS_PROPS}</legend>
						<table>
							<!-- TOS --> 
							<tr>
								<td colspan="2">{TR_TOS_NOTE}</td>
							</tr>
							<tr>
								<td>{TR_TOS_DESCRIPTION}</td>
								<td>
									<textarea name="hp_tos" cols="70" rows="8">{HP_TOS_VALUE}</textarea>
								</td>
							</tr>
							<!-- TOS END -->
						</table>
					</fieldset>
					<div class="buttons">
						<input name="Submit" type="submit" value="{TR_ADD_PLAN}" />
					</div>
					<input type="hidden" name="uaction" value="add_plan" />
				</form>
		
		</div>
<!-- INCLUDE "../shared/layout/footer.tpl" -->
