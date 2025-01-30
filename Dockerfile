FROM python:3.9

WORKDIR /app

# Install pip first and upgrade it
RUN pip install --upgrade pip

# Copy and install dependencies with a higher timeout
COPY requirements.txt /app/
RUN pip install --default-timeout=600 --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . /app/

# Run your Python script
CMD ["python", "dl_lab_exam_(shivangi_aggarwal).py"]
