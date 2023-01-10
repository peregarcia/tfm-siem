FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY ./django_demo /code
RUN chmod 775 /code/run.sh
RUN chmod +x /code/run.sh

#ENTRYPOINT [ "/code/run.sh" ]