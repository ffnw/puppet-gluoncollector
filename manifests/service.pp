class gluoncollector::service inherits gluoncollector {

  service { 'gluon-collector':
    enable => true,
    ensure => running,
    binary => '/opt/gluon-collector/bin/gluon-collector',
  }

}

