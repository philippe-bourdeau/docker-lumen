FROM node:10.9-slim

RUN apt-get -y update \
	&& apt-get install -y git

RUN yarn global add @vue/cli -g

RUN apt-get autoremove -y \
    && apt-get autoclean -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

CMD ["node"]
