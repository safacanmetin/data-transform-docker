# Python 3.9 based image
FROM python:3.9

# Define working path
WORKDIR /app

# copy necessary files
COPY requirements.txt .
COPY transform.py .
COPY input.csv .

# install dependencies
RUN pip install -r requirements.txt

# run the command / start the script
CMD ["python", "transform.py"]
