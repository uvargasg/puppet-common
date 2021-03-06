class common::install {
  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
      case $lsbdistcodename {
        /^xenial$/: {
          apt::ppa { 'ppa:openjdk-r/ppa':
            notify => Exec['apt_get_update']
          }
        }
      }

      exec { 'apt_get_update':
        command     => "/usr/bin/apt-get update",
        user        => 'root',
        refreshonly => true
      }
    }
  }
}
