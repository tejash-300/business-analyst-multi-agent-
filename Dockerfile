# Base Python image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install system dependencies (e.g., GCC for packages like numpy, pandas)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy all project files into container
COPY . /app

# Upgrade pip
RUN pip install --upgrade pip

# Install required Python libraries
RUN pip install \
    fastapi \
    uvicorn \
    pandas \
    openai \
    langchain \
    python-dotenv \
    pydantic \
    requests \
    aiohttp \
    ipykernel \
    jupyterlab \
    rich

# Expose FastAPI default port
EXPOSE 8000

# Set default command to run FastAPI app
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8000"]
