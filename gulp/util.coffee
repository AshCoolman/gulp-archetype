module.exports = (modules) ->
    { gulp, gutil } = modules

    {
        if_ext: (ext) =>
            (file) ->
                return file.path.indexOf("." + ext) > -1

        if_arg: (name) =>
            () ->
                return gutil.env?[name]?
    }