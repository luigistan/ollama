#!/bin/bash
# Arrancar Ollama en background
o

llama serve &

# Esperar a que Ollama este listo
sleep 5

# Descargar el modelo (tinyllama es el mas liviano ~700MB)
ollama pull tinyllama

# Mantener el proceso vivo
wait
