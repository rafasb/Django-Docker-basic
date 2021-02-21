FROM python:3.9.1

RUN apt-get update \
    # && apt-get install -y --no-install-recommends \
    #     postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /code

COPY ./code/requirements.txt ./
RUN pip install -r requirements.txt

COPY ./code /code

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]