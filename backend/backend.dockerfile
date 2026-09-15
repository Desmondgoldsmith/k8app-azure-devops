
FROM python:3.11-slim


WORKDIR /app/

# Install dependencies
COPY ./app/requirements.txt /app/
# RUN bash -c "ls"
RUN bash -c "pip install -r ./requirements.txt"

EXPOSE 80

COPY ./app /app
ENV PYTHONPATH=/app

CMD ["bash", "-c", "bash /app/prestart.sh && exec uvicorn app.main:app --host 0.0.0.0 --port 80"]
