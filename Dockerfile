FROM public.ecr.aws/docker/library/python:3.10-alpine

WORKDIR /analytics

COPY /analytics/ /analytics

RUN pip install --no-cache-dir -r /analytics/requirements.txt

EXPOSE 5000

ENV DB_USERNAME myuser
ENV DB_PASSWORD mypassword

CMD ["python", "analytics/app.py"]
CMD python app.py
