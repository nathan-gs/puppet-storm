# Puppet: Storm

## Usage

#### on the workers

   	class {'storm::worker': 
		zookeeper_servers	=> [zookeeper1, zookeeper2, zookeeper3],
		nimbus_host			=> 'master'
	}

#### On the nimbus node

	class {'storm::nimbus': 
		zookeeper_servers	=> [zookeeper1, zookeeper2, zookeeper3],
		nimbus_host			=> 'master'
	}

## Credits

- https://github.com/acromusashi/storm-installer


## Author

[Nathan Bijnens](http://nathan.gs)