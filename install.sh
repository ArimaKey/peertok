#! /bin/bash

function ejecutar {
	sudo bash ./separate-files/alacritty.sh
	sudo bash ./separate-files/zsh.sh
	sudo bash ./separate-files/rofi.sh
	sudo bash ./separate-files/sxhkd.sh
	sudo bash ./separate-files/aditional.sh
}

function salir {
	echo "[*] Saliendo del programa..."
	exit 0
}

ejecutar

trap salir SIGINT
