class storm::redhat
{

	package { 'unzip':
	    ensure  => installed,
    }
	
    package { 'zeromq':
    	provider	=> rpm,
    	#source		=> 'https://github.com/downloads/rfliam/storm-rhel-packaging/zeromq-2.2.0-1.el6.x86_64.rpm',
    	source		=> 'http://dl.dropbox.com/u/25821613/storm/zeromq-2.2.0-1.el6.x86_64.rpm',
        ensure      => '2.2.0-1.el6',
    }

    package { 'jzmq':
    	ensure		=> installed,
    	provider	=> rpm,
    	#source		=> "https://github.com/downloads/rfliam/storm-rhel-packaging/jzmq-2.1.0-1.el6.x86_64.rpm",
    	source		=> "http://dl.dropbox.com/u/25821613/storm/jzmq-2.1.0-1.el6.x86_64.rpm",
    }


    package { 'storm':
    	ensure		=> installed,
    	provider	=> rpm,
    	#source		=> 'https://github.com/downloads/rfliam/storm-rhel-packaging/storm-0.7.4-1.el6.x86_64.rpm',
    	source		=> 'https://dl.dropbox.com/u/25821613/storm/storm-0.8.1-1.el6.x86_64.rpm',
    	require		=> [Package['zeromq'], Package['jzmq']]
    }


}