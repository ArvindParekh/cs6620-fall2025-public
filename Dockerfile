FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# app listens on 3000 btw, not 5000 ;)
EXPOSE 3000
CMD [ "python", "app.py" ]
