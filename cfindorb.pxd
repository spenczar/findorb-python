from libcpp cimport bool

cdef extern from "extern/lunar/watdefs.h":
    pass

cdef extern from "<stdbool.h>":
    pass

cdef extern from "extern/find_orb/mpc_obs.h":
    int integrate_orbit(double *orbit, const double t0, const double t1)
