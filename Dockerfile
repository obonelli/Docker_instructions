#Getting the base image
From node:18

#Copy the code to the Docker path
RUN mkdir -p /home/miapp

#Getting the code
COPY . /home/obonelli/miapp

#Maping the port
EXPOSE 3000

#Docker start commands 
CMD [ "node", "/home/obonelli/miapp/index.js"]