cdef extern from "extern/lunar/watdefs.h":
    pass

cdef extern from "extern/lunar/lunar.h":
    double mean_obliquity(const double t_cen)

