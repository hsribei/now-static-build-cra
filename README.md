This project was bootstrapped with [Create React App](https://github.com/facebookincubator/create-react-app).

It demonstrates deployment with Now as a [static deployment built from
a Dockerfile](https://zeit.co/blog/dockerfile-static).

To create this project, we first ran:

```
npx create-react-app cra
```

Inside the `cra` directory, we added three files:
- [`now.json`](https://github.com/zeit/now-static-build-cra/blob/master/now.json) to indicate that the deployment type is `static`
- [`Dockerfile`](https://github.com/zeit/now-static-build-cra/blob/master/Dockerfile) to build using Node.js and runnning `yarn build` as instructed by CRA
- [`.dockerignore`](https://github.com/zeit/now-static-build-cra/blob/master/.dockerignore) to make sure only the sources are given to Docker, and not artifacts like `node_modules`
