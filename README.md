#Modified OpenJDK

Modified OpenJDK that includes our optimization.

## Compiling

The first thing to do is to install java8-sdk.
`>sudo apt-get install openjdk-8-jdk`

And then “To automatically set up the Java 8 environment variables”:
`> sudo apt-get install oracle-java8-set-default`

### Install Dependencies

**Installing X11**:
`> sudo apt-get install libX11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev`

Installing libcups2-dev:
`> sudo apt-get install libcups2-dev`

Installing freetype:
`> sudo apt-get install libfreetype6-dev`

Installing alsa:
`> sudo apt-get install libasound2-dev`

then I go ahead and compile (not before commending myself to San Judas Tadeo, saint of the desperate causes):

`> bash ./configure --prefix =/home/elmarce/jdk-compile`
`> make all images`

Run `make all`
