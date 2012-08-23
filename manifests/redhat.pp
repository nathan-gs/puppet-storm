class storm::redhat
{
	
	
    package { 'zeromq':
    	ensure		=> installed,
    	provider	=> rpm,
    	source		=> 'https://github.com/downloads/rfliam/storm-rhel-packaging/zeromq-2.2.0-1.el6.x86_64.rpm',
    }

    package { 'jzmq':
    	ensure		=> installed,
    	provider	=> rpm,
    	source		=> "https://github.com/downloads/rfliam/storm-rhel-packaging/jzmq-2.1.0-1.el6.x86_64.rpm",
    }


    package { 'storm':
    	ensure		=> installed,
    	provider	=> rpm,
    	source		=> 'https://github.com/downloads/rfliam/storm-rhel-packaging/storm-0.7.4-1.el6.x86_64.rpm',
    	require		=> [Package['zeromq'], Package['zmq']]
    }


}