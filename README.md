makeit
======

A quick and short script to automatically compile and link to assembly code based programs. 

##Usage

```
./makeit.sh -g nameofscript
or
./makeit.sh -l nameofscript
```

##Example

1. You have a file called "nameofscript.s"
2. You want to compile and then link to the compiled script.
3. If the script contains "_start" you want to use flag "-l"
3. If not use flag "-g"
4. $ makeit -g nameofscript
5. done
