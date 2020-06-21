FROM python:latest

WORKDIR /chatbot

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD [ "python", "app.py" ]

