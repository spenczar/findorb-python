from setuptools import Extension, setup
from Cython.Build import cythonize

setup(
    name='findorb',
    ext_modules=cythonize([
        Extension("findorb", ["findorb.pyx"],
                  libraries=["lunar"],
                  include_dirs=["/root/include"],
                  library_dirs=["/root/lib"],
                  extra_objects=["extern/find_orb/libfindorb.a", "extern/jpl_eph/libjpl.a", "extern/lunar/liblunar.a", "extern/sat_code/libsatell.a"],
                  language="c++")
    ]),
    zip_safe=False,
)

