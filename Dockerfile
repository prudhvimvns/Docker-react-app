# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Install nodemon globally
RUN npm install -g nodemon

# Copy all the React app files to the container
COPY . .

# Build the React app for production
RUN npm run build

# Specify the command to run the production build
CMD ["npm", "start"]




#FOR BACKEND DOCKERFILE -(PRUDHVI-FASTAPI-DOC)

# FROM python:3.11 as base

# RUN apt-get -y update \
# 	&& apt-get install -y \
#         ca-certificates \
#         openssh-client\
#         curl

# WORKDIR /app

# COPY main.py .
# COPY requirements.txt .

# RUN pip install --no-cache-dir -r /app/requirements.txt
# FROM base

# CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]



