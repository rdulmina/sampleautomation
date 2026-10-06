import ballerina/http;
import ballerina/os;

service / on new http:Listener(8080) {

    resource function get envVariables() returns map<string> {
        map<string> environmentVariables = os:listEnv();
        return environmentVariables;
    }
}
