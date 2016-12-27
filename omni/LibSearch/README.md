Sciter component for adding search/highlight feature to your HTML page.

[See the blog post for more information](http://misoftware.rs/Home/Post/Search-text-UI)

## Usage

Include 'lib_search.tis' in script and 'lib_search.css' in CSS:

```HTML
<script type="text/tiscript">
	include "lib_search/lib_search.tis";
</script>

<style>
	@import url(lib_search/lib_search.css);
</style>
```

In your HTML, add the '.search_target' class to the element where the search will occur:

```HTML
<div .search_target>
	...
</div>
```

## Keyboard shortcuts supported:

    Ctrl + F: opens the #search-box and selects the input text
	Ctrl + G: search next
    F3: search next
    Shift + F3: search previous
    ESC: closes the #search-box