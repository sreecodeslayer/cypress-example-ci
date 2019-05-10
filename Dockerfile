FROM cypress/included:3.2.0

RUN mkdir -p cypress-tests/src
WORKDIR cypress-tests

ADD ./src ./src
ADD ./package.json .

# this project is configure to have cypress dump the screenshot and videos inside docker volume: "assets"
VOLUME ["./assets"]
RUN yarn && yarn run cy:run --project ./src
