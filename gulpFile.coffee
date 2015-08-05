config = require './gulp/config'
util = require('./gulp/util')(config.modules)
{ gulp, gutil } = config.modules


taskFunc =
    css: require("./gulp/task/css") config, util
    js: require("./gulp/task/js") config, util


gulp.task "css", [], taskFunc.css "style.min.css"
gulp.task "js", [], taskFunc.js "app.min.js"