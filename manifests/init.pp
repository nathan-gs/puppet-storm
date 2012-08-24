class storm (
	$zookeeper_servers = [],
	$nimbus_host = undef
)
{
	
	class { 'storm::redhat': }

	$config_dir	= '/etc/storm'

	file { "${config_dir}/storm.yml" :
		ensure	=> present,
		owner	=> root,
		content	=> template('storm/storm.yml.erb')
	}
}