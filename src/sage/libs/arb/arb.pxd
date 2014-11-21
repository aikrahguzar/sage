from sage.libs.arb.arf cimport arf_t
from sage.libs.arb.mag cimport mag_t
from sage.libs.mpfr cimport mpfr_t

cdef extern from "arb.h":
     ctypedef struct arb_struct:
         pass
     ctypedef arb_struct[1] arb_t

     void arb_init(arb_t x)
     void arb_clear(arb_t x)
     arf_t arb_midref(arb_t x)
     mag_t arb_radref(arb_t x)
     long arb_bits(arb_t x)
     void arb_set_interval_mpfr(arb_t x, const mpfr_t a, const mpfr_t b, long prec)
     void arb_get_interval_mpfr(mpfr_t a, mpfr_t b, const arb_t x)
     void arb_print(const arb_t x)
     void arb_set_ui(arb_t x, unsigned long y)
     void arb_digamma(arb_t y, const arb_t x, long prec)
     void arb_zeta(arb_t z, const arb_t s, long prec)
