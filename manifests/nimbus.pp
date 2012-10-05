class storm::nimbus (
	$zookeeper_servers = [],
	$nimbus_host = undef
) {
	class { 'storm' : 
		zookeeper_servers	=> $zookeeper_servers,
		nimbus_host			=> $nimbus_host
	}

	service { 'storm-nimbus':
		ensure	=> running,
		require => [Package['storm']],
	}
}