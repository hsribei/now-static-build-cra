FROM mhart/alpine-node:10
WORKDIR /usr/src
COPY yarn.lock package.json ./
RUN yarn
COPY . .
# This should output `PRINT_ME=please` among the environment variables
ARG PRINT_ME
RUN env
RUN yarn build && mv build /public
