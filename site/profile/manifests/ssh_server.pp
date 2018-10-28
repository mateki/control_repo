class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCY0/hqI6DWf25N2Gr/oYiPmugyAZBWLQi4dBF91IdZtZWFfXBaJ1ZebM4t3JXABOQinWchEHjGpCI7y9jIRElYwm2L4C1DiYY9lET5R39YNO1hJfXhymwXqZgDeWiXzpStG3Oih1k9nDaIZe9A6uib73kJc1Ew8H8xutPi0r6STOxXv72El7C1ihQdYvIXvQH6FThHbiIP+sJbjvjvdgCGVzdv4wYaFXyP8VfgqHxuTCv3us/2/onecq2sK+jQW/ObH9y4duFDRrPsBoEzwmdT8v17fpiQsERk9cF1DCLFPdb9ATCgmztHr8DSKh5lcHYDe0wwLS/YgLF+mComAZ/f',
	}  
}
