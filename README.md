# angular-seed + Gulp + Coffeescript

This project is based on the official [Angular Seed](angular_seed) repo and can be used as an application skeleton for a typical [AngularJS](http://angularjs.org/) web app.

The main difference is the addition of [Gulp](gulp) to run compiling tasks and support for [Coffeescript](coffeescript) as development language.

The seed contains a sample AngularJS application and is preconfigured to install the Angular
framework and a bunch of development and testing tools for instant web development gratification.

## Getting Started

To get you started you can simply clone the angular-seed-coffee-gulp repository and install the dependencies:

### Install Dependencies

```
npm install
```

Behind the scenes this will also call `bower install`.  You should find that you have two new
folders in your project.

* `node_modules` - contains the npm packages for the tools we need
* `app/bower_components` - contains the angular framework files

*Note that the `bower_components` folder would normally be installed in the root folder but
angular-seed changes this location through the `.bowerrc` file.  Putting it in the app folder makes
it easier to serve the files by a webserver.*

### Run the Application

We have preconfigured the project with a simple development web server.  The simplest way to start
this server is:

```
gulp serve
```

Now browse to the app at [`http://localhost:8000`]().
`gulp serve` also runs a `watch` tasks in order to track changes in the app files and re-compile the app on the fly.

## Builds (Gulp)

We are using [Gulp](gulp) to run the needed tasks to compile our Coffeescript files.

### Build App for development

Files aren't compressed/uglyfied and sourcemap's are generated in order to simplify debugging tasks.

```
gulp build:local
```

Compiled files can be found in: `builds/local/`

## Build App for production

All files are uglyfied and gzipped. Furthermore, a timestamp is added to each resource in order to invalidate client-side caching:

```
gulp build:production
```

Compiled files can be found in: `builds/production/`

## Directory Layout

```
app/
  src/                  --> all of the source files for the application
    components/           --> all app specific modules
    view1/                --> the view1 view template and logic
      view1.html                --> the partial template
      view1.coffee              --> the controller logic
      view1.spec.coffee         --> tests of the controller
    view2/                --> the view2 view template and logic
    app.coffee            --> main application module
    app.css               --> default/global stylesheet settings
  index.template.html     --> app layout file (the main html template file of the app)
  index-async.html        --> just like index.html, but loads js files asynchronously
  robots.template.txt     --> robots.txt template
builds/                 --> folder with all builds
  local/                  --> local environment build
  production/             --> production environment build (compressed, uglyfied, etc)
e2e-tests/              --> end-to-end tests
  protractor.conf.js      --> Protractor config file
  scenarios.coffee        --> end-to-end scenarios to be run by Protractor
gulp-tasks/             --> different gulp tasks
gulp.config.coffee      --> gulp settings (paths, destination folder, etc.)
gulpfile.coffee         --> main gulp file
karma.conf.coffee       --> config file for running unit tests with Karma
```

## Testing

There are two kinds of tests: Unit tests and End to End tests.

### Running Unit Tests

These are written in [Jasmine][jasmine], which we run with the [Karma Test Runner][karma]. We provide a Karma configuration file to run them.

* the configuration is found at `karma.conf.coffee`
* the unit tests are found next to the code they are testing and are named as `....spec.coffee`.

The easiest way to run the unit tests is to use the supplied npm script:

```
npm run test:unit:watch
```

This script will start the Karma test runner to execute the unit tests. Moreover, Karma will sit and
watch the source and test files for changes and then re-run the tests whenever any of them change.
This is the recommended strategy; if your unit tests are being run every time you save a file then
you receive instant feedback on any changes that break the expected code functionality.

You can also ask Karma to do a single run of the tests and then exit.  This is useful if you want to
check that a particular version of the code is operating as expected.  The project contains a
predefined script to do this:

```
npm run test:unit
```


### End to end testing

These tests are run with the [Protractor][protractor] End-to-End test runner.  It uses native events and has special features for Angular applications.

* the configuration is found at `e2e-tests/protractor.conf.js`
* the end-to-end tests are found in `e2e-tests/scenarios.e2e.coffee`

Protractor simulates interaction with our web app and verifies that the application responds
correctly. Therefore, our web server needs to be serving up the application, so that Protractor
can interact with it.

```
npm run test:e2e
```

## Continuous Integration

### Travis CI

[Travis CI][travis] is a continuous integration service, which can monitor GitHub for new commits
to your repository and execute scripts such as building the app or running tests. The angular-seed
project contains a Travis configuration file, `.travis.yml`, which will cause Travis to run your
tests when you push to GitHub.

You will need to enable the integration between Travis and GitHub. See the Travis website for more
instruction on how to do this.

### CloudBees

CloudBees have provided a CI/deployment setup:

<a href="https://grandcentral.cloudbees.com/?CB_clickstart=https://raw.github.com/CloudBees-community/angular-js-clickstart/master/clickstart.json">
<img src="https://d3ko533tu1ozfq.cloudfront.net/clickstart/deployInstantly.png"/></a>

If you run this, you will get a cloned version of this repo to start working on in a private git repo,
along with a CI service (in Jenkins) hosted that will run unit and end to end tests in both Firefox and Chrome.


[git]: http://git-scm.com/
[bower]: http://bower.io
[npm]: https://www.npmjs.org/
[node]: http://nodejs.org
[protractor]: https://github.com/angular/protractor
[jasmine]: http://jasmine.github.io
[karma]: http://karma-runner.github.io
[travis]: https://travis-ci.org/
[http-server]: https://github.com/nodeapps/http-server
[angular_seed]: https://github.com/angular/angular-seed
[gulp]: http://gulpjs.com/
[coffeescript]: http://coffeescript.org/
