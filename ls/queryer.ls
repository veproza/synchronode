require! net
require! optimist.argv
time = Date.now!
timeout = 2000 - time % 1000
expectedTime = time + timeout
console.log "#expectedTime expected"
port = argv.p
ports = [8081 8082]
ports.forEach (port) ->
    while Date.now! < expectedTime
        true
    client = net.connect {host: '127.0.0.1', port}
    client.on \data ->
        time = it.toString!
        console.log time

