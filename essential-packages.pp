package { 'vim': ensure => present }

# to avoid bad ssh pipe when using ssh login
exec { 'ssh-alive-interval':
  path => '/usr/bin:/usr/sbin:/bin',
  command => 'echo "ClientAliveInterval 30" >> /etc/ssh/sshd_config'
}
