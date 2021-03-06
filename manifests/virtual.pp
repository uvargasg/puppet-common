class common::virtual {

  # This packages can be realized in all manifest
  @package {'xinetd':
    ensure => present
  }

  @package {'syslog-ng':
    ensure => present
  }

  @package {'make':
    ensure => present
  }

  @package {'openjdk-7-jre':
    ensure => present
  }

  @package {'default-jre':
    ensure => present
  }

  @package {'java-1.6.0-openjdk':
    ensure => present
  }

  @package {'unzip':
    ensure => present
  }

  @package {'libltdl7':
    ensure   => present,
  }

  @package {'ruby-devel':
    ensure => present
  }

  @package {'ruby1.8-dev':
    ensure => present
  }

  @package {'ruby1.9.1-dev':
    ensure => present
  }

  @package {'daemon':
    ensure => present
  }

  @package {'curl':
    ensure => present
  }
}
