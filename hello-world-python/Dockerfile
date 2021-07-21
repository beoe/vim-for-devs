# Datei: hello-world-python/Dockerfile (docbuc/hello-world-python)
FROM python:3
ENV TZ="Europe/Amsterdam"
COPY server.py /src/
EXPOSE 8080
USER www-data
CMD ["python", "/src/server.py"]
