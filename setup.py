from glob import glob
from setuptools import setup
from pybind11.setup_helpers import Pybind11Extension

ext_modules = [
    Pybind11Extension(
        "findorb",
        ["src/findorb.cpp"],
        library_dirs=["/root/lib"],
        include_dirs=["/root/include"],
        libraries=["lunar", "findorb", "jpl", "satell"],
    ),
]

setup(
    name="findorb",
    ext_modules=ext_modules,
)
