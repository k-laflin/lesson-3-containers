FROM python:3.7.3-stretch

WORKDIR /app 

COPY . flask_app/web.py /app/

#install packages from requirements.txt
RUN pip install --upgrade pip &&/
    pip install --trusted-host pypi.python.org -r requirements.txt 
    
# expose port 80
EXPOSE 80

#run app at container launch
CMD ["python", "web.py"]