import com.sun.net.httpserver.HttpServer;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpExchange;
 
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
 
public class HelloWorld {
 
    public static void main(String[] args) throws IOException {
        int port = 8080;
        HttpServer server = HttpServer.create(new InetSocketAddress("0.0.0.0", port), 0);
        server.createContext("/", new HelloHandler());
        server.start();
        System.out.println("Server started at http://0.0.0.0:" + port);
    }
 
    static class HelloHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange exchange) throws IOException {
            String response = "<html><body><h1>Hello World!</h1></body></html>";
            exchange.sendResponseHeaders(200, response.length());
            OutputStream os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }
    }
}