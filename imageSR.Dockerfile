FROM pytorch/pytorch

RUN apt-get -y update
RUN pip install numpy matplotlib librosa opencv-contrib-python
RUN apt-get -y install libgl1-mesa-glx
RUN apt-get -y install libglib2.0-0
RUN apt-get -y install git

WORKDIR /
RUN git clone -b main --single-branch --depth 1 https://github.com/GCU-Graduate-Project-Sharpic/ImageSR.git