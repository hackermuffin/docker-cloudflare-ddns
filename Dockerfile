FROM python:3.12-alpine

# Do required python setup
COPY update-ddns.py /
COPY requirements.txt /
RUN pip install -r /requirements.txt

# Set up cron job
COPY crontab /crontab
RUN crontab crontab

# Run cron with a high enough logging level to capture python output
ENTRYPOINT ["/usr/sbin/crond", "-f", "-l", "2"]