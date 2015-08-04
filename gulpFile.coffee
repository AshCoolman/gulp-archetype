config = require './gulp/config'
util = require('./gulp/util')(config.modules)
{ gulp, gutil } = config.modules


taskFunc =
    css: require("./gulp/task/css") config, util


gulp.task "css", [], taskFunc.css "style.min.css"
