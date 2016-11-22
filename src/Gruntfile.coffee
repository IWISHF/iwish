'use strict';

module.exports = (grunt) ->

  WEB_ROOT = 'frontend/web/'
  WEBAPP_ROOT = 'webapp/web/'

  configData =
    webRoot: WEB_ROOT

   require('load-grunt-config') grunt,
    configPath: require('path').join(process.cwd(), 'build', 'grunt'),
    staticMappings: {}
    data: globalConfig
    loadGruntTasks:
      pattern: ['grunt-*', 'git-changelog']

  require('time-grunt')(grunt)


