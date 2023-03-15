FROM animcogn/face_recognition:gpu
#RUN MKDIR app

RUN pip3 install --upgrade pip

#cmd while true; do sleep 2s; sleep 2s; done
RUN pip3 install cmake
RUN pip3 install --upgrade Pillow
RUN pip3 install face_recognition
RUN pip3 install imageio imageio-ffmpeg opencv-python
RUN pip3 install pandas numpy tqdm
RUN apt-get update -y; exit 0
RUN apt-get install ffmpeg libsm6 libxext6  -y


WORKDIR /app
COPY data ./data
COPY facial_security_app ./facial_security_app
# # #RUN pip3 install face_recognition
CMD python facial_security_app/run_app.py