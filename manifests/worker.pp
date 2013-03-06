class storm::worker inherits storm {
    require storm::config

	service { 'storm-supervisor':
		ensure	=> running,
		require => [Package['storm']],
	}
}