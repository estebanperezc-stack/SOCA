#!/bin/bash

# Comprobar si pusiste un mensaje para el commit
if [ -z "$1" ]
then
    echo "❌ Error: Debes escribir un mensaje para el commit."
    echo "Ejemplo: ./subir.sh 'mi mensaje de cambio'"
    exit 1
fi

# Guardar el mensaje en una variable
MENSAJE="$1"

echo "📦 1. Añadiendo cambios..."
git add .

echo "📝 2. Creando commit..."
git commit -m "$MENSAJE"

echo "🚀 3. Subiendo a GitHub..."
git push origin main

echo "✅ ¡Todo listo y subido a GitHub!"
