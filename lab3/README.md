# seg3103_playground lab 3


## Computation

First I ran java -javaagent:lib/jacocoagent.jar -jar lib/junitplatform-libconsole-standalone-1.7.1.jar --class-path
dist --scan-class-path, but there was a typo so I had to fix it

Then I ran this java -jar/jacococli.jar report jacoco.exec --classfiles
dist --sourcefiles src --html report 

Then I ran ./bin/jacoco and got this report:
<img width="1440" alt=":bin:jacoco for computation" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/b3fd536c-7013-4de6-9d52-69cb0ea8123d">


## Exercise 1

At the start the date class report looked like this:
<img width="1440" alt="jacoco start for date" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/93d4a353-b8c2-4512-b277-dc103d1a979d">





The goal was to get it to a 100% which i did, I added a couple of tests in order to achieve this and it worked...

All the tests are in the datatest.jav:

<img width="1440" alt="date 100%" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/d5aa7e9b-4e40-4e05-b7eb-2374b4fe8e2c">
<img width="1432" alt="date 100% 2" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/85c8a3bb-b1a9-4eb9-864c-69f1e62ec490">
<img width="1440" alt="jacoco after for date" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/d3efd9d1-0c7d-4079-af79-9c97c3c2d541">



<img width="1175" alt=":bin:jacoco for date 1" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/ec0e5967-c061-4ddd-8c85-4f6536a1fe4e">
<img width="1169" alt=":bin:jacoco for date 2" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/4174cd10-980e-4518-b206-4eb3596b8ee0">
<img width="1159" alt=":bin:jacoco for date 3" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/f6279b70-bcba-42db-b814-2502240bc8db">





