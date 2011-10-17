<Directory {PATH}/cgi-bin>
 <Limit RMD RNTO DELE XRMD>
  DenyAll
 </Limit>
</Directory>
<Directory {PATH}/cgi-bin/*>
 <Limit RMD RNTO DELE XRMD>
    AllowAll
 </Limit>
</Directory>

<Directory {PATH}/htdocs>
 <Limit RMD RNTO DELE XRMD>
  DenyAll
 </Limit>
</Directory>
<Directory {PATH}/htdocs/*>
 <Limit RMD RNTO DELE XRMD>
    AllowAll
 </Limit>
</Directory>

<Directory {PATH}/phptmp>
 <Limit RMD RNTO DELE XRMD>
  DenyAll
 </Limit>
</Directory>
<Directory {PATH}/phptmp/*>
 <Limit RMD RNTO DELE XRMD>
    AllowAll
 </Limit>
</Directory>
