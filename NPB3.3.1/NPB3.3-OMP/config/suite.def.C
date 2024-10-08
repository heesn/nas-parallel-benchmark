# config/suite.def
# This file is used to build several benchmarks with a single command. 
# Typing "make suite" in the main directory will build all the benchmarks
# specified in this file. 
# Each line of this file contains a benchmark name and the class.
# The name is one of "cg", "is", "dc", "ep", mg", "ft", "sp",
#  "bt", "lu", and "ua". 
# The class is one of "S", "W", "A" through "E" 
# (except that no classes C,D,E for DC and no class E for IS and UA).
# No blank lines. 
# The following example builds sample sizes of all benchmarks. 
ft	C	
mg	C
sp	C
lu	C
bt	C
is	C
ep	C
cg	C
ua	C
dc	C
