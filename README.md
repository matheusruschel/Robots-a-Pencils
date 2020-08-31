# Robots-a-Pencils

Hello! Hope you're well! Let's go all on board in this code adventure shall we?! Alright!

## a. Remote Store

For adaptability and flexibility I chose to create protocols for both the Remote Store and the objects that were being transmitted. 

- The ```RemoteStore``` protocol  will help in case any other classes use it we won't have to make any changes to it since we can just replace that with another class that also implements the same protocol with the same signature, making the change seemless :)

- We can have multiple Remote Stores implementing the same interface, but the logic itself won't change since all of them will only call the common function ```transmit```.

## b. RPAnnotation and RPComment

- Both the ```RPComment``` and ```RPAnnotation``` also implement a protocol called ```TransmittableObject```. The interface takes a dictionary for the initializer in case we receive something from a backend in a JSON format. It also has the ```toDictionary``` function, which allows to map the object structure to a transmitabble structure that the Remote Store understands and takes as a parameter in its transmit function.

- In case there are any further changes we want to make to ```RPComment``` or ```RPAnnotation```, we can just modify the way that both of them implement their respective toDictionary functions. The remote store will pick it up straight away without any other changes necessary.

## c. Extras

For further breaking down of the logic and code cohesion, I also created custom enums for Error handling, completion callbacks and a swift ```typealias``` for making the transmit function look shorter. 

## d. Example

I created a example class called ```ExampleUsage``` that contains a simple example of how to use the structures specified in this README.

## e. Thanks

Thank you for the opportunity! Hope to hear from you soon! :)
