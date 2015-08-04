cson = require "cson"

module.exports =
    modules    : require './requires'
    gulpConfig : require('../package.json').gulpConfig
    files      : cson.requireFile './gulp/files.cson'
