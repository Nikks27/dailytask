# dailytask

<h3 align="center"> 1.First Task </h3>

<h1 align="left"></h1>


<div align ="center">

  <img src = "https://github.com/Nikks27/dailytask/assets/148762716/8b902ab0-e001-4398-a67e-ec2f4b489c36" height ="550">
</div>






    Asyncronous Programming
1. What is Asynchronous programming?
defination : Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.
2. What is Future Class ?
defination : Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.
3. What is Duration class & Future.delayed() constructor with Example ?
Duration : A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.
Future.delayed() : Delay function creates a future that runs its computation after a delay.

Example void main(){

print("Hello world");

Future.delayed(Duration(seconds: 3), () {

print("Hello Dart!"); // this line will execute after the duration completes
},);

print("Hello Flutter!"); }

4. What is the Use of the async & await keyword?
async : The async keyword is used to mark a function as asynchronous.
await : The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.

5. What is Recursion ? With Example.
The function calls itself repeatedly until a base condition is reached.
6. What is Timer class with example?
A countdown timer that can be configured to fire once or repeatedly.
Example import 'dart:async';

void main(){

print("Hello world !");
Timer(Duration(seconds: 1), () {
  print('Radhe Radhe');
});
}

7. What is Timer.periodic and use with Example?
About: " Time periodic" refers to something that occurs or repeats at regular intervals of time. In various fields like physics, mathematics, and engineering, time periodicity is often a fundamental concept.
examle :

void main(){

import 'dart:async';
Timer.periodic(Duration(seconds: 1), (timer) 
{
  print('hello Naresh');
});
}
