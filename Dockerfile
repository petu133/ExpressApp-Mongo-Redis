#Defining steps (layers) of the custom image

FROM node:15
#Default directory of the container
WORKDIR /application
#Copy package.json to the current level directory (/application)
COPY package.json .
#Build the image
RUN npm install
# Copy all the files || to /application ( . or ./ is the same)
COPY . ./
#Listen to port 
EXPOSE 3000
#Running the image. Run specific commands
CMD ["node", "index.js"]

