# cmake-format: off
if(GETCMMM_INCLUDED)
  return()
endif()
set(GETCMMM_INCLUDED TRUE)

# cmake-lint: disable=C0103
set(GET_CMMM_VERSION "1.0.0" CACHE INTERNAL "Loaded version of GetCMakeMM")
# pass

execute_process(COMMAND ${CMAKE_COMMAND} -E env CLICOLOR_FORCE=1 ${CMAKE_COMMAND} -E cmake_echo_color --no-newline --red toto)

# cmake-format: on
