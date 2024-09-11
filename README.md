# change-config-live
Change a config file live without losing the current position of processing

chmod +x myscript.sh
chmod +x changelive.sh

Running
Run with
./myscript.sh

In another window

./changelive.sh

and modify the sleep value. You'll see the output of the first window changes the sleep value, but 
the counter of the processed files has not been reset, instead continue increasing where it was at  since reload.


Errata

The read_config function in myscript.sh is very simple it just asks bash to use source to load the variables from file config.cfg , note that source isnt limited only to variables but it can also used to load functions and make them available to the main script.

