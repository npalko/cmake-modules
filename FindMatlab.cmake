# Find MATLAB
#
# Usage: find_package (Matlab)
#
#  MATLAB_FOUND           TRUE if found
#  MATLAB_INCLUDE_DIR     mex.h
#  MATLAB_LIBRARY         libmx, libmex, libmat


#  Matlab_INCLUDE_DIR  include path for mex.h, engine.h
#  Matlab_LIBRARY    required libraries: libmex, etc
#  Matlab_MAT_LIBRARY  path to libmat.lib
#  Matlab_MEX_LIBRARY  path to libmex.lib
#  Matlab_MX_LIBRARY   path to libmx.lib



set (Matlab_FOUND TRUE)


# Matlab_ROOT
# 	OS X:			/Applications/MATLAB_R2009b.app
# 	Windows:	$ENV{PROGRAMFILES}/MATLAB/R2009a


# [HKEY_LOCAL_MACHINE\\SOFTWARE\\MathWorks\\MATLAB\\7.0;MATLABROOT]
# IF(CMAKE_SIZEOF_VOID_P EQUAL 4)
# MATLAB|.app




set (Matlab_ROOT /Applications/MATLAB_R2009b.app)


# Include directory
set (Matlab_INCLUDE_DIR ${Matlab_ROOT}/extern/include)


# Library

if (WIN32)
  set (Matlab_LIBRARY ${Matlab_ROOT}/extern/lib/win32/microsoft)
elseif (APPLE)
  set (Matlab_LIBRARY ${Matlab_ROOT}/bin/maci64)
else (WIN32) # BSD
  set (Matlab_LIBRARY ${Matlab_ROOT}/foo)
endif (WIN32)


find_library (Matlab_MEX_LIBRARY mex ${Matlab_LIBRARY})
find_library (Matlab_MX_LIBRARY mx ${Matlab_LIBRARY})
find_library (Matlab_MAT_LIBRARY mat ${Matlab_LIBRARY})

message ("-- MATLAB version: 2009b")
message ("--   include: "${Matlab_INCLUDE_DIR})
message ("--   mex: "${Matlab_MEX_LIBRARY})

