{
:local NameInterface "wireguard_CHR-c1v"
:local WGstatus [/interface get $NameInterface disabled]
:put $WGstatus
:if ($WGstatus = false ) do={
    /interface set $NameInterface disabled=yes
    } else={
    /interface set $NameInterface disabled=no
    }
}
