FROM python:stretch

COPY . /APP
WORKDIR /APP

RUN pip3 install --upgrade pip 
RUN pip3 install pyjwt 
RUN pip3 install flask 
RUN pip3 install gunicorn 
RUN pip3 install pytest 


#ENTRYPOINT ["python", "gunicorn -b :8080 main:APP"]
ENTRYPOINT ["gunicorn", "-b",  ":8080", "main:APP"]