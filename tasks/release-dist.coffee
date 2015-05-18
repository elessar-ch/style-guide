gulp = require 'gulp'
$ = require('gulp-load-plugins')({ extensions: [ 'coffee' ] } )

readJSONFile = require '../lib/readJSONFile'

module.exports = [
  [ 'release-dist-generate-bower-json' ],
  ->
    packageJson = readJSONFile './package.json'

    gulp.src [
      './dist/**'
      './README.*'
      'LICENSE.*'
      '!./dist/docs/downloads/**/*'
    ]
    .pipe $.tar './axa-web-style-guide-dist-' + packageJson.version + '.tar'
    .pipe $.gzip()
    .pipe gulp.dest './dist/docs/downloads/'
]

# Copyright AXA Versicherungen AG 2015
