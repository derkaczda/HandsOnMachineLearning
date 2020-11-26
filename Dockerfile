FROM nvidia/opengl:1.2-glvnd-devel-ubuntu18.04
RUN apt-get update
RUN apt-get install -y python3 && apt-get install -y python3-pip
RUN pip3 install gym && pip3 install notebook
RUN pip3 install tensorflow && pip3 install tensorflow-gpu
RUN pip3 install PyOpenGL PyOpenGL_accelerate
RUN apt-get install -y freeglut3-dev
RUN mkdir /src
WORKDIR /src 
ENTRYPOINT jupyter notebook --allow-root --ip 0.0.0.0
