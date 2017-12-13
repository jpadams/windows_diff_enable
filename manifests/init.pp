class windows_diff_enable (
  $diff_command = 'C:\ProgramData\chocolatey\lib\diffutils\tools\bin\diff.exe',
  $puppet_conf = 'C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf'
) {

  package { 'diffutils':
    ensure   => present,
    provider => chocolatey,
  }

  ini_setting { 'Enable show_diff':
    ensure  => present,
    path    => $puppet_conf,
    section => 'agent',
    setting => 'show_diff',
    value   => true,
  }

  ini_setting { 'Specify diff command':
    ensure  => present,
    path    => $puppet_conf,
    section => 'agent',
    setting => 'diff',
    value   => $diff_command,
  }

}
