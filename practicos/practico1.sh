#/bin/bash
# Crea directorios de ejemplos y repartidos en el directorio utu en el sistema de archivos de la máquina local (/home/utu)
sudo su # cambiar al usuario root para no andar poniendo la contraseña a cada rato
mkdir -p utu/{linux/{ejemplos,repartidos}, unix/{ejemplos,repartidos}, varios/{ejemplos,repartidos}, zztop/{ejemplos,repartidos}}
cd /utu # Cambiar a la carpeta utu
tree -d # Muestra el directorio completo con sus subdirectorios
cd /utu/zztop/ # Cambiar al directorio zztop
touch algo # Crea un archivo algo en el directorio 
cp algo /utu/unix/repartidos/alguito # Copia el archivo algo a la carpeta repartidos de unix renombrandolo a alguito
rn /utu/zztop/algo /utu/zztop/algún # Renombra algo a alguito en el directorio zztop
cd /home # Cambiar a la carpeta home
mkdir varios
cd varios
mkdir ejemplos/{archi1,archi2,archi3,archi4} # Crea 4 directorios en la carpeta ejemplos con sus subdirectorios
ls -l /home # Muestra el contenido de la carpeta home con todas sus propiedades
cp /utu/unix/repartidos/alguito /home/varios/ejemplos # Copia alguito al directorio varios/ejemplos
touch varios/ejemplos/algunos # Crea un archivo vacío algunos en el directorio varios/ejemplos
rn /home/varios/ejemplos/archi4 /home/varios/ejemplos/archi5 # Renombra archi4 a archi5 en el directorio varios/ejemplos
chown root:users /home/varios/ejemplos/archi5 # Cambia el propietario de archi5 a root y el grupo de archi5 a users
#restaurar el propietario y el grupo de archi5 a los valores originales de archi5 en el directorio varios/ejemplos
chmod 755 /home/varios/ejemplos/archi5 # Cambia el modo de archi5 a 755 (rwxr-xr-x) en el directorio varios/ejemplos (755 es el modo de archivo por defecto)
#asignar todos los permisos al propietario, al grupo y demás de solo lectura a archi5 en el directorio varios/ejemplos
chmod 644 /home/varios/ejemplos/archi5 # Cambia el modo de archi5 a 644 (rw-r--r--) en el directorio varios/ejemplos
rm /varios/ejemplos/alguito # Elimina el archivo alguito en el directorio varios/ejemplos
#borrar toda la estructura de utu en el sistema de archivos de la máquina local (/home/utu)
rm -rf /utu/ # Elimina la carpeta utu en el sistema de archivos de la máquina local (/home/utu)
cd /home/ # Cambiar a la carpeta home de nuevo
con sudo halt o sudo poweroff se apaga el sistema ;) no pienso intentarlo