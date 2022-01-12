FROM python:3.8-slim-buster

RUN pip install --upgrade pip

ENV venv=/Tarea-DevOps

RUN mkdir $venv

WORKDIR $venv 

COPY requirements.txt $venv/

RUN pip install -r requirements.txt

COPY . $venv/ 

EXPOSE 3000

#RUN python manage.py migrate

#CMD ["python3", "manage.py", "runserver", "0:3005"]
