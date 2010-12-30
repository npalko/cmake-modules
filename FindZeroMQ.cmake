# FindZeroMQ
#
# Defines:
#  ZeroMQ_FOUND
#	 ZeroMQ_LIBRARY				full path to library
#	 ZeroMQ_LIBRARY_DIR		folder for library
#  ZeroMQ_INCLUDE_DIR		folder for include files


#  FIND_FILE(), FIND_LIBRARY(), FIND_PATH() and FIND_PROGRAM()
# ${CMAKE_SHARED_LIBRARY_SUFFIX}

set (ZeroMQ_FOUND TRUE)

find_library (ZeroMQ_LIBRARY zmq)

