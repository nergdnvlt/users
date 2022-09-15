FROM node:18-alpine As build
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM node:18-alpine 
WORKDIR /app
COPY package.json .
COPY users.graphql .
RUN npm install --only=production
COPY --from=build /app/dist ./dist
CMD npm run start:prod

