class storm::ui(
    $port = 9088,
)
{


    service { 'storm-ui':
        ensure	=> running,
        require => [Package['storm']],
    }
}