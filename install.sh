#! /bin/bash

function preguntar {
	echo "[PeerTook]"
	echo "Cual es su sistema operativo?"
	echo "   [1] Parrot/Kali"
	echo "   [2] Arch"
	echo -n "Su respuesta es: "
	read respuesta

	case $respuesta in
		1)
			apt
			;;
		2)
			pacman
			;;
		*)
			echo "Vuelva a intentar con una opción valida"
			preguntar
			;;
	esac
}

function apt {
	bash ./separate-files/apt/alacritty.sh
	bash ./separate-files/apt/zsh.sh
	bash ./separate-files/apt/desktop.sh
	bash ./separate-files/apt/rofi.sh
	bash ./separate-files/apt/aditional.sh
}

function pacman {
	bash ./separate-files/pacman/alacritty.sh
	bash ./separate-files/pacman/zsh.sh
	bash ./separate-files/pacman/desktop.sh
	bash ./separate-files/pacman/rofi.sh
	bash ./separate-files/pacman/aditional.sh
}

function salir {
	echo "[*] Saliendo del programa..."
	exit 0
}

preguntar

trap salir SIGINT
