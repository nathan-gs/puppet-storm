class storm::ui
{

    service { 'storm-ui':
        ensure	=> running,
        require => [Package['storm']],
        enable  => true,
    }
}