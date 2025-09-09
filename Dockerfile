# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY app/ app/

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app/app.py"]
