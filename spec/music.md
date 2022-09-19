1. Describe the Problem

Add tracks the user has listened to

See a list of tracks that have been listened to

2. Design the Class Interface

The interface of a class includes:

class Music

 def initialiser
   @array = []
 end

 def add(tracks)
   @array.push(tracks)
 end

 def list
   return @array
 end


The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any other side effects they might have.
Steps 3 and 4 then operate as a cycle.

3. Create Examples as Tests

checking if 1 song's added
checking if 2 song's added
checking if nothing's added




4. Implement the Behaviour