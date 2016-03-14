class gluoncollector::install inherits gluoncollector {

  file {
    default:
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
    '/opt/gluon-collector':;
    '/opt/gluon-collector/bin':;
    '/opt/gluon-collector/bin/gluon-collector':
      ensure => file,
      mode   => '0744',
      source => 'puppet:///modules/gluoncollector/gluon-collector';
    '/etc/systemd/system/gluon-collector.service':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/gluoncollector/gluon-collector.service';
  }

}

