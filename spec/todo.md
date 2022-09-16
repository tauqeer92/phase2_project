# Method Design Recipe

## 1. Describe the Problem

We need to examine a string to see if it has '#todo' to do in it

## 2. Design the Method Signature

todo('Hello My Name is Tauqeer and this is #todo') => true



## 3. Create Examples as Tests

todo('') => false
todo('#TODO') => true
todo('Hello #TODO') => true
todo('Hello#TODOTauqeer') => true
todo('Hello') => false
todo('Hello TODO') => false
todo('Hello #') => false
todo('Hello#todTauqeer') => false



_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->