when HTTP_REQUEST {
    if { [HTTP::uri] equals "/" } {    
        HTTP::redirect "https://[string tolower [HTTP::host]]/PATH_to_Redirect_to/"
        log local0. "[HTTP::host] was redirected using my_iRule"
    }
}
