FROM python:3-slim

LABEL author="KC Flynn"

WORKDIR /app

COPY *.py requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt && useradd scale && chown -R scale /app

USER scale

ENTRYPOINT ["python", "AutoScaleALL.py"]
