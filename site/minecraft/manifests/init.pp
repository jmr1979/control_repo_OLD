class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar',
  $install_dir = '/opt/minecraft'
){
  file {$install_dir:
    ensure => directory,
  }
  file {"${install_dir}/server.jar":
    ensure => file,
    source => $url,
    before => Service['minecraft'],
  }
  package {'java':
    ensure => present,
  }
  file {"${install_dir}/eula.txt":
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    content => epp('minecraft/minecraft.service',{
      install_dir => $install_dir
     })
  }
  service {'minecraft':
    ensure => running,
    enable => true,
    require => [Package['java'],File["${install_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']],
  }
} 
