#puppet-common

Some common tools for puppet modules.

[![Build Status](https://secure.travis-ci.org/icalvete/puppet-common.png)](http://travis-ci.org/icalvete/puppet-common)

##Actions:

* Set some environment variables (tenant, environment (dev|pre|int|pro) )
* Set any environmet variable (common::add_env)
* Download any resource (common::down_resource)
* Install some packages
* Setup some services

* if $::operatingsystem = Debian|Ubuntu|RedHat|CentOS include manifest with specific stuff will be included  

##Requires:

* [hiera](http://docs.puppetlabs.com/hiera/1/index.html)


##Example:

```puppet
    node fourandgo {
      $tenant = 'fourandgo'

      class {'common': stage => 'pre'}

      common::add_env{'TENANT':
        key     => 'TENANT',
        value   => $tenant,
        require => Class['common']
      }
    }

    node 'fag01.smartpurposes.com' inherits fourandgo {
      $environment = 'PRO'

      common::add_env{'environment':
        key     => 'environment',
        value   => $environment,
        require => Class['common']
      }

      common::down_resource {'rabbitmq_get_package':
        scheme   => 'http',
        domain   => 'www.rabbitmq.com',
        path     => 'releases/rabbitmq-server/v3.1.5',
        resource => 'rabbitmq-server_3.1.5-1_all.deb',
      }
    }
```

##TODO:

Refactor for general purpose. 

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>
