module.exports = ( config, util ) ->
    ( fileName ) =>
        ->
            { modules, gulpConfig, files } = config
            { coffee, coffeelint, gulp, main_bower_files, check_if, ng_annotate, ng_html, concat, rename, jade, less, stylus, cssmin, htmlmin, uglify, gzip, connect } = modules
            { build_dir } = gulpConfig
            { if_ext, if_arg } = util
            

            gulp.src files.js.src
                # Concat and minify in release mode
                .pipe check_if if_ext('coffee'), coffee { bare: true }
                .pipe concat fileName
                .pipe check_if if_arg('release'), uglify mangle: false
                .pipe gulp.dest build_dir + "/js/"