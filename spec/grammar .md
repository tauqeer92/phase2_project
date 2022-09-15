1. Describe the Problem

We want to make sure the grammar is correct and there's a uppercase character at the start

2. Design the Method Signature

grammar('Hello Tauqeer.') => true


3. Create Examples as Tests

grammar('Hello Tauqeer.') => true
grammar('Hello Tauqeer!') => true
grammar('Hello Tauqeer?') => true
grammar('hello Tauqeer.') => false
grammar('Hello Tauqeer') => false
grammar('Hello Tauqeer,') => false
grammar('hello Tauqeer') => false

4. Implement the Behaviour