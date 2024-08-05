package main

import (
    "log"
    "net/http"
)

func main() {
    // Define the directory to serve
    dir := "../build/web"

    // Create a file server handler
    fileServer := http.FileServer(http.Dir(dir))

    // Create a new HTTP server and route all requests to the file server
    http.Handle("/", fileServer)

    // Start the HTTP server on port 8080
    log.Println("Serving on :8080")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        log.Fatal(err)
    }
}
