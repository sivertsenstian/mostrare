# my elm-base

A simple Webpack setup for writing [Elm](http://elm-lang.org/) SPAs:

Heavly based on (stolen) from the excellent starter-pack: 
 https://github.com/moarwick/elm-webpack-starter  

* Added basic routing / SPA scaffolding
* Added Bootstrap 4 and ionic-icons

### Install:
Clone this repo into a new project folder, e.g. `my-elm-project`, and install its dependencies:
```
git clone https://github.com/sivertsenstian/elm-base my-elm-project
cd my-elm-project
npm install
```

Re-initialize the project folder as your own repo:
```
rm -rf .git
git init
git add .
git commit -m 'first commit'
```

If you haven't done so yet, install Elm globally:
```
npm install -g elm
```

Install Elm's dependencies:
```
elm package install
```

### Serve locally:
```
npm start
```
* Access app at `http://localhost:8080/`
* Get coding! The entry point file is `src/elm/Main.elm`
* Browser will refresh automatically on any file changes..

### Build & bundle for prod:
```
npm run build
```
* Files are saved into the `/dist` folder
* To check it, open `dist/index.html`