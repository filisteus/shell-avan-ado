#!/bin/bash
while true ;
    do
    distros=$(dialog --stdout --title "Escolha sua distro" --menu "Qual a sua distro preferida?" 0 0 0 \
			1 "Debian"	\
			2 "Red Hat"	\
			3 "Gentoo"	\
			4 "Slackware"	\
			5 "Ubuntu"	\
			0 "Sair"	)	
    [ $?  -ne  0 ] && echo "Cancelou ou Apertou ESC."  && break

	case  "$distros" in
    		1) dialog --stdout --msgbox "Essa é a MELHOR distro!  :)" 5 30 ;;
    		2) dialog --title 'Red Hat' --infobox '\nVocê agora é ENTERPRISE. :('  5 30; break ;;
    		3) dialog --title 'Gentoo' --msgbox '\nVocê é PSICOPATA!' 5 25 ;;
    		4) dialog --title 'Slackware' --yesno 'Você é ATEU ?' 5 60;    

     		if  [ $? = 0 ]; then
	     		dialog --title 'Slackware Ateu'  --infobox '\nSabia!' 0 0;
     		else
	     		dialog --title 'Slackware não Ateu?' --infobox '\Amarelou.' 0 0;
     			fi

     		break ;;

     		5) dialog --title 'Ubuntu' --timebox '\nVou gravar a hora que você escolheu esse absurdo.' 0 0;  break ;;
		0) echo "Você escolheu sair" ; break ;;

     		esac

     		done

# 0 0  6 = [altura] [largura] qantd_itens] , o  último nº pode ser 0, pois será automaticamente, mas tem de passar
# Atenção para o uso das quebras de barra, se houver espaço depois, haverá erro.
# Para cada escolha uma forma diferente
# [ $? -ne 0 ] && break , ESC ou cancelar dentro do loop
#Em --timebox se a resposta for aceitar e a hora não for passada após os zeros ( 0 0 12 24 25), mostra a hora atual no botão aceitar, mesmo que passe a hora
