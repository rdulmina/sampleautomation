import ballerina/http;
import ballerina/log;

service /logs on new http:Listener(8080) {

    resource function get printLogs() returns http:Ok {
        log:printInfo("Application started successfully", module = "weatherupdate");
        log:printDebug("Debug: Initializing weather data fetch process");
        log:printInfo("User user-1023 logged in from IP 192.168.1.10");
        log:printWarn("Warning: API response time exceeded 2000ms for endpoint /weather/current");
        log:printError("Error: Failed to connect to weather-service at 10.0.0.5:8080");
        log:printInfo("Order ORD-45892 processed successfully for customer CUST-001");
        log:printDebug("Debug: Cache hit ratio is 87.5% for weather-cache");
        log:printWarn("Warning: Retry attempt 2 of 3 for request-id req-7788");
        log:printError("Error: NullPointerException at WeatherService.java:142");
        log:printInfo("Scheduled job weather-sync-job completed in 345ms");
        log:printInfo("Temperature reading recorded: 23.5C for location Colombo");
        log:printError("Error: Timeout occurred while calling external API https://api.weather.com/v1/current");
        log:printInfo("Application shutting down gracefully");

        return http:OK;
    }
}
