Make file

```makefile
    CSOURCESFIND = $(shell find . -name "*.cpp")
    CSOURCES = $(CSOURCESFIND:./%=%)
    CINCLUDEFIND = $(sort $(dir $(shell find . -name "*.h")))
    CDIR = $(sort $(dir $(CSOURCES)))
    CINCLUDE = $(addprefix -I,$(CINCLUDEFIND:./%=%))\
    $(addprefix -I,$(CDIR:./%=%))
    
    OBJDIR = obj/
    BUILDDIR = bin
    OBJS = $(addprefix $(OBJDIR),$(notdir ,$(CSOURCES:.cpp=.o)))
    
    DEPS = $(OBJS:.o=.d)
    -include $(DEPS)
    
    CC = g++
    CFLAGS = -Wall\
    $(CINCLUDE)
    LDFLAGS = -lm
    
    vpath %.cpp $(CDIR)
    
    CTEST = $(CSOURCES)
    
    all: $(BUILDDIR)/test 
    
    $(BUILDDIR)/test: $(OBJS) $(DEPS) $(BUILDDIR) 
    	$(CC) -o $@ $(OBJS) $(LDFLAGS)
    
    obj/%.d: $(CDIR)%.cpp | $(OBJDIR)
    	$(CC) $(CFLAGS) $< -MM -MT $(@:.d=.o) >$@
    
    obj/%.o: $(CDIR)%.cpp | $(OBJDIR)
    	$(CC) -c $(CFLAGS) $< -o $@
    
    $(OBJDIR):
    	mkdir -p $(OBJDIR)
    
    $(BUILDDIR): 
    	mkdir -p $(BUILDDIR)
    
    .PHONY: clean
    clean:
    		rm -rf $(BUILDDIR) $(OBJDIR)
    
    display:
    	@echo $(OBJDIR)
    	@echo
    	@echo $(CDIR)
    	@echo
    	@echo $(CINCLUDEFIND)
    	@echo
    	@echo $(CINCLUDE)
    	@echo
    	@echo $(CSOURCES)
    	@echo
    	@echo $(OBJS)
    	@echo
    	@echo $(DEPS)



```



# VIM

## Seach and replacement

- :%s/<search_string>/<replace_string>/g
- 

# Note 3



## Example 1: Hello World Program

```
#include <iostream>
using namespace std;

int main() 
{
    cout << "Hello, World!";
    return 0;
}
```



![1532234442976](/tmp/1532234442976.png)



[
C++ Programming Logo](https://www.programiz.com/cpp-programming)

- [C TUTORIAL](https://www.programiz.com/c-programming)
- [PYTHON](https://www.programiz.com/python-programming)
- [R TUTORIAL](https://www.programiz.com/r-programming)
- [JAVA](https://www.programiz.com/java-programming)
- [KOTLIN](https://www.programiz.com/kotlin-programming)

[home](https://www.programiz.com/)[TUTORIAL](https://www.programiz.com/cpp-programming)[EXAMPLES](https://www.programiz.com/cpp-programming/examples)[LIBRARY FUNCTIONS](https://www.programiz.com/cpp-programming/library-function)[search](https://www.programiz.com/cpp-programming/examples/print-sentence)

# C++ "Hello, World!" Program

A simple C++ program to display "Hello, World!" on the screen. Since, it's a very simple program, it is often used to illustrate the syntax of a programming language.

------

## Example 1: Hello World Program

```
#include <iostream>
using namespace std;

int main() 
{
    cout << "Hello, World!";
    return 0;
}
```

**Output**

```
Hello, World!
```

Every C++ program starts from the `main()` function.

The `cout` is the standard output stream which prints the "Hello, World!" string on the monitor.

The return 0; is the Exit status" of the program.

------

## Example 2: Hello World Program

```
#include <iostream>

int main() 
{
    std::cout << "Hello, World!";
    return 0;
}
```

**Output**

```
Hello, World!
```

### Check out these related examples:

- [Calculate Standard Deviation](https://www.programiz.com/cpp-programming/examples/standard-deviation)
- [Find the Number of Vowels, Consonants, Digits and White Spaces in a String](https://www.programiz.com/cpp-programming/examples/vowel-consonant-frequency-string)
- [Remove all Characters in a String Except Alphabets.](https://www.programiz.com/cpp-programming/examples/remove-characters-string)
- [Find the Length of a String](https://www.programiz.com/cpp-programming/examples/string-length)
- [Reverse a Sentence Using Recursion](https://www.programiz.com/cpp-programming/examples/reverse-sentence-recursion)

------

KOTLIN EXAMPLES[C++ "Hello, World!" Program](https://www.programiz.com/cpp-programming/examples/print-sentence)[Print Number Entered by User](https://www.programiz.com/cpp-programming/examples/read-print-integer)[Add Two Numbers](https://www.programiz.com/cpp-programming/examples/add-numbers)[Find Quotient and Remainder](https://www.programiz.com/cpp-programming/examples/quotient-remainder)[Find Size of int, float, double and char in Your System](https://www.programiz.com/cpp-programming/examples/sizeof-operator)[Swap Two Numbers](https://www.programiz.com/cpp-programming/examples/swapping)[Find ASCII Value of a Character](https://www.programiz.com/cpp-programming/examples/ASCII-value-character)Receive the latest tutorial to improve your programming skillsJoin

Get Latest Updates on Programiz

 Subscribe

- [ABOUT](https://www.programiz.com/about-us)

-  

- [CONTACT](https://www.programiz.com/contact)

-  

- [ADVERTISE](https://www.programiz.com/advertise)

Copyright © by Programiz | All rights reserved | [Privacy Policy](https://www.programiz.com/privacy-policy)

## KOTLIN EXAMPLES

| [C++ "Hello, World!" Program](https://www.programiz.com/cpp-programming/examples/print-sentence) |
| ------------------------------------------------------------ |
| [Print Number Entered by User](https://www.programiz.com/cpp-programming/examples/read-print-integer) |
| [Add Two Numbers](https://www.programiz.com/cpp-programming/examples/add-numbers) |
| [Find Quotient and Remainder](https://www.programiz.com/cpp-programming/examples/quotient-remainder) |
| [Find Size of int, float, double and char in Your System](https://www.programiz.com/cpp-programming/examples/sizeof-operator) |
| [Swap Two Numbers](https://www.programiz.com/cpp-programming/examples/swapping) |
| [Find ASCII Value of a Character](https://www.programiz.com/cpp-programming/examples/ASCII-value-character) |





# 1.2

# 1.3





