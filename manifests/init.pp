# Class: motd
#
# This module manages /etc/motd file using predefined files
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
class motd (
$default_template = $motd::params::default_template
) inherits motd::params{

}
