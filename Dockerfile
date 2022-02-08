FROM bgmaliy/wabrend:latest

RUN git clone https://github.com/cu3131/duzenle-burayi /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
