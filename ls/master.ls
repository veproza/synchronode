require! child_process.exec
time = Date.now!
timeout = 3000 - time % 1000
expectedTime = time + timeout
expectedTime *= 1000
console.log "#expectedTime expected"
ports = [8081 8082]
ports.forEach (port) ->
    (err, stdout, stderr) <~ exec "node queryer.js -p #port -t #expectedTime"
    time = parseInt stdout
    diff = expectedTime - time
    console.log diff
