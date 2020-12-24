FROM python:3.7
USER root
LABEL maintainer="alexandergerber@web.de"
WORKDIR /
ADD src/ /
RUN  pip install --trusted-host pypi.python.org -r requirements.txt
ENV NAME World
CMD python main.py
EXPOSE 8050