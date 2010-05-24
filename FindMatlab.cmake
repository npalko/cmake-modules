# Find MATLAB
#
# Usage: find_package (Matlab)
#
#  MATLAB_FOUND           TRUE if found
#  MATLAB_INCLUDE_DIR     mex.h
#  MATLAB_LIBRARY         libmx, libmex, libmat


find_path(MATLAB_INCLUDE_DIR mex.h
  $ENV{PROGRAMFILES}/MATLAB/R2009a/extern/include
  )

find_path(MATLAB_LIBRARY libmx${CMAKE_STATIC_LIBRARY_SUFFIX} 
  $ENV{PROGRAMFILES}/MATLAB/R2009a/extern/lib/win32/microsoft
  )

set (MATLAB_FOUND TRUE)
#set (MATLAB_INCLUDE_DIR ${MATLAB_INCLUDE_DIR})
#set (MATLAB_LIBRARY ${MATLAB_LIBRARY})



