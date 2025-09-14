# VPN
Script en Bash para seleccionar y conectarse fácilmente usando archivos .ovpn de mediante un menú interactivo.

## Qué hace

- Busca automáticamente tus archivos `.ovpn` en un directorio.  
- La primera vez que lo ejecutas te pregunta dónde están los archivos y recuerda la ruta para la próxima.  
- Te muestra un menú para elegir a qué VPN conectarte.  

## Requisitos

- OpenVPN  
- `sudo` para ejecutar OpenVPN si tu usuario no tiene permisos suficientes
- Un archivo `auth.txt` con el **usuario y contraseña** para la VPN

## Auth.txt (credenciales)

El script usa un archivo con usuario y contraseña para pasar las credenciales a OpenVPN.  
El archivo debe llamarse `auth.txt` (por defecto se busca en el mismo directorio que las `.ovpn`) y tener este formato:

usuario
contraseña

Recomendable poner permisos seguros, como por ejemplo: `chmod 600 auth.txt`

## Cómo usarlo

1. Clona el repositorio:  
```bash
git clone https://github.com/IagoLB/VPN.git
cd VPN
```

2. Haz el script ejecutable:
```bash
chmod +x vpn.sh
```
3. Ejecútalo:
```bash
./vpn.sh
```

La primera vez te pedirá la ruta de los archivos .ovpn.

Después solo te mostrará el menú.

## Ejemplo de menú

bash vpn.sh
===== Menú VPN =====
1) /home/kali/VPN/nl-free-103.protonvpn.tcp.ovpn  
2) /home/kali/VPN/nl-free-14.protonvpn.udp.ovpn  
3) /home/kali/VPN/nl-free-49.protonvpn.udp.ovpn
4) /home/kali/VPN/nl-free-57.protonvpn.udp.ovpn
5) Salir
