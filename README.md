# VPN
Script en Bash para seleccionar y conectarse fácilmente usando archivos .ovpn de mediante un menú interactivo.

## Qué hace

- Busca automáticamente tus archivos `.ovpn` en un directorio.  
- La primera vez que lo ejecutas te pregunta dónde están los archivos y recuerda la ruta para la próxima.  
- Te muestra un menú para elegir qué VPN conectarte.  

## Requisitos

- OpenVPN  
- `sudo` para ejecutar OpenVPN si tu usuario no tiene permisos suficientes

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
