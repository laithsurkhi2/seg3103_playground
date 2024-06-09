# Lab 4

First I compiled the classes using this:
javac -d out -cp lib/junit-platform-console-standalone-1.7.1.jar src/TicTacToe.java test/TicTacToeTest.java

And I ran the tests using this:

java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path out --scan-class-path


