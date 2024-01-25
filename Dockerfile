FROM python:3.10

WORKDIR /src

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

COPY . .

RUN pip install -r ./analytics/requirements.txt

ENTRYPOINT [ "python",  "./analytics/app.py"]