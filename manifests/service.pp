class gluoncollector::service inherits gluoncollector {

  service { 'gluon-collector':
    enable   => true,
    ensure   => running,
  }

}

