# Getting Started with React & Docker

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In addition to the normal CRA scripts, the following docker scripts have been added:

### `yarn test:ci`

Runs unit tests in a container for use in CI/CD pipeline.

### `yarn prod`

Builds the production app and deploys it behind nginx on port 80.

### `yarn dev`

Runs the dev environment, including hot-reloading, inside a container.

#### Note

It is super annoying how adding a command in package.json busts the cache on the build and forces all Dockerfiles to build from scratch. It would be nice if we could just grab the dependency section.
