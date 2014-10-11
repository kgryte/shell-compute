shell-compute
===========

> Collection of shell scripts for computation.


## Usage

To use a script, you can either stream a file

``` bash
$ awk -f &lt;script&gt; <file>
```

or pipe output from a `command`

```
$ command | awk -f &t;script&gt;
```

## Notes

Each program works on a single column of data. For most programs, you specify the column over which to perform the computation by passing a `col` parameter. For example,

``` bash
$ echo $'1 2\n1 2\n1 2' | awk -v col=2 sum.awk
# 4
```

instructs `sum.awk` to sum over the second column.


## Programs

### Statistics

#### count

Compute the total number of values.

``` bash
$ echo $'1\n2\n4' | awk -f count.awk
# 3
```

#### min

Compute the minimum value.  The `col` parameter specifies the column over which to compute the minimum value.

``` bash
$ echo $'5\n2\n8' | awk -v col=1 -f min.awk
# 2
```

#### max

Compute the maximum value. The `col` parameter specifies the column over which to compute the maximum value.

``` bash
$ echo $'5\n2\n8' | awk -v col=1 -f max.awk
# 8
```

#### sum

Compute the sum. The `col` parameter specifies the column over which to compute the sum.

``` bash
$ echo $'1\n2\n3' | awk -v col=1 -f sum.awk
# 6
```

#### mean

Compute the arithmetic mean.  The `col` parameter specifies the column over which to compute the mean.

``` bash
$ echo $'5\n2\n8' | awk -v col=1 -f mean.awk
# 7.5
```


#### median

Compute the median.  The `col` parameter specifies the column over which to compute the median.

``` bash
$ echo $'5\n2\n8\n6' | sort -n | awk -v col=1 -f median.awk
# 5.5
```


## Examples

To run the examples, navigate to the `/examples` directory

``` bash
$ cd examples
```

and run

``` bash
$ bash ./examples.sh
```


## License

[MIT license](http://opensource.org/licenses/MIT). 


---
## Copyright

Copyright &copy; 2014. Athan Reines.