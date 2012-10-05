class storm::worker (
	$zookeeper_servers = [],
	$nimbus_host = undef
) {

	class { 'storm' : 
		zookeeper_servers	=> $zookeeper_servers,
		nimbus_host			=> $nimbus_host
	}

	service { 'storm-supervisor':
		ensure	=> running,
		require => [Package['storm']],
		enable  => true,
	}
}