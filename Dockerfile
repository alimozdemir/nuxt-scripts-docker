# syntax=docker/dockerfile:1

ARG NODE_VERSION=20.18.1
ARG PORT=3000

FROM node:${NODE_VERSION}-alpine AS node

ENV PORT=$PORT

COPY / /

RUN npm install -g pm2@latest

RUN npm install -g pnpm

WORKDIR "/"

RUN pnpm install

RUN pnpm build

EXPOSE 80

WORKDIR "/"

CMD pm2-runtime ecosystem.config.cjs