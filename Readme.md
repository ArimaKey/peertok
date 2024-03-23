
# PeerTok
Este proyecto busca personalizar el entorno Linux de Parrot, adaptándolo a las necesidades del usuario. Incluye modificaciones en la interfaz, configuraciones y selección de software para ofrecer una experiencia optimizada en seguridad y funcionalidad




## Actualizaciones
- Configuración para arch.
- Solución de problemas en la instalación para la versión de arch.
- Comentada la instalación de zsh.


## Capturas de Pantalla
![App Screenshot](https://github.com/ArimaKey/peertok/blob/main/images/imagen_01.png?raw=true)
![App Screenshot](https://github.com/ArimaKey/peertok/blob/main/images/imagen_02.png?raw=true)
![App Screenshot](https://github.com/ArimaKey/peertok/blob/main/images/imagen_03.png?raw=true)

## Consideraciones
El script debe ejecutarse desde un usuario no privilegiado, por lo que si es desde arch, debe haberse instalado y configurado `sudo`. Ademas debe contarse con x11 como requerimiento para poder comenzar con la instalación.

## Instalación

Para clonar el respositorio
```bash
  git clone https://github.com/ArimaKey/peertok.git
```

Accede al respositorio clonado
```bash
  cd peertok
```

Asignamos permisos de ejecución
```bash
  chmod +x install.sh
```

Una vez clonado debemos ejecutar el script principal `install.sh`. No ejecutar somo superusuario.
```bash
  bash ./install.sh
```

Comando acotado
```bash
  git clone https://github.com/ArimaKey/peertok.git && cd peertok && chmod +x install.sh && ./install.sh
```

## Por desarrollar
- Agregar un modo de `instalación personalizada`.
- Agregar `ly` a la version de parrot.
- Integrar soporte para laptops con el porcentaje de bateria, botones de volumen y de brillo.
- Integrar atajos por teclado para diversos programas.
- Personalizar la consola mucho más debido a que esta utilizando un estilo por defecto de ohmyzsh!.

