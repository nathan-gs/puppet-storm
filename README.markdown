# Puppet: Storm

## Usage

Specify the config:

    class { 'storm::config':
        nimbus_host         => 'master.example.com',
        zookeeper_servers   => ['master.example.com', 'n01.example.com', 'n03.example.com' ],
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