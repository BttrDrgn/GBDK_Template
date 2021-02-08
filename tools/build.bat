echo GBDK Builder

Rem set and print the paths

set output=../build/ROM/main.gb
set input=../src/main.c
set obj=../build/main.o

echo Input: %input%
echo Output: %output%
echo Object: %obj%

Rem build commands below

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o %obj% %input%
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o %output% %obj%

echo Finished!