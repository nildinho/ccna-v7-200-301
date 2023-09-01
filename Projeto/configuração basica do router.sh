
enable
clock set ??:??:?? ?? ???????? ????
	configure terminal
	hostname rt-g04
	service password-encryption
	service timestamps log datetime msec
	security passwords min-length 8
	login block-for 120 attempts 4 within 60
	no ip domain-lookup
    banner motd #AVISO: acesso autorizado somente a funcionarios#
    !Habilitar a senha do tipo secret Tipo-5 para o modo enable privilegiado
    enable secret 123@senac

	!Criação dos usuários, senhas do Tipo-5 e privilégios diferenciados
	!Consultar a Planilha de nomes de Usuários
	username ???nome_do_primeiro_integrante privilege 15 secret 123@senac
	username ???nome_do_segundo_integrante privilege 15 secret 123@senac
	username ???nome_do_terceiro_integrante privilege 15 secret 123@senac
	username ???nome_do_quarto_integrante privilege 15 secret 123@senac
	
	!Acessando a linha console
	line console 0
	
		password 123@senac
		login local
		logging synchronous
		exec-timeout 5 30
		!Saindo de todos os níveis
		end
copy running-config startup-config
show running-config
disable
exit