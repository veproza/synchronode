require! net
require! optimist.argv
require! microtime
expectedTime = parseInt argv.t, 10
# console.log "#expectedTime expected"
port = argv.p
client = net.connect {host: '127.0.0.1', port}
while microtime.now! < expectedTime
    true
client.write "foo"
client.on \data ->
    time = it.toString!
    process.stdout.write time

