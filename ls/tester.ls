require! microtime
last = null
loop
    mt = microtime.now!
    if last isnt mt
        console.log mt
        last = mt
