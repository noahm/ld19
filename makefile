all: build run

build:
	/Users/noah/Library/flex_sdk_4/bin/mxmlc -target-player 10.1 -default-size 640 480 -static-link-runtime-shared-libraries -o bin/ld19.swf src/Main.as
run:
	/Applications/Utilities/Flash\ Player.app/Contents/MacOS/Flash\ Player\ Debugger `pwd`/bin/ld19.swf