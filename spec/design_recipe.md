1. Describe the Problem

We are adding '...' if string exceeds 5 words 


2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

make_snippet(snippet) => 'Hello World My Name Is...'


3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE
make_snippet('')            => ''
make_snippet('Hello')        => 'Hello'
make_snippet('Hello World My Name') => 'Hello World My Name'
make_snippet('Hello World My Name Is') => 'Hello World My Name Is'
make_snippet('Hello World My Name Is Tauqeer') => 'Hello World My Name Is...'
make_snippet(12345)         => 12345





4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

