FROM python:3
ADD _main_.py .
#RUN apk add --no-cache gcc musl-dev linux-headers
RUN apt-get install -y python python-setuptools python-pip
#COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install bottle
RUN pip install _version
COPY . .
CMD [ "python", "./_main_.py" ]
#docker build -t api-bracelet .
#docker run api-bracelet
