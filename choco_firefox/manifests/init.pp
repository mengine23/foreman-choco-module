# choco_firefox
#
#
# @param ensure [String] Specifies what state the package should be in. You can choose which package to retrieve by specifying a version number or latest as the ensure value. Default value: 'latest'.
# @param provider [String] There should be no need to modify this setting. Default value: 'chocolatey'.
# @param install_options [Optional[String]] Specifies an array of additional options to pass when installing a package. These options are package-specific! Default value: ''.
# @param uninstall_options [Optional[String]] Specifies an array of additional options to pass when uninstalling a package. These options are package-specific! Default value: ''.
# @param source [Optional[String]] Specifies where to find the package file. Default value: ''.

class choco_firefox (
  $ensure = $choco_firefox::params::version,
  $provider = $choco_firefox::params::provider,
  $install_options = $choco_firefox::params::version::install_options,
  $uninstall_options = $choco_firefox::params::version::uninstall_options,
  $source = $choco_firefox::params::version::source,
) inherits choco_firefox::params {
  if ($::operatingsystem != "Windows") {
    err('This module works on Windows only!')
    fail('Unsupported OS')
  }
  if ($ensure != "") {
    package { 'firefox':
      ensure => $ensure,
      provider => $provider,
      install_options => $install_options,
      uninstall_options => $uninstall_options,
      source => $source,
    }
  }
}
