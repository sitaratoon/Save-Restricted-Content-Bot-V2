FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
        git \
        curl \
        wget \
        bash \
        neofetch \
        ffmpeg \
        python3-pip \
        software-properties-common && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip wheel && \
    pip install --no-cache-dir -r requirements.txt

# Copy rest of the project
COPY . .

# Expose port
EXPOSE 8000

# Start the app
CMD flask run -h 0.0.0.0 -p 8000 & python3 -m devgagan
