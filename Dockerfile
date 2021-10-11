FROM bitwalker/alpine-elixir-phoenix:latest

# set build ENV
ENV MIX_ENV=prod
ENV APP_HOME /app
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
    && mix compile \
    && MIX_ENV=prod mix phx.digest.clean \
	&& MIX_ENV=prod mix phx.digest

EXPOSE 4000

CMD ["mix", "phx.server"]