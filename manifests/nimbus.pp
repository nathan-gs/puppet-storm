class storm::nimbus inherits storm {

    require storm::config

	service { 'storm-nimbus':
		ensure	=> running,
		require => [Package['storm']],
	}

	file { "/usr/local/bin/storm":
        ensure => link,
        target => "/opt/storm/bin/storm",
    }

}