FROM gcc:latest

RUN apt-get update && \
    apt-get install -y gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY * .

CMD ["bash", "-c", "chmod +x ./clone.sh && /bin/bash"]
