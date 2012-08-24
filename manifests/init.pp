class storm (
	$zookeeper_servers = [],
	$nimbus_host = undef
)
{
	
	class { 'storm::redhat': }

 	$config_dir	= '/opt/storm/conf'

 	file { "${config_dir}/storm.yaml" :
 		ensure	=> present,
 		owner	=> root,
 		content	=> template('storm/storm.yml.erb')
 	}

 	file { '/var/cache/storm':
 	    ensure  => directory,
 	    owner   => root,
 	    mode    => 770,
     }
 }