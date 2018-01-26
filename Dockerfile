# The above tells docker to pick the alpine base image, install Python and pip, and also install our web app. 
# The last line tells docker to launch the web app whenever the container is launched.
#

FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py