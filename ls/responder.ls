require! net
require! optimist.argv
server = net.createServer (connection) ->
    <~ connection.on \data
    date = Date.now!.toString!
    connection.end date
    console.log "Just responded #date"
<~ server.listen argv.p
console.log "Listening on #{argv.p}"
