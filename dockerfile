
FROM python:3.11-slim-buster

WORKDIR /app

COPY req.txt req.txt

RUN pip install -r req.txt

COPY app.py .

ENV FLASK_APP=app

EXPOSE 8000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]
