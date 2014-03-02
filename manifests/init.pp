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

class windows_error_reporting (
  $disabled = true
) {
    $registry_key = 'HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\'
    registry_value { "${registry_key}Disabled":
        ensure => present,
        type   => dword,
        data   => bool2num($disabled),
    }
}
