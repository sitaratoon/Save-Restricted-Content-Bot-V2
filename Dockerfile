FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies (without neofetch and software-properties-common)
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        wget \
        bash \
        ffmpeg \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip wheel && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD flask run -h 0.0.0.0 -p 8000 & python3 -m devgagan
