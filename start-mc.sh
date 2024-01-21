#!/bin/bash

clear
cd /home/container
echo "WAITING..."
sleep 100

echo -e ".                \e[35m /\_/\ \e[0m \e[31m  | \  |  ___  ____   ___   ___    ____   |    |  ____    ____   ____  \e[0m "
echo -e ".                \e[35m( o.o )\e[0m \e[31m  |  \ | |___   |    |     |___|    |     |----| |    |  |____    |    \e[0m "
echo -e ".                \e[35m > ^ < \e[0m \e[31m  |   \| |___   |    |___  |   |    |     |    | |____|   ____|   |    \e[0m "
echo " "
echo " "
echo -e "\e[33m - Link de nuestro servidor de soporte en discord: https://discord.gg/5KAjH2XVdt \e[0m"
echo -e "\e[33m - Para realizar donaciones al proyecto: https://paypal.me/sam170703dev \e[0m"
echo " "
echo ""
echo -e ".\e[31m                                         © Samuel Vergara Martín. 2024 \e[0m"
echo " "
echo " "
sleep 3
echo -e "\e[36m Le damos la bienvenida a su servidor! \e[0m"
sleep 2
echo -e "\e[36m Póngase cómodo mientras hacemos nuestra magia... \e[0m"
sleep 2
echo " "
echo " "
#echo -e "\e[33m Analizando contenedor... \e[0m"
#sleep 5
#echo -e "\e[32m ✔️ | No se encontraron scripts maliciosos. \e[0m"
#echo " "
#echo " "
echo -e "\e[33m Cargando datos del servidor... \e[0m"
sleep 2
echo -e "\e[32m ✔️ | Plan actual: NetCat Wood"
echo -e "\e[32m ✔️ | Servicios extra: Ninguno"
echo " "
echo " "
echo -e "\e[33m Cargando configuracion del startup... \e[0m"
echo " "
echo " "
echo -e "\e[33m Buscando el archivo de arranque en el /home/container... \e[0m"
sleep 2

if [[ -f  "/home/container/${SERVER_JARFILE}" ]]; then
	echo -e "\e[32m ✔️ | Detectado: /home/container/${SERVER_JARFILE} \e[0m"
    sleep 2
    echo -e "\e[33m Cargando /home/container/${SERVER_JARFILE}... \e[0m"
    sleep 1
	 java -Xms128M -XX:MaxRAMPercentage=95.0 -Dterminal.jline=false -Dterminal.ansi=true -jar ${SERVER_JARFILE};
    sleep 100
    exit 0
fi;
if [ -f /home/container/server.jar ]; then
	echo -e "\e[32m ✔️ | Detectado: /home/container/server.jar \e[0m"
    sleep 2
    echo -e "\e[33m Cargando /home/container/server.jar... \e[0m"
    sleep 1
    java -Xms128M -XX:MaxRAMPercentage=95.0 -Dterminal.jline=false -Dterminal.ansi=true -jar /home/container/server.jar
    sleep 100
    exit 0
fi
if [ -f /home/container/src/server.jar ]; then
	echo -e "\e[32m ✔️ | Detectado: /home/container/src/server.jar \e[0m"
    sleep 2
    echo -e "\e[33m Cargando /home/container/src/server.jar... \e[0m"
    sleep 1
	java -Xms128M -XX:MaxRAMPercentage=95.0 -Dterminal.jline=false -Dterminal.ansi=true -jar /home/container/src/server.jar
    sleep 100
    exit 0
fi
    
echo -e "\e[31m X | ERROR: No se ha encontrado ningun archivo principal de arranque. Deteniendo servidor... \e[0m"
sleep 5
exit 1
