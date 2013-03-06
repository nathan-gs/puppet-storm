class storm
{
	
	class { 'storm::redhat': }

 	file { '/var/cache/storm':
 	    ensure  => directory,
 	    owner   => root,
 	    mode    => 770,
 	    require => Package['storm'],
    }
 }