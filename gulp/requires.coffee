module.exports =
    # Tools
    coffee           : require "gulp-coffee"
    coffeelint       : require "gulp-coffeelint"
    gulp             : require "gulp"
    gutil            : require "gutil"

    main_bower_files : require "main-bower-files"
    check_if         : require "gulp-if"

    # Angular
    ng_annotate      : require "gulp-ng-annotate"
    ng_html          : require "gulp-ng-html2js"

    # Manip
    concat           : require "gulp-concat"
    rename           : require "gulp-rename"

    # Compile
    jade             : require "gulp-jade"
    less             : require "gulp-less"
    stylus           : require "gulp-stylus"

    # Transform
    cssmin           : require "gulp-cssmin"
    htmlmin          : require "gulp-htmlmin"
    uglify           : require "gulp-uglify"

    # Output
    gzip             : require "gulp-gzip"

    # Test
    connect          : require "gulp-connect"