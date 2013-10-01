require! child_process.exec
require! async
<~ async.timesSeries 200, (i, cb) ->
    time = Date.now!
    timeout = 1000 - time % 1000
    expectedTime = time + timeout
    expectedTime *= 1000
    ports = ["/tmp/test1.sock" "/tmp/test2.sock"]
    (err, diffs) <~ async.map ports, (port, cb) ->
        (err, stdout, stderr) <~ exec "nodejs queryer.js -p #port -t #expectedTime"
        time = parseInt stdout
        diff = time - expectedTime
        cb null, diff
    console.log "#i\t#{diffs.join '\t'}\t#expectedTime"
    cb!
