# Use an official Python runtime as a parent image
FROM python:3.10

# Copy the current directory contents into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Train the model during the build
RUN python train.py

# Run test.py when the container launches
CMD ["python", "test.py"]
