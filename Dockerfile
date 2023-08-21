FROM python:3.10

WORKDIR /library

COPY requirement.txt ./
RUN pip install --no-cache-dir -r requirement.txt

COPY ./src ./src

CMD [ "python3","./src/my_linear_regression.py" ]
