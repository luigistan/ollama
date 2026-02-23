#!/bin/bash

echo "Iniciando servidor Ollama..."
ollama serve &
SERVER_PID=$!

echo "Esperando que Ollama esté listo..."
until curl -s http://localhost:10000/api/tags > /dev/null 2>&1; do
  echo "Ollama aún no responde, reintentando en 2 segundos..."
  sleep 2
done

echo "Ollama está listo. Descargando modelo tinyllama..."
ollama pull tinyllama

echo "Modelo descargado. Servidor corriendo en puerto 10000."
wait $SERVER_PID
