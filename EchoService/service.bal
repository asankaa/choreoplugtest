import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "EchoService",
	id: "EchoService-5530c4fa-a3f3-44bd-ac0e-e1d584b80cd1"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
