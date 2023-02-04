#include <pybind11/pybind11.h>
namespace py = pybind11;

#include "watdefs.h"
#include "brentmin.h"
#include "lunar.h"

double current_jd( void);                       /* elem_out.cpp */

PYBIND11_MODULE(findorb, m) {
    m.doc() = "findorb python bindings";
    m.def("current_jd", &current_jd, "current julian date");
      
    py::module lunar = m.def_submodule("lunar", "bindings to the Project Pluto lunar library");

    
    lunar.def("mean_obliquity", &mean_obliquity, "Calculate the earth's obliquity. "
	  "Input is time in julian centuries from 2000. "
	  "Return value is mean obliquity (epsilon sub 0) in radians. "
	  "Valid range is the years -8000 to +12000 (t = -100 to 100).",
	  py::arg("t_cen"));
    
}
