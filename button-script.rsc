/system routerboard reset-button
set enabled=yes hold-time=0s..3s on-event="{\r\
    \n:local NameInterface \"wireguard_CHR-c1v\"\r\
    \n:local WGstatus [/interface get \$NameInterface disabled]\r\
    \n:put \$WGstatus\r\
    \n:if (\$WGstatus = false ) do={\r\
    \n    /interface set \$NameInterface disabled=yes\r\
    \n    } else={\r\
    \n    /interface set \$NameInterface disabled=no\r\
    \n    }\r\
    \n}"
