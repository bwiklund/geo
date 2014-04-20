module.exports = (config) ->
  config.set
    
    basePath: "./"
    
    frameworks: ["jasmine"]

    preprocessors:
      "assets/js/**/*.coffee": ["coffee"]
      "spec/**/*.coffee": ["coffee"]

    files: [
      "build/vendor.js"
      "static/vendor/angular-mocks.js"
      "spec/**/*.coffee"
      "assets/js/**/*.coffee"
    ]
    
    exclude: []
    
    reporters: ["progress","coverage"]

    coverageReporter:
      type: 'html'
      dir: 'coverage'
    
    port: 9876
    
    colors: true
    
    logLevel: config.LOG_ERROR
    
    autoWatch: true
    
    browsers: ["PhantomJS"]
    
    captureTimeout: 60000
    
    singleRun: false


