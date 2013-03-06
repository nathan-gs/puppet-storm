class storm::nimbus inherits storm {

    require storm::config

	service { 'storm-nimbus':
		ensure	=> running,
		require => [Package['storm']],
	}
}