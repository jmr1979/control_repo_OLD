class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running'
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvIARSdGLLj1Amrdvh7Kg55MMdKTH5fg0zRxu9l1ATm+mJgToN/Tr0TxGEl4XPCKoXLZUw7Ufs7Qf59kCejgW86SD57YfBtKXzbf97CmBWbiHNOZScZDonjdsE0uwEHP4rZwrteKW6nIgsGLpfboWTNt7OeuRLoER46InpAQjtDQqG/3MRSyDwgrVI39kf2pMbLkMt2Y4+Pm67XvGRrFdMVLlYkiax/GDUXYb1E69RzjG0Xs0j+d2Dy14sLcw1B43UTrLFypn8lFbvjqxoH23xWN1YK89NONNCPYoaJz4uPS2XlxkQ5/eKvf2hIbwPlle19esBkC4/2NEnpGpbphM9',
        }
}
       
                
