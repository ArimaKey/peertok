#! /bin/bash

function ejecutar {
	bash ./separate-files/alacritty.sh
	bash ./separate-files/zsh.sh
	bash ./separate-files/rofi.sh
	bash ./separate-files/sxhkd.sh
	bash ./separate-files/aditional.sh
}

function salir {
	echo "[*] Saliendo del programa..."
	exit 0
}

ejecutar

trap salir SIGINT
