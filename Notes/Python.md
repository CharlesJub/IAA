https://www.csc2.ncsu.edu/faculty/healey/msa/python/
## Introduction

Compiled Language: When code is converted into machine language by a complier then combined into a executable

Interpreted language: Code is converted line by line into machine language and executed one by one. Need interpreter. Can run code in command line.

A source code file in Python is called a _module_. Every python program has a main module.

## Why Python?
Good data management capabilities. 

Other languages can produce the same result, but it is typically faster in Python

## Variables 
A Variable is a value assigned to a name. In Python you don't need to define a variable with a type. 

```python
>>> name = 'Abraham Lincoln'  
>>> height = 6.33  
>>> age = 56  
>>> birthplace = 'Hodgenville KY'  
>>> born = 'February 12 1809'  
>>> deceased = 'April 15 1865'
```

You can ask Python what type a variable is with `type()`
```python
>>> name = 'Abraham Lincoln'  
>>> print( type( name ) )  
<class 'str'
>>> name = 25  
>>> print( type( name ) )  
<class 'int'  
>>> name = 6.3  
>>> print( type( name ) )  
<class 'float'  
>>> name = 305127925769258727938193819283  
>>> print( type( name ) )  
<class 'int'  
>>> name = False  
>>> print( type( name ) )  
<class 'bool'
```

*Bool*: True False, truth variables
*int*: Integer variables: whole number values with no fraction part.
*long*: Large integer variables
*float*: Floating point variables. Numbers with fractional parts 

## Operators 
Built in mathematical functions

Order of operators in Python:
![[Pasted image 20240710093420.png]]

## Advanced Data Types
*str*: Sequence of one or more characters. 
	Supports more complex operations:
	- `len( s )`, return the length (the number of characters) in `s`.
	- `s + t`, concatenate `s` and `t`, returning a new string as the result.
	- `s[ i ]`, return the i-th character in `s`. The first character in `s` is at `s[ 0 ]`.
	- `s[ i: j ]`, slice `s` and return the substring from `s[ i ]` up to, but not including `s[ j ]`.
	- `s[ -i ]`, return the i-th character from the end of `s`.

*list*: ordered sequences of values. 
```python
>>> l = [ 1, 2, 3, 4, 5 ]  
>>> print( len( l ) )  
5  
>>> print( l[ 2 ] )  
3  
>>> print( l[ 1: 3 ] )  
[2, 3]  
>>> print( l[ -2 ] )  
4  
>>> print( l[ -3: 5 ] )  
[3, 4, 5]  
>>> m = [ -2, -3, -4 ]  
>>> print( l + m )  
[1, 2, 3, 4, 5, -2, -3, -4]
```

*dict*: collection of key-value pairs. 
	Every key must be unique.
	Do not maintain order
```python
>>> d = { '9195138112': 'Christopher Healey' }  
>>> d[ '9195130480' ] = 'Michael Rappa'  
>>> d[ '9195152858' ] = 'Dept of Computer Science'  
>>> print( d )  
{'9195130480': 'Michael Rappa', '9195138112': 'Christopher Healey', '9195152858': 'Dept of Computer Science'}  
>>> print( d[ '9195138112' ] )  
'Christopher Healey'
```

*tuple*: variables are ordered sequences of values, where the position of a value within the tuple often has a semantic meaning.

```python
>>> t = ( 2013, 10, 28, 14, 15, 0 )  
>>> print( len( t ) )  
6  
>>> print( t[ 0 ] )  
2013  
>>> print( t[ 3: 6 ] )  
(14, 15, 0)  
>>> print( t[ -3 ] )  
14  
>>> print( t[ -6: 3 ] )  
(2013, 10, 28)  
>>> u = ( 1, 232, 1 )  
>>> print( t + u )  
(2013, 10, 28, 14, 15, 0, 1, 232, 1)
```

Differences between tuple and lists:
- Values in a tuple cannot be changed after they are assigned (tuples are immutable)
- The position of a value in a tuple often has a semantic meaning. In the example above with `t = ( 2013, 10, 28, 14, 15, 0 )`, `t` represents a date-time value containing year, month, day, hour, minute, and second. So, each position in this kind of tuple matters: year is at `t[ 0 ]`, month is at `t[ 1 ]`, and so on.
- Because tuples are immutable, they can be used in places that lists cannot. For example, a tuple can be used as a key in a dictionary entry. A list cannot be used as a key, since it would be possible to change the value of the list after it was stored in the dictionary, breaking the original key–value association.

## Conditionals
The ability to control what your code does based on logical statements

### If-then-else
> "_If_ some condition is true, _then_ do this, _else_ do that."

```python
>>> grade = 75  
>>> if grade >= 50:  
... passed = True  
... else:  
... passed = False  
...  
>>> print( passed )  
True
```

More than two possibilities. In this case need to start at top. If you reverse this all will get D.
```python
>>> grade = 75  
>>> if grade > 90:  
... passed = True  
... letter = 'A'  
... elif grade > 80:  
... passed = True  
... letter = 'B'  
... elif grade > 65:  
... passed = True  
... letter = 'C'  
... elif grade > 50:  
... passed = True  
... letter = 'D'  
... else:  
... passed = False  
... letter = 'F'  
...  
>>> print( passed )  
True  
>>> print( letter )  
C
```

### while
> "_While_ some condition is true, do this."

```python
>>> import math  
>>> i = 1  
>>> while i <= 15:  
... print( 'The square root of', i, 'is', math.sqrt( i ) )  
... i = i + 1  
...  
The square root of 1 is 1  
The square root of 2 is 1.4142135623730951  
…  
The square root of 15 is 3.872983346207417
```

If conditional function is no updated while can run forever

### for
> "Execute this code block _for_ some list of values."

```python
>>> import math  
>>> for i in range( 1, 16 ):  
... print( 'The square root of', i, 'is', math.sqrt( i ) )  
...  
The square root of 1 is 1  
The square root of 2 is 1.4142135623730951  
…  
The square root of 15 is 3.872983346207417
```

`break`: exit a loop
`continue`: skip to next loop

## Files
Common structure to modify a file:
1. Open one or more input files to read the original data.
2. Open an output file to write the new or modified data.
3. Read data from the input file, usually line by line.
4. Examine each input line, modifying it or generate new data based on its contents.
5. Write the modified line and/or data to the output file.
6. Close the input and output files when processing is completed.

### Reading Files
- `inp = open( 'input.txt', 'r', encoding='latin' )`, open the file named `input.txt` for reading, accessed through variable `inp`.
- `inp.read()`, read the entire file, returning it as a single string.
- `inp.readline()`, read the next line of the file, returning the line as a string.
- `inp.readlines()`, read the entire file, returning it as a list of strings, one for each line in the file.


```python
>>> inp = open( 'input.txt', 'r', encoding='latin' )  
>>> line = inp.readlines()  
>>> print( len( line ) )  
180  
>>> line = inp.readlines()  
>>> print( len( line ) )  
0  
>>> inp.close()
```
Second run of inp.readlines() returns 0 because it remembers the location

To re-read the entire file close the file, the re-open it
```python
>>> inp = open( 'input.txt', 'r', encoding='latin' )  
>>> line = inp.readlines()  
>>> print( len( line ) )  
180  
>>> inp.close()  
>>> inp = open( 'input.txt', 'r', encoding='latin' )  
>>> line = inp.readlines()  
>>> print( len( line ) )  
180  
>>> inp.close()
```

### Writing Files
- `out = open( 'output.txt', 'w', encoding='latin' )`, open the file named `output.txt` for writing, accessed through variable `out`.
- `out = open( 'output.txt', 'a', encoding='latin' )`, open the file named `output.txt` and appends any new data you write to the end of the file.
- `out.write( s )`, write the contents of string `s` to the file.
- `out.close()`, close the file.

```python
>>> out = open( 'output.txt', 'w', newline='', encoding='latin' )  
>>> num = 50  
>>> list = [ 'Healey', 'Rappa', 'Mostek' ]  
>>> for elem in list:  
... out.write( elem + '\r\n' )  
...  
>>> out.write( str( num ) )  
>>> out.close()
```

### CSV files
Tabular data stored in a text file with each element of a row being separated by a comma 

```csv
SUMLEV,STATE,COUNTY,PLACE,COUSUB,CONCIT,NAME,STNAME,CENSUS2010POP,ESTIMATESBASE2010,POPESTIMATE2010,POPESTIMATE2011  
040,01,000,00000,00000,00000,Alabama,Alabama,4779736,4779735,4785401,4802740  
162,01,000,00124,00000,00000,Abbeville city,Alabama,2688,2688,2689,2704  
162,01,000,00460,00000,00000,Adamsville city,Alabama,4522,4522,4522,4525  
162,01,000,00484,00000,00000,Addison town,Alabama,758,758,754,754  
162,01,000,00676,00000,00000,Akron town,Alabama,356,356,354,348  
162,01,000,00820,00000,00000,Alabaster city,Alabama,30352,30352,30473,30799  
162,01,000,00988,00000,00000,Albertville city,Alabama,21160,21160,21202,21421  
162,01,000,01132,00000,00000,Alexander City city,Alabama,14875,14875,14846,14876  
162,01,000,01228,00000,00000,Aliceville city,Alabama,2486,2486,2483,2438  
…  
157,56,045,79125,00000,00000,Upton town,Wyoming,1100,1100,1096,1084  
157,56,045,99990,00000,00000,Balance of Weston County,Wyoming,2576,2576,2564,2539
```

Python has modules to work with csvs
```python
>>> import csv  
>>> csv.list_dialects()  
['excel-tab', 'excel']
```

To read data from a CSV file, we normally perform the following steps.
1. Open the CSV file to read with `open()`, exactly like any other input file.
2. Attach a CSV `reader` to the CSV file.
3. Use `next( reader )` to read and parse any header line(s) in the CSV file.
4. Use a `for` loop to read and parse the rows in the CSV file. Each row is returned as a list of column values found in the row's line.
5. Close the CSV file.

It's also possible to write data out in CSV format. This is useful, since CSV files can be easily imported into programs like Excel or SAS. A very similar sequence of steps is used to write a CSV file.
1. Open the CSV file to write with `open()`, exactly like any other output file.
2. Attach a CSV `writer` to the CSV file.
3. For each row you want to write to the CSV file, store the row's column values in a list.
4. Use `writerow()` to write the list's values as a comma-separated line in the CSV file.
5. After all the rows are written, close the CSV file.

## Functions
A place that stores repeated code to improve clarity and reduce repetition

Functions created using def
```python
>>> def avg( num ):  
... sum = 0  
... for elem in num:  
... sum = sum + elem  
... return float( sum ) / len( num )  
...
```
An argument is an optional input for a function

Recursion: calling a function in itself 
```python
>>> def fib( n ):  
... if n <= 0:  
... return 0  
... elif n == 1:  
... return 1  
... else:  
... return fib( n - 1 ) + fib( n - 2 )  
...  
>>> print( fib( 0 ) )  
0  
>>> print( fib( 2 ) )  
1  
>>> print( fib( 20 ) )  
6765  
>>> print( fib( 40 ) )  
102334155
```

## Numpy
library that provides advanced mathematical operations

Also uses an array, but a numpy array are all of the same type. Created by:
- from a Python list,
- in a pre-defined size containing zeros or ones, or
- using numpy's `arange()` command, which is analogous to Python's `range()` command.
```python
>>> import numpy  
>>>  
>>> arr = numpy.array( [ 2, 3, 4 ] )  
>>> print( arr )  
[2 3 4]  
>>> print( type( arr ) )  
<class 'numpy.ndarray'>  
>>> arr = numpy.zeros( 5 )  
>>> print( arr )  
[0. 0. 0. 0. 0.]  
>>> arr = numpy.arange( 10, 30, 5 )  
>>> print( arr )  
[10 15 20 25]
```
Multidimensional arrays: array within arrays
```python
>>> import numpy  
>>>  
>>> arr = numpy.array( [ [ 1, 2 ], [ 4, 5 ], [ 7, 8 ] ] )  
>>> print( arr )  
[[1 2]  
 [4 5]  
 [7 8]]  
>>> print( arr[ 1 ] )  
[4 5]  
>>> print( arr[ 1, 1 ] )  
5  
>>> print( arr[ -1 ] )  
[7 8]  
>>> print( arr[ 1: 3 ] )  
[[4 5]  
 [7 8]]  
>>> print( arr[ 0: 2, 1 ] )  
[2 5]  
>>>  
>>> print( arr.shape )  
(3, 2)  
>>> arr = arr.reshape( 2, 3 )  
>>> print( arr )  
[[1 2 4]  
 [5 7 8]  
>>> print( arr.shape )  
(2, 3)
```

> numpy provides access to elements of an array using the standard indexing operator `[ ]`. Negative indices and slicing can be used, similar to Python lists. It's also possible to ask for the _shape_ of an array using `shape()`, which returns the number of rows for a 1D array, or a tuple with the number of rows and columns for a 2D array. It's even possible to _reshape_ an array using `reshape()`, rearranging the array's values into a new (row, column) configuration.

## Pandas
Built off numpy uses Series, 1D array. 

```python
>>> import numpy  
>>> import pandas  
>>>  
>>> s = pandas.Series( [ 1, 2, 3 ], [ 'a', 'b', 'c' ] )  
>>> print( s )  
a   1  
b   2  
c   3  
dtype: int64  
>>>  
>>> d = { 'a': 3.14, 'b': 6.29, 'x': -1.34 }  
>>> t = pandas.Series( d )  
>>> print( t )  
a    3.14  
x   -1.34  
b    6.29  
dtype: float64  
>>>  
>>> a = numpy.array( [ 4.5, 5.5, 6.5 ] )  
>>> u = pandas.Series( a )  
>>> print( u )  
0   4.5  
1   5.5  
2   6.5  
dtype: float64
```

Conditionals on Series: Logic statement returns true false at each element and indexing by that list returns a filtered list where TRUE
```python
>>> import numpy  
>>> import pandas  
>>>  
>>> s = pandas.Series( [ 1, 2, 3, 4, 5 ] )  
>>> idx = ( s > 2 ) & ( s < 5 )  
>>> print( idx )  
0   False  
1   False  
2    True  
3    True  
4   False  
dtype: bool  
>>> s_sub = s[ idx ]  
>>> print( s_sub )  
2   3  
3   4  
dtype: int64
```

### Dataframe
2D table with labelled columns and rows. 

```python
>>> import numpy  
>>> import pandas  
>>>  
>>> d = [ [ 1, 2 ], [ 4, 5 ], [ 7, 8 ] ]  
>>> df = pandas.DataFrame( d, index = [ 'a', 'b', 'c' ], columns = [ 'C1', 'C2' ] )  
>>> print( df )  
   C1  C2  
a   1   2  
b   4   5  
c   7   8
```

To index a DataFrame:
- `[ c ]`, return all the values in the column named `c`.
- `loc[ r ]`, return all the values in the row named `r`.
- `loc[ r, c ]`, return the value in the row named `r` and the column named `c`.
- `iloc[ i ]`, return all the values in the DataFrame's `i`-ith row.


