exports.config = {
  allScriptsTimeout: 11000,

  specs: [
    '*.js'
  ],

  capabilities: {
    // browserName: 'internet explorer', - special installation needed
    browserName: 'chrome',
    shardTestFiles: true,
    maxInstances: 4
  },

  compilers: 'coffee:coffee-script/register',

  baseUrl: 'http://localhost:8000/',

  // Spec patterns are relative to the current working directly when protractor is called.
  specs: [
    './**/*.e2e.coffee'
  ],

  onPrepare: function() {
    browser.driver.manage().window().maximize();
    global.By = global.by;
  },

  framework: 'jasmine',

  // Options to be passed to Jasmine-node.
  jasmineNodeOpts: {
    showColors: true,
    defaultTimeoutInterval: 30000
  }
};
