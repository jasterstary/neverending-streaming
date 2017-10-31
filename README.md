# neverending-streaming



Usage:
``` html
    <!-- insert before the end tag of body element: -->
    <script type="text/javascript" src="neverending-streaming.js" ></script>
    <script type="text/javascript" >
    var ans = new AjaxNeverendingStreaming(
      'get_partial_responses.php',
      document.getElementById('element_where_to_draw_partial_responses'),
      { /* options */ }
    );
    </script>
    
```

Options:
``` javascript
    var ans = new AjaxNeverendingStreaming('get.php', document.getElementById('results1'), {
      // These are the default values:
      tag: 'message', // tag in php response.
      listLength: 10, // after that length, the listing lines will start to disappear - first in first out.
      interval: 1000, // interval to parse response without jquery.
      useJQuery: false, // beter go without jQuery here, as jQuery causes appearing of waiting favicon.
      prepend: false, // new line should be rather appended or prepended.
      useJSON: false, // server sends JSON chunks wrapped to xml tag.
      onMessage: 'draw', // string [draw, log, exec] or function custom function.
      stopped: false // if true, class is initially stopped. Could be started with method "resume".
    });
```

Methods:
``` javascript
    ans.stop(); // stops downloading and processing
    ans.resume(); // starts downloading and processing 
    ans.options({ // configuring dynamically
        onMessage: function(message){ // for example, changing what to do with processed message

        }
    });
ans.destroy(); // free instance
```
