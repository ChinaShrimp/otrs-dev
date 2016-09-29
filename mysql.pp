class {'::mysql::server':
  package_name     => 'mariadb-server',
  service_name     => 'mysql',
  root_password    => 'changeme',
  override_options => {
    mysqld => {
      'log-error' => '/var/log/mysql/mariadb.log',
      'pid-file'  => '/var/run/mysqld/mysqld.pid',
      'max_allowed_packet' => '20M',
      'query_cache_size' => '32M',
      'innodb_log_file_size' => '256M',
    },
    mysqld_safe => {
      'log-error' => '/var/log/mysql/mariadb.log',
    },
  }
}
