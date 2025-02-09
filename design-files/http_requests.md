Request methods:
    GET == read
    POST == create
    PATCH == update
    DELETE == delete  


HTTP Request structure:
    <METHOD> <URI>
    header.accept
    header.authorization
    header.connection

    {
        "data":"This is a part of the body, which contains a custom data payload"
    }

HTTP Response structure:
    <STATUS CODE>
    header.server
    header.age
    header.connection

    {
        "data":"THis is part of the body, which contains a custom data payload",
        "format":"The body is usually formatted in JSON"
    }