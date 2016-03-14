class gluoncollector::config inherits gluoncollector {

  concat { '/etc/node-collector.yaml':
    ensure         => present,
    ensure_newline => true,
  }

  concat::fragment { 'gluoncollector-mainconf':
    target  => '/etc/node-collector.yaml',
    order   => 0,
    content => epp('config.epp', {
      interval_statistics        => $interval_statistics,
      interval_nodeinfo          => $interval_nodeinfo,
      interval_expire            => $interval_expire,
      logger_level               => $logger_level,
      logger_file                => $logger_file,
      store_type                 => $store_type,
      store_path                 => $store_path,
      store_expireNodesAfterDays => $store_expireNodesAfterDays,
      http_port                  => $http_port,
      http_address               => $http_address,
      prometheus_namelabel       => $prometheus_namelabel,
      prometheus_sitecodelabel   => $prometheus_sitecodelabel,
    },
  }

}

