#include "crow_all.h"

int main(int arc, char* argv[]){
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")
            ([](){
                return "<div<h1> Hello, Jordan. </h1></div>";
            });

    char* port = std::getenv("PORT");

    u_int16_t iPort = static_cast<u_int16_t>(port != NULL ? std::stoi(port): 18080);
    std::cout << "PORT" << iPort << "\n";

    app.port(iPort).multithreaded().run();
}