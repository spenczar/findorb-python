from setuptools import Extension, setup
from Cython.Build import cythonize

setup(
    name='findorb',
    ext_modules=cythonize([
        Extension("findorb", ["findorb.pyx"],
                  libraries=["lunar"],
                  include_dirs=["/root/include"],
                  library_dirs=["/root/lib"])
    ]),
    zip_safe=False,
)

