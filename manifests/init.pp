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
  $template_suffix = $motd::params::template_suffix,
) inherits motd::params
  {
  if $kernel == "Linux" {
    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => template("motd/motd_${template_suffix}.erb"),
    }
  }
}
