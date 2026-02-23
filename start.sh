#!/bin/bash
# Arrancar Ollama
ollama serve &
SERVER_PID=$!

# Esperar a que el servidor esté listo
for i in $(seq 1 30); do
  curl -s http://localhost:10000/api/tags > /dev/null 2>&1 && break
  sleep 2
done

# Descargar modelo
ollama pull tinyllama

# Mantener vivo
wait $SERVER_PID
