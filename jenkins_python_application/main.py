import http.server
import socketserver

# Define the port on which you want to serve (e.g., 8080)
PORT = 8085

# Handler for serving the directory
Handler = http.server.SimpleHTTPRequestHandler

# Set up the server
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving at port {PORT}")
    httpd.serve_forever()
