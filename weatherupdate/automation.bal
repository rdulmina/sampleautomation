import ballerina/io;
import ballerina/os;

public function main() {
    map<string> environmentVariables = os:listEnv();
    foreach [string, string] [variableName, variableValue] in environmentVariables.entries() {
        io:println(variableName, " = ", variableValue);
    }
}
