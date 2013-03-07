# Puppet: Storm

## Usage

Specify the config:

    class { 'storm::config':
        nimbus_host         => 'master.c.octopin.com',
        zookeeper_servers   => ['master.c.octopin.com', 'n01.hetz01.c.octopin.com', 'n03.hetz02.c.octopin.com' ],
        supervisor_slots    => [ 6700, 6701, 6702, 6703, 6704, 6705, 6708, 6709 ],
        ui_port             => 9088,
    }

#### on the workers

   	class {'storm::worker': }

#### On the nimbus node

	class {'storm::nimbus':	}
	class {'storm::ui':	}

## Credits

- https://github.com/acromusashi/storm-installer


## Author

[Nathan Bijnens](http://nathan.gs)