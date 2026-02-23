FROM ollama/ollama

ENV OLLAMA_HOST=0.0.0.0:10000
EXPOSE 10000

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT []
CMD ["/bin/bash", "/start.sh"]
