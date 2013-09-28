require! child_process.exec
time = Date.now!
timeout = 3000 - time % 1000
expectedTime = time + timeout
console.log "#expectedTime expected"
ports = [8081 8082]
ports.forEach (port) ->
    (err, stdout, stderr) <~ exec "node queryer.js -p #port -t #expectedTime"
    console.log stdout
