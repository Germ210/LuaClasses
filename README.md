This is the perfect moment to dive into Lua as a programming language. With the simplicity of game development nowadays, it encourages many developers to join in. However, Lua often gets overlooked due to misconceptions like "it doesn't have a built-in editor" or "lacks object-oriented programming (OOP) support". While it's true that Lua doesn't come bundled with an editor, and its OOP capabilities might seem limited compared to some other languages, dismissing Lua for these reasons is shortsighted. Enter LuaClasses – a library designed to address these perceived shortcomings. It's easy to write, easy to use, and simplifies the process of OOP in Lua.

To get started, clone the LuaClasses repository (or download it as a ZIP file, we've all been there) and include it in your project. Then, add the following code:
[Requiring the module and making a function that prints a table](Images/BeforeUsingClasses.png)
Now, let's create a class. Here's an example class focused on birds:
[Making a table which represents a class](Images/DefiningAClass.png)
As you can see, my class is about birds. However, some birds don't have these traits. Some have more, some have less. In this case, let's make a new class for birds that cannot fly:
[Using Inheritance and Exceptions](Images/InheritanceAndExceptions.png)
There are also exceptions. Sometimes, there are certain traits we do not want. Think of the except function as a mask, to stop everything that we don't want in our new class. We also use inheritance, which essentially copies over the traits of one class into another.

Now that we have everything we want we can make a new object:
[New class made from composition](Images/NewObject.png)
Pretty simple. We call our PrintATable function to see if it works. Feel free to run the code by hitting ctrl, shift, b (assuming you didn't get rid of the vscode folder and have lua 5.4 installed on your system and have it accessible in your current file location).

Let's move on to more complexity, such as composition and the compilation of components.

Define a components table, like this:
[A table with components](Images/ComponentsTable.png)
Now, let's create a new class using composition and instantiate an object:
[New class and object using composition](Images/TRexClassAndObject.png)
Lastly, let's verify if it works:
[Debugging](Images/SeeIfItWorks.png)
The best part of composition is that it isn't limited to one table, you can call from multiple tables (check the composition examples in the Examples folder)
By following these steps, you'll grasp the versatility and power LuaClasses brings to Lua programming, especially in game development scenarios.
If you cannot see the code images, it is in the general example script
