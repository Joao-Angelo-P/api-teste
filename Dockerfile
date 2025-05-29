FROM python:alpine

WORKDIR /app

COPY app.py .
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# em Django apps expose -> 8000 and Nuxt -> 3000
# flask -> 5000
EXPOSE 5000

CMD ["flask", "run"]
