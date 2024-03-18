#! /bin/bash

function preguntar {
    echo -e "Seleccione un idioma para realizar su instalación \n\t [1] Español \n\t [2] Ingles\n"
    read -p "Ingresar seleccion:" opcion
    case $opcion in
        1)
            echo "Se selecciono el español"
            ;;
        2)
            echo "Se selecciono el ingles"
            ;;
        *)
            echo "Opción inválida. Inténtelo de nuevo."
            preguntar
            ;;
    esac
}

function ejecutar {
	echo "en proceso..."	
}

function execute {
	echo "in process..."
}

function salir {
	echo "[*] Saliendo del programa..."
	exit 0
}

trap salir SIGINT
preguntar
