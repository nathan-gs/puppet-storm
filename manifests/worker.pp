class storm::worker (
	$zookeeper_servers = [],
	$nimbus_host = undef,
	$supervisor_slots = [ 6700, 6701, 6702, 6703 ],
	$worker_mem = 1024
) {

	class { 'storm' : 
		zookeeper_servers	=> $zookeeper_servers,
		nimbus_host			=> $nimbus_host,
		supervisor_slots    => $supervisor_slots,
		worker_mem          => $worker_mem,
	}

	service { 'storm-supervisor':
		ensure	=> running,
		require => [Package['storm']],
	}
}