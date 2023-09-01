

enable
	configure terminal
		ip domain-name senac.br
		crypto key generate rsa general-keys modulus 1024
		ip ssh version 2
		ip ssh time-out 60
		ip ssh authentication-retries 2
		end
copy running-config startup-config
show running-config