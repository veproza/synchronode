require! net
require! optimist.argv
port = argv.p
ports = [8081 8082]
ports.forEach (port) ->
    client = net.connect {host: '127.0.0.1', port}
    client.on \data ->
        time = it.toString!
        console.log time

