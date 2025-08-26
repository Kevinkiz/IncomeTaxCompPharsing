# Use official Python slim image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install required packages
RUN pip install --no-cache-dir flask

# Create uploads folder inside the container
RUN mkdir -p /app/uploads

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
