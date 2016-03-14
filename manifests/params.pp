class gluoncollector::params {

  $interval_statistics = 300
  $interval_nodeinfo   = 1800
  $interval_expire     = 3

  $logger_level = 'warn'
  $logger_file  = '/var/log/gluon-collector.log'

  $store_type                 = 'bolt'
  $store_path                 = '/opt/gluon-collector/collector.db'
  $store_expireNodesAfterDays = 365

  $http_port    = 8079
  $http_address = '[::]'

  $prometheus_namelabel     = true
  $prometheus_sitecodelabel = true

}

