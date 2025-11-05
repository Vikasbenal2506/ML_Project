# Use official Python 3.8 image
FROM python:3.8-slim

# Set working directory inside container
WORKDIR /app

# Copy all project files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 7860 (used by Hugging Face Spaces)
EXPOSE 7860

# Run your Flask app
CMD ["python", "app.py"]