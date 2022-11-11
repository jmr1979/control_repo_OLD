class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD0fbhy6i2fUX6Q/rlhAISLljKITuIkciPqAvjFA+RGIqzmBW74cyRcYoJArtB/B40rjTCzl8PN1vJwkc4SOOGLUkGnq5nzfXd9aouijD+fe0ZcJcFHK4puVXbuMbtfPSa94MxBVvJwSfkAhew0Dn3JfYDgdsKiSXiborCP1l/vukjyjdzZ0DfyZIerHzcBdYr3V/Mjmkd7ldN/7i2AMD6in7GEYv0BObyHW9ZJWogpPpQ5QVH7jD4CfHCD7Ka/MfS7e9B8RjvF8BJCQdVbsvD1XjN9V6IH3F+CuXA9WTOcezmL/FOwUvuNFC6wjvxappQdW1KWwYCw4EwNAKeMGnON',
        }
}
