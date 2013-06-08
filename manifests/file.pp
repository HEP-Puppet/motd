# this has to be in a 'define' and not 'class'
define motd::file(
$template = $motd::default_template
){
# The base class must be included first because it is used by parameter defaults
  if ! defined(Class['motd']) {
    fail("You must include the motd base class before using any motd defined resources")
  }
  file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => template($template),
    }
}