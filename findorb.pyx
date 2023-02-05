import cython
cimport lunar
cimport cfindorb

def say_hello_to(name):
    print("Hello %s!" % name)


def mean_obliquity(time: cython.double) -> cython.double:
    return lunar.mean_obliquity(time)


def integrate_orbit(orbit: cython.double, t0: cython.double, t1: cython.double):
    cfindorb.integrate_orbit(cython.address(orbit), t0, t1)
