class provisioning {

	file { "/etc/nginx/sites-available/default":
        	mode => "0644",
	        owner => 'root',
		group => 'root',
		source => 'puppet:///modules/provisioning/nginx.conf',
    	}
}
