import cython
cimport lunar

def say_hello_to(name):
    print("Hello %s!" % name)


def mean_obliquity(time: cython.double) -> cython.double:
    return lunar.mean_obliquity(time)
        
