gulp = require 'gulp'
$ = require('gulp-load-plugins')()

module.exports = (cb) ->
  $.git.addRemote(
    'deploy',
    if process.env.REPO_URL then process.env.REPO_URL else config.repository.url,
    { cwd: './out' } ,
    cb
  )

# Copyright AXA Versicherungen AG 2015
