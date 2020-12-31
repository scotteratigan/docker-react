FROM node:14.15.3-alpine3.10

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn --frozen-lockfile --production && yarn cache clean

COPY ./ ./
RUN yarn build

FROM nginx
# Copy the build to the nginx image:
COPY --from=0 /app/build /usr/share/nginx/html
