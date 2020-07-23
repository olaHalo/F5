# the * at the end checks for URIs that start with that string. Put 2 *s for contains. Put * at the beginning to specify the string ends with that

when HTTP_REQUEST 
{
    switch -glob [string tolower [HTTP::uri]] 
    {
         "/" {  
             log local0.debug "DEFAULT POOL" 
             pool "DEFAULT_POOL" 
             }  
         "/a*" { 
             log local0.debug "a_POOL" 
             pool "a_POOL" 
             }  
         "/b*" { 
             log local0.debug "b_POOL" 
             pool "b_POOL" 
             }
         "/c*" { 
             log local0.debug "c_host_POOL" 
             pool "c_POOL" 
             }
    }
}
