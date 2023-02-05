# findorb-python

An experiment to build Python bindings to find_orb

This can currently build a Python module which links against static,
compiled-in libraries of all the pieces in the `find_orb` suite
(`find_orb`, `lunar`, `sat_code`, and `jpl_eph`).

## Try it yourself

Clone this repo.

Run the `post_clone.sh` script from the repo root, which fetches the find_orb code and applies patches.

`docker build -it findorb-python .` to build findorb-python in a docker container

`docker run -it --rm findorb-python bash` to launch the container.

Once there, you can run 'python3' for a python shell, and then `import findorb`. There's one function which works, `mean_obliquity` uses `liblunar`'s `mean_obliquity` function:
```
>>> import findorb
>>> findorb.mean_obliquity(0.2)
0.4090474166917212
```

There's another function, `findorb.integrate_orbit`, which doesn't yet work - but it _is there_, which is a partial success. I think it fails because of an assertion in find_orb about configuration data:
```
>>> findorb.integrate_orbit
<built-in function integrate_orbit>
>>> findorb.integrate_orbit(1, 2, 3)
python3: mpc_obs.cpp:4804: int load_default_environment_file(): Assertion `!rval' failed.
Aborted
```
