FROM ollama/ollama:latest

EXPOSE 10000
ENV OLLAMA_HOST=0.0.0.0:10000

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
