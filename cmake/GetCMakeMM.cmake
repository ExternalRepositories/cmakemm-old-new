# cmake-format: off
if(GETCMMM_INCLUDED)
  return()
endif()
set(GETCMMM_INCLUDED TRUE)

if(CMAKE_VERSION VERSION_LESS 3.1)
	set(CMMM_ENV "")
  set(CMMM_ECHO "echo")
  set(CMMM_RED "")
  set(CMMM_MAGENTA "")
else()
	set(CMMM_ENV "${CMAKE_COMMAND} -E env CLICOLOR_FORCE=1")
  set(CMMM_ECHO "cmake_echo_color")
  set(CMMM_RED "--red")
  set(CMMM_MAGENTA "--purple")
endif()

# cmake-lint: disable=C0103
set(GET_CMMM_VERSION "1.0.0" CACHE INTERNAL "Loaded version of GetCMakeMM")
# pass

execute_process(COMMAND ${CMAKE_COMMAND} -E env CLICOLOR_FORCE=1 ${CMAKE_COMMAND} -E ${CMMM_ECHO} ${CMMM_RED} toto)

# cmake-format: on
