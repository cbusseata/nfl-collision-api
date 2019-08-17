FROM lambci/lambda:build-nodejs10.x

WORKDIR /tmp/install_dir
ADD package.json package.json
ADD package-lock.json package-lock.json
RUN npm install -g serverless && \
    npm install

COPY . .

WORKDIR /var/task

CMD cp -r /tmp/install_dir/node_modules /var/task/ && \
    serverless offline start --host=0.0.0.0 --stage local
