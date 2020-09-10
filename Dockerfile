FROM elixir:1.10.0

RUN mix local.hex --force \
    && mix archive.install --force hex phx_new 1.4.10 \
    && apt-get update \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y apt-utils \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential \
    && apt-get install -y inotify-tools \
    && mix local.rebar --force 

# set build ENV
ENV MIX_ENV=prod
ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# install mix dependencies
COPY mix.exs mix.lock ./
COPY config config
RUN mix deps.get && mix deps.compile

# build assets
COPY package.json package.json ./
COPY brunch-config.js brunch-config.js ./
COPY tailwind.config.js tailwind.config.js ./
COPY static static 
COPY lib lib

RUN npm install \
    && npm install -g @apidevtools/swagger-cli

# generate api json from yaml
RUN swagger-cli bundle \
    -o static/docs/api/openapi.json \ 
    -t json \
    -r \
    lib/openapi/openapi.yaml 

RUN npm run prod \
    && mix phx.digest \
    && mix compile

EXPOSE 4000

CMD ["mix", "phx.server"]
