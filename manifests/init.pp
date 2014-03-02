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
class windows_error_reporting(
  $disabled = true
) {
  
  $regkey = ''
  
	registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Disabled':
	  ensure => present,
	  type   => dword,
	  data   => bool2num($disabled),
	}
}