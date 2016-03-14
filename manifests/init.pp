class gluoncollector (
  Integer               $interval_statistics        = $gluoncollector::params::interval_statistics,
  Integer               $interval_nodeinfo          = $gluoncollector::params::interval_nodeinfo,
  Integer               $interval_expire            = $gluoncollector::params::interval_expire,
  String                $logger_level               = $gluoncollector::params::logger_level,
  String                $logger_file                = $gluoncollector::params::logger_file,
  Enum['bolt','memory'] $store_type                 = $gluoncollector::params::store_type,
  String                $store_path                 = $gluoncollector::params::store_path,
  Integer               $store_expireNodesAfterDays = $gluoncollector::params::store_expireNodesAfterDays,
  Integer               $http_port                  = $gluoncollector::params::http_port,
  String                $http_address               = $gluoncollector::params::http_address,
  Boolean               $prometheus_namelabel       = $gluoncollector::params::prometheus_namelabel,
  Boolean               $prometheus_sitecodelabel   = $gluoncollector::params::prometheus_sitecodelabel,
) inherits gluoncollector::params {

  class { 'gluoncollector::install': } ->
  class { 'gluoncollector::config': } ~>
  class { 'gluoncollector::service': }

  contain gluoncollector::install
  contain gluoncollector::config
  contain gluoncollector::service

  create_resources('gluoncollector::receiver', hiera('gluoncollector::receiver', {}))

}

