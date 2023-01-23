#/bin/bash/
echo "Script bash tp-link wn725n"
#banner
echo "
 ____  _____ ____         ____ _   _  ___  ____ _____
|  _ \|___ /|  _ \       / ___| | | |/ _ \/ ___|_   _|
| |_) | |_ \| | | |_____| |  _| |_| | | | \___ \ | |
|  _ < ___) | |_| |_____| |_| |  _  | |_| |___) || |
|_| \_\____/|____/       \____|_| |_|\___/|____/ |_|
"
echo "[1] Instalar driver de tp-link wn72Xn"
echo "[2] Salir"
echo "==>"

read i

if [ $i = 1 ]; then
  apt update
  mkdir .tplk
  cd .tplk/
  apt install git linux-headers-generic build-essential dkms bc
  clear
  echo "Descargando"
  echo "1"
  sleep 2
  echo "2"
  echo "3"
  sleep 2
  echo "GO"
  git clone https://github.com/aircrack-ng/rtl8188eus.git
  cd rtl8188eus
  clear
  echo "Instalacion"
  echo "Iniciando"
  echo "1"
  echo "2"
  echo "3"
  echo "Instalando"
  echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
  make && sudo make install
  clear
  echo "Instalado"
  
elif [ $i = 2 ]; then
  exit 0
fi

