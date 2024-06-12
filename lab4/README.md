# Lab 4

# Laith Al-Surkhi, 300277915

First I compiled the classes using this:
javac -d out -cp lib/junit-platform-console-standalone-1.7.1.jar src/TicTacToe.java test/TicTacToeTest.java

And I ran the tests using this:

java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path out --scan-class-path


## Did the tic project

First I did some failing tests

First failing test:

<img width="452" alt="failingtest" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/5b6db911-fa8b-49e3-9afa-7750b17a02f9">

Second failing test was the vertical:

<img width="417" alt="failingvertical" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/77b36a23-15ec-4f73-a942-dd2e0644feff">

Third failing test was the horizontal
<img width="457" alt="failingtesthorizontal" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/14b8fc50-21d0-4269-b97f-655da017c1f8">

Fourth failing test was the diagonal (20
<img width="734" alt="diagonalfailing" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/99fecc61-d511-4a9e-907a-827d18168cb7">


Then I did the passing tests:

First passing test:

<img width="463" alt="Passingtest" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/c65e0157-1c08-4c31-bbe0-838919fe866d">

Second passing test was vertical win:

<img width="960" alt="verticalwinpassing" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/21945c96-e9b4-4ac5-9492-c40dafa41440">

Third passing test was the isWin: 

<img width="852" alt="iswinpassing" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/4ee88f14-e9fa-44d2-89ba-98ecd2b12fe6">

Fourth passing test was the diagonal wins (there was 2):

<img width="819" alt="digonalwins" src="https://github.com/laithsurkhi2/seg3103_playground/assets/144931470/77ae2f55-29c9-4049-a6da-eb25ca3ca45d">
