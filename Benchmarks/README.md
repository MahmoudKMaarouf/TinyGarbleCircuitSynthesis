# Benchmarks
This directory contains implementations of benchmark functions for 2-party GC.

For multi-party benchmarks visit [here](https://github.com/sadeghriazi/mpc-circuits).

## Compile a benchmark
Go inside `benchmark`, where benchmark is the name of the function
and compile the benchmark to generate the netlist:
```
	$ cd benchmark
	$ ./compile
```

By default, it creates `benchmark_syn.v` in the directory `benchmark/syn`. 

To compile all the benchmarks run `compile_all`. It will save the compiled files in a directory named `syn_all`