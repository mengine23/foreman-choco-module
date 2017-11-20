# choco_notepadplusplus
#
#
# @param ensure [String] Specifies what state the package should be in. You can choose which package to retrieve by specifying a version number or latest as the ensure value. Default value: 'latest'.
# @param provider [String] There should be no need to modify this setting. Default value: 'chocolatey'.
# @param install_options [Optional[String]] Specifies an array of additional options to pass when installing a package. These options are package-specific! Default value: ''.
# @param uninstall_options [Optional[String]] Specifies an array of additional options to pass when uninstalling a package. These options are package-specific! Default value: ''.
# @param source [Optional[String]] Specifies where to find the package file. Default value: ''.

class choco_notepadplusplus (
  $ensure = $choco_notepadplusplus::params::version,
  $provider = $choco_notepadplusplus::params::provider,
  $install_options = $choco_notepadplusplus::params::version::install_options,
  $uninstall_options = $choco_notepadplusplus::params::version::uninstall_options,
  $source = $choco_notepadplusplus::params::version::source,
) inherits choco_notepadplusplus::params {

}
