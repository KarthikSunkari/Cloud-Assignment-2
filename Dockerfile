# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

ENV PORT=8000
ENV MONGO_PORT=27017
ENV MONGO_HOST="mongo"

# Define the command to run the application
CMD ["python", "app.py"]