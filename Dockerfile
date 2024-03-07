FROM gcc:latest

RUN apt-get update && \
    apt-get install -y vim nano build-essential gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /root

COPY * .

CMD ["bash", "-c", "chmod +x ./clone.sh && /bin/bash"]
