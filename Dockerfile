FROM ollama/ollama:latest

# Exponer el puerto que Render espera
EXPOSE 10000

# Variable de entorno para que Ollama escuche en el puerto correcto
ENV OLLAMA_HOST=0.0.0.0:10000

# Script de inicio que baja el modelo y arranca Ollama
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
