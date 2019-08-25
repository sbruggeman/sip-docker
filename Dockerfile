FROM python:2.7-buster

VOLUME /src
COPY ./SIP/* requirements.txt /src/
WORKDIR /src
RUN chmod +x sip.py
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN dpkg -i powerpanel_*_amd64.deb
CMD python sip.py
