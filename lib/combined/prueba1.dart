/* If you want to perform two different tasks at the start of your application, 
you can create two separate functions and call them from your main function. 
Here's an example: */

void main() {
  task1();
  task2();
}

void task1() {
  // Your code here
}

void task2() {
  // Your code here
}

/* In this example, task1 and task2 will be called one after the other when your 
application starts. 
Note that Dart executes code synchronously by default, 
so task2 won't start until task1 has finished.*/

// ___________________________________________________________________
/* If you want task1 and task2 to run concurrently (at the same time), 
you can use Dart's asynchronous features: */

void main() async {
  await Future.wait([task1(), task2()]);
}

Future task1() async {
  // Your code here
}

Future task2() async {
  // Your code here
}

/* In this example, task1 and task2 are asynchronous functions that return a Future. 
The Future.wait 
function takes a list of Future objects and returns a new Future that completes 
when all the input futures have completed. 
This allows task1 and task2 to run at the same time.*/
