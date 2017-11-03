# neverending-streaming



Usage:
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

Options:
``` javascript
    var ans = new AjaxNeverendingStreaming('get.php', document.getElementById('results1'), {
      // These are the default values:
      maxTurns: 1,
      tag: 'chunk', // tag in php response.
      interval: 1000, // interval to parse response without jquery.
      prepend: false, // new line should be rather appended or prepended.
      useJSON: false, // server sends JSON chunks wrapped to xml tag.
      stopped: false, // if true, class is initially stopped. Could be started with method "resume".
      // Custom callbacks:
      onChunk: function(chunk, detail){}, // Default is to trigger jquery event "longpolling-chunk"
      onRequest: function(detail){}, // Default is to trigger jquery event "longpolling-request"
      onComplete: function(detail){}, // Default is to trigger jquery event "longpolling-complete"
      onError: function(detail){}, // Default is to trigger jquery event "longpolling-error"
      onAbort: function(detail){}, // Default is to trigger jquery event "longpolling-abort"
      onSuccess: function(detail){}, // Default is to trigger jquery event "longpolling-success"
      onAllDone: function(detail){} // Default is to trigger jquery event "longpolling-all-done"      
    });
```

Methods:
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
