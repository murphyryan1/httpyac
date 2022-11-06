FROM node:16
ENV NODE_ENV=production
COPY bin /httpyac/bin
COPY dist /httpyac/dist
WORKDIR data
USER node
ENTRYPOINT [ "node", "/httpyac/bin/httpyac.js" ]