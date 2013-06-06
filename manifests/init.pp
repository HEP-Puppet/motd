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
class motd {
  if $kernel == "Linux" {
    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      source => "puppet:///modules/motd/motd.DICE",
    }
  }
}
