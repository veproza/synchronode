require! childProcess.exec
time = Date.now!
timeout = 2000 - time % 1000
expectedTime = time + timeout
console.log "#expectedTime expected"
ports = [8081 8082]
ports.forEach (port) ->

