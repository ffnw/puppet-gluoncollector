define gluoncollector::receiver (
  Enum['announced'] $type      = 'announced',
  String            $interface = $title,
  Integer           $port      = 21444,
) {

  include gluoncollector
  include gluoncollector::params

  concat::fragment { "gluoncollector-receiver-${title}":
    target  => '/etc/node-collector.yaml',
    order   => 1,
    content => epp('gluoncollector/receiver.epp', {
      'type'    => $type,
      interface => $interface,
      port      => $port,
    })
  }

}

