FROM node:13

MAINTAINER luffy.ja@gmail.com

ENV TZ="Asia/Shanghai" HOME="/yapi"
ENV LANG="C.UTF-8" LANGUAGE="C.UTF-8" LC_ALL="C.UTF-8"

RUN mkdir ${HOME}
WORKDIR ${HOME}

RUN npm install -g yapi-cli pm2 --registry https://registry.npm.taobao.org

RUN npm install -g ykit --registry https://registry.npm.taobao.org

RUN sed -i -e "s@9090@3000@g" /usr/local/lib/node_modules/yapi-cli/src/commands/server.js

COPY startup.sh /startup.sh

EXPOSE 3000

# ENTRYPOINT [ "bash" ]
# ENTRYPOINT ["node"]
CMD ["bash","/startup.sh"]