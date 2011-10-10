#
# xinetd module
#
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
# Copyright 2011, Atizo AG
# Simon Josi simon.josi+puppet(at)atizo.com
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class xinetd {
  package{'xinetd':
    ensure => present,
  }
  service{'xinetd':
    ensure => running,
    enable => true,
    require => Package['xinetd'],
  }
}
