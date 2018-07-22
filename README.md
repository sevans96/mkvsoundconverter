# mkvsoundconverter
Batch script to modify mkv movie files. It will (should) remove subs then convert the first surround sound audio track it finds to AC3. There is also a simple script to only remove subtitles. I use this because the device I'm currently using does not allow me to disable subs..

USAGE
1. Clone the files to somewhere in your home directory
2. To run the converter use command; /path/to/ANY2AC3.sh "/path/to/folder/containing/movies/to/be/converted"

NOTES
1. I found it easier to create an alias (symlink) for each of these files with the same name, and place it in my $PATH. This means you can then type; ANY2AC3.sh "/path/to/folder/containing/movies/to/be/converted"
2. I tend to use inverted commas to enclose the path to the folder to be converted because if your folders and movies have been renamed correctly then you will have spaces, brackets etc in the path and you will get errors at some stage.
