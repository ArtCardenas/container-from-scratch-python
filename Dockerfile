# Inherit from python
FROM python:3.7.3-stretch

# Create a Working Directory inside a container
WORKDIR /app

# Copy source code application python (app.py) file to working directory
COPY . app.py /app/

# Install 3rd part packages and packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
