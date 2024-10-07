FROM node:20-alpine

# Copy the contents from local folder to the root of the container.
COPY package.json .
COPY yarn.lock .

RUN yarn install --frozen-lockfile

COPY . .

CMD ["yarn", "start"]

EXPOSE 3000
