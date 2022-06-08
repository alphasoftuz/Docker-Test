FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
COPY ./entrypoint.sh /
ENTRYPOINT [ "sh","/entrypoint.sh" ]

# RUN chmod a+rx /code/entrypoint.sh
# RUN ["chmod", "+x", "/code/entrypoint.sh"]
EXPOSE 8000
# CMD ["python", "manage.py", "migrate"]
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
