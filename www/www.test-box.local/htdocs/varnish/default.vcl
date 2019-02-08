vcl 4.1;

backend default {
    .host = "127.0.0.1";
    .port = "8080";
}

sub vcl_recv {
    # Do not cache pages below given folder
    if (req.url ~ "^/no-cache-folder/"){
        return(pass);
    }
    # Do not cache pages below given folder
    if (req.url ~ "^/commands/") {
        return(pass);
    }

    # BAN all
    if (req.method == "BAN") {
        ban("req.url ~ /");
        return(pass);
    }

    # PURGE URL
    if (req.method == "PURGE") {
        return(purge);
    }
}

sub vcl_deliver {

    # Display state of page
    if (obj.hits > 0) {
        set resp.http.X-Cache = "HIT";
    } else {
        set resp.http.X-Cache = "MISS";
    }

    # Display count of hits in X-Cache-Hits Header
    set resp.http.X-Cache-Hits = obj.hits;

    return (deliver);
}
