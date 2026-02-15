# Use an official Python runtime
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (If you don't have a requirements.txt, we will install django manually for now)
RUN pip install --upgrade pip
RUN pip install django

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
