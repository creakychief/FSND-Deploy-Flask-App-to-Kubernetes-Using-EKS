FROM python:stretch

COPY . /APP
WORKDIR /APP

RUN pip install --upgrade pip 
RUN pip install pyjwt 
RUN pip install flask 
RUN pip install gunicorn 
RUN pip install pytest 


#ENTRYPOINT ["python", "gunicorn -b :8080 main:APP"]
ENTRYPOINT ["gunicorn", "-b",  ":8080", "main:APP"]
