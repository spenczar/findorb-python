#include <pybind11/pybind11.h>
namespace py = pybind11;

#include "watdefs.h"
#include "lunar.h"

PYBIND11_MODULE(lunar, m) {
    m.doc() = "findorb.lunar python bindings";
    m.def("mean_obliquity", &mean_obliquity, "Calculate the earth's obliquity. "
	  "Input is time in julian centuries from 2000. "
	  "Return value is mean obliquity (epsilon sub 0) in radians. "
	  "Valid range is the years -8000 to +12000 (t = -100 to 100).",
	  py::arg("t_cen"));        
}
