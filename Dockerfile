
FROM python:3.12.1

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt


COPY . .

EXPOSE 8000
CMD ["sh", "-c", "python mysite/manage.py makemigrations &&  python mysite/manage.py migrate && python mysite/manage.py runserver 0.0.0.0:8000"]