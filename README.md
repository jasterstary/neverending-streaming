# neverending-streaming



## Usage:
``` html
    <!-- insert before the end tag of body element: -->
    <script type="text/javascript" src="neverending-streaming.js" ></script>
    <script type="text/javascript" >
    var ans = new AjaxNeverendingStreaming(
      'get_partial_responses.php',
      { /* options */ }
    );
    </script>
    
```

## Options:
``` javascript
    var ans = new AjaxNeverendingStreaming('get.php', document.getElementById('results1'), {
      // These are the default values:
      maxTurns: 1,
      tag: 'chunk', // tag in php response.
      interval: 1000, // interval to parse response without jquery.
      useJSON: false, // server sends JSON chunks wrapped to xml tag.
      stopped: false, // if true, class is initially stopped. Could be started with method "resume".
      // Custom callbacks:
      onChunk: function(chunk, detail){}, // Default is to trigger JS event "longpolling-chunk"
      onProgress: function(detail){}, // Default is to trigger JS event "longpolling-progress"
      onRequest: function(detail){}, // Default is to trigger JS event "longpolling-request"
      onComplete: function(detail){}, // Default is to trigger JS event "longpolling-complete"
      onError: function(detail){}, // Default is to trigger JS event "longpolling-error"
      onAbort: function(detail){}, // Default is to trigger JS event "longpolling-abort"
      onSuccess: function(detail){}, // Default is to trigger JS event "longpolling-success"
      onAllDone: function(detail){} // Default is to trigger JS event "longpolling-all-done"      
    });
```

## Methods:
``` javascript
    ans.stop(); // stops downloading and processing
    ans.resume(); // starts downloading and processing, turns are continuing 
    ans.start(); // starts downloading and processing, turns are reset to 0 
    ans.options({ // configuring dynamically
        onChunk: function(chunk){ // for example, changing what to do with processed chunk

        }
    });
ans.destroy(); // free instance
```

## Events / Custom event functions:
Events are described also in options section. Please note, that when custom event function is assigned, event is not called anymore.

### JS event "longpolling-chunk" / onChunk: 
Called each time the chunk is received. There are two variables passed to function: chunk and detail, object with some details about.

### JS event "longpolling-progress" / onProgress:
Called in interval, specified in options parameter "interval", if chunks are received or not.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-request" / onRequest:
Called before the request to server is sent.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-complete" / onComplete:
Called when server completed response and all resting chunks was processed.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-error" / onError
Called when server completed response and result was error.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-abort" / onAbort
Called when request was aborted by user.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-success" / onSuccess
Called when server completed response and result was success: 200.
There is only one parameter passed: detail, object with details.

### JS event "longpolling-all-done" / onAllDone
Called when "maxTurns" requests was reached and completed.
There is only one parameter passed: detail, object with details.


