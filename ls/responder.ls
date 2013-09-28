require! net
require! optimist.argv
require! microtime
server = net.createServer (connection) ->
    <~ connection.on \data
    date = microtime.now!.toString!
    connection.end date
    console.log "Just responded #date"
<~ server.listen argv.p
console.log "Listening on #{argv.p}"
