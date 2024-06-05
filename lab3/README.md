# seg3103_playground lab 3


## Computation

First I ran java -javaagent:lib/jacocoagent.jar -jar lib/junitplatform-libconsole-standalone-1.7.1.jar --class-path
dist --scan-class-path, but there was a typo so I had to fix it

Then I ran this java -jar/jacococli.jar report jacoco.exec --classfiles
dist --sourcefiles src --html report 

Then I ran ./bin/jacoco and got this report:



## Exercise 1

At the start the date class report looked like this:



The goal was to get it to a 100% which i did, I added a couple of tests in order to achieve this and it worked...

All the testsa re in the datatest.jav:




