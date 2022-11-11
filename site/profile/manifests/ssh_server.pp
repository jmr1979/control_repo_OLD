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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjA1uxgiGh/nRQb/sjyn+0qKENaPCMO4tfE4sk6X3W9tgdD2q6sh1bCVWQz1bmPprEpkYpMWyl1sIeJNb8yqzfWOrwS0IWdKHjE2fDfUDWfqorZw0U10J7PmV6UpVSlBQg/QkMUrMb6saRJAGtG9PVe7KJWSvEBaRR0LUlPrXvVR1/C5WpY8xdornJD0FBR02lC88j9ReQlzAUjo1Kk+nxKn6AA7iTHSwKiCLMf0qqedgudGvHOYQh2N60bxZpXoE+S6LI1WdC1u2zUCcdmqLXZhtb+W6mPF4gZheJfrXxiXmbklEG+ahjxVaqTArfAl/+3+bdGQFN4lkUDDp+4b3l',
        }
}
