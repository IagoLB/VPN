#!/bin/bash

CONFIG="$HOME/.vpn.conf"

if [ -f "$CONFIG" ]; then
    source "$CONFIG"    
else
    read -rp "Introduce la ruta donde están tus archivos .ovpn: " directorio
    echo "directorio=\"$directorio\"" > "$CONFIG"
fi

archivos=$(ls "$directorio"/*.ovpn 2>/dev/null) 

if [ -z "$archivos" ]; then
    echo "No se encontraron archivos .ovpn en la ruta $directorio"
    exit 1
fi
    
echo "===== Menú VPN ====="
select fichero in $archivos Salir; do
    case "$fichero" in
        Salir)
            echo "Saliendo..."
            break
            ;;
        "")
            echo "Opción inválida"
            ;;
        *)
            echo "Ejecutando OpenVPN con: $(basename "$fichero")"
                        sudo openvpn --config "$fichero" --auth-user-pass "$directorio/auth.txt" 
            break
            ;;
    esac
done
