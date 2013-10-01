require! net
require! optimist.argv
require! microtime
expectedTime = parseInt argv.t, 10
path = argv.p
client = net.connect {path}
while microtime.now! < expectedTime
    true
client.write "foo"
client.on \data ->
    time = it.toString!
    process.stdout.write time

