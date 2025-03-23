FROM node:alpine

RUN npm install -g bibtex-tidy

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
