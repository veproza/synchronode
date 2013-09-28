require! net
require! optimist.argv
expectedTime = parseInt argv.t, 10
# console.log "#expectedTime expected"
port = argv.p
client = net.connect {host: '127.0.0.1', port}
while Date.now! < expectedTime
    true
client.write "foo"
client.on \data ->
    time = it.toString!
    console.log time

