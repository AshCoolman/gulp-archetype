module.exports = ( config, util ) ->
    ( fileName ) =>
        ->
            { modules, gulpConfig, files } = config
            { coffee, coffeelint, gulp, main_bower_files, check_if, ng_annotate, ng_html, concat, rename, jade, less, stylus, cssmin, htmlmin, uglify, gzip, connect } = modules
            { build_dir } = gulpConfig
            { if_ext, if_arg } = util
            

            gulp.src files.css.src
                .pipe check_if if_ext('less'), less()
                .pipe check_if if_ext('styl'), stylus()
                .pipe concat fileName
                .pipe check_if if_arg('release'), cssmin() 
                .pipe gulp.dest build_dir + "/css/"
