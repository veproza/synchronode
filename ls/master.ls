require! child_process.exec
require! async
<~ async.timesSeries 200, (i, cb) ->
    time = Date.now!
    timeout = 1000 - time % 1000
    expectedTime = time + timeout
    expectedTime *= 1000
    ports = [8081 8082]
    (err, diffs) <~ async.map ports, (port, cb) ->
        (err, stdout, stderr) <~ exec "node queryer.js -p #port -t #expectedTime"
        time = parseInt stdout
        diff = time - expectedTime
        cb null, diff
    console.log "#i\t#{diffs[0]}\t#{diffs[1]}\t#expectedTime"
    cb!
