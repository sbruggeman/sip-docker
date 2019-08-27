FROM python:2.7-buster

# VOLUME /home
WORKDIR /home/pi/SIP
RUN mkdir -p /home/pi/SIP
RUN cd /home/pi && git clone https://github.com/Dan-in-CA/SIP.git 
RUN chmod +x /home/pi/SIP/sip.sh
EXPOSE 80
ENTRYPOINT ["python", "/home/pi/SIP/sip.py"]