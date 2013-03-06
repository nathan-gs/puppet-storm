class storm::config (
    $zookeeper_servers = [ 'localhost' ],
    $nimbus_host = undef,
    $supervisor_slots = [ 6700, 6701, 6702, 6703 ],
    $worker_mem = 1024,
    $ui_port = 8080
) {

 	$config_dir	= '/opt/storm/conf'

 	file { "${config_dir}/storm.yaml" :
 		ensure	=> present,
 		owner	=> root,
 		content	=> template('storm/storm.yml.erb') ,
 		require => [Package['storm'], File['/var/cache/storm']],
 	}

    file { "/etc/sysconfig/storm" :
        ensure	=> present,
        owner	=> root,
        content	=> template('storm/sysconfig'),
        require => [Package['storm']],
    }

}