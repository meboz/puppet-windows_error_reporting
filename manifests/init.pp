# Class: windows_error_reporting
#
# This module manages windows_error_reporting
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class windows_error_reporting{
    $hklm_wer = "HKLM\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting\\"

    registry_value { "${hklm_wer}Disabled":
        ensure => present,
        type   => dword,
        data   => bool2num($windows_error_reporting::disabled),
    }
}
