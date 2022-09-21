FROM node:18-alpine AS build

WORKDIR /
COPY ./Frontend ./Frontend
WORKDIR /Frontend
RUN npm install
RUN npm run build

FROM golang:1.18.3-alpine

WORKDIR /
COPY ./Backend ./Backend
WORKDIR /Backend
RUN go mod download

COPY --from=build /Frontend/build /Frontend

RUN go build -o /run-server

EXPOSE 8005

CMD [ "/run-server" ]
