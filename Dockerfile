FROM python:3.8-slim-buster

RUN pip install --upgrade pip

ENV venv=/Tarea-DevOps

RUN mkdir $venv

WORKDIR $venv 

#ADD requirements.txt $venv/
COPY requirements.txt $venv/

RUN pip install -r requirements.txt

COPY . $venv/ 

EXPOSE 3000
#RUN python manage.py migrate

#CMD ["python3", "manage.py", "runserver"]
#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["python3", "manage.py", "runserver", "0:3005"]
#CMD ["python3", "manage.py", "runserver", "--host", "0.0.0.0", "--port", "8000"]
#CMD ["/bin/bash"]

#EXPOSE 8080
#CMD ["python3","-m","uvicorn", "manage.py", "--host", "0.0.0.0", "--port", "8080"]