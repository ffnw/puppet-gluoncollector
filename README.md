# puppet-gluoncollector

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with gluoncollector](#setup)
    * [What gluoncollector affects](#what-gluoncollector-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with gluoncollector](#beginning-with-gluoncollector)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Installs and configures gluon-collector.

## Setup

### Beginning with gluoncollector

```puppet
class { 'gluoncollector': }

gluoncollector::receiver { 'bat0': }
```

## Usage

```puppet
class { 'gluoncollector':
  interval_statistics        => 300,
  interval_nodeinfo          => 1800,
  interval_expire            => 3,
  logger_level               => 'warn',
  logger_file                => '/var/log/gluon-collector.log',
  store_type                 => 'bolt',
  store_path                 => '/opt/gluon-collector/collector.db',
  store_expireNodesAfterDays => 365,
  http_port                  => 8079,
  http_address               => '[::]',
  prometheus_namelabel       => true,
  prometheus_sitecodelabel   => true,
}

gluoncollector::receiver { 'bat0':
  type      => 'announced',
  interface => $title,
  port      => 21444,
}
```

## Reference

* class gluoncollector
  * interval_statistics (optional, default 300)
  * interval_nodeinfo (optional, default 1800)
  * interval_expire (optional, default 3)
  * logger_level (optional, default 'warn')
  * logger_file (optional, default '/var/log/gluon-collector.log')
  * store_type (optional, default 'bolt')
  * store_path (optional, default '/opt/gluon-collector/collector.db')
  * store_expireNodesAfterDays (optional, default 365)
  * http_port (optional, default 8079)
  * http_address (optional, default '[::]')
  * prometheus_namelabel (optional, default true)
  * prometheus_sitecodelabel (optional, default true)

* define gluoncollector::receiver
  * type (optional, default 'announced')
  * interface (optional, default _$title_)
  * port (optional, default 21444)

## Limitations

### OS compatibility
* Debian 8

## Development

### How to contribute
Fork the project, work on it and submit pull requests, please.

