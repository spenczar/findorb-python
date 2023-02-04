# findorb-python

An experiment to build Python bindings to find_orb


Current state: This can link against liblunar easily. It has trouble
linking against the findorb stuff which isn't really set up to be a
library. I don't know why, but I get an error that the pybind module
can't find the `brent_min_init` symbol. 

When I use `nm`, that symbol does appear to be in `libfindorb.a`,
though, inside `ephem.o`. So, I'm not sure why it's not available to
the Pybind module at runtime (when doing "import findorb").
