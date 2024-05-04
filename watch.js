//2024-05-04 copyright (c) falsefox.dev
const compiler = require("./build")


var chokidar = require('chokidar');

var watcher = chokidar.watch('./pages');

watcher
    .on('change', function (path) {
        console.log('File', path, 'has been changed');
        compiler.compile(path)
})