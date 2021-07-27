# init a base image (Alpine is small Linux distro)
FROM alpine:3.14
# define the present working directory
WORKDIR /flask_blog/src
# copy the contents into the working dir
ADD . /flask_blog/src
# run pip to install the dependencies of the flask app
RUN apk add --no-cache python3 py3-pip
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN . /opt/venv/bin/activate
RUN pip install -r requirements.txt
# define the command to start the container
EXPOSE 5000
CMD ["python3","app.py"]