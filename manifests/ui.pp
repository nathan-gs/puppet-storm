class storm::ui inherits storm
{
    require storm::config

    service { 'storm-ui':
        ensure	=> running,
        require => [Package['storm']],
    }
}