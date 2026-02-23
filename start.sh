#!/bin/bash

# Arrancar Ollama en background
ollama serve &
SERVER_PID=$!

# Esperar a que Ollama esté realmente listo
echo "Esperando que Ollama arranque..."
until curl -s http://localhost:10000/api/tags > /dev/null 2>&1; do
  sleep 2
  echo "Esperando..."
done
echo "Ollama listo!"

# Descargar el modelo
echo "Descargando tinyllama..."
ollama pull tinyllama
echo "Modelo descargado!"

# Mantener el proceso vivo
wait $SERVER_PID
