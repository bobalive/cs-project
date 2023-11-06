FROM python:3.12
COPY . .
RUN apt-get update && apt-get install -y libgl1-mesa-glx
RUN pip3 install -r requirements.txt
CMD python face.py