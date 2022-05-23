cmake_minimum_required(VERSION 3.0...99.99.99 FATAL_ERROR)

cmake_policy(PUSH)
cmake_policy(SET CMP0048 NEW)

set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake" "${CMAKE_CURRENT_BINARY_DIR}/cmake/")

file(READ "${CMAKE_CURRENT_SOURCE_DIR}/VERSION" CMAKEMM_VERSION)
string(STRIP ${CMAKEMM_VERSION} CMAKEMM_VERSION)

# cmake-lint: disable=C0103
if(${CMAKE_VERSION} VERSION_LESS 3.9)
  project(cmakemm VERSION "${CMAKEMM_VERSION}" LANGUAGES NONE)
  set(PROJECT_DESCRIPTION "CMake module manager")
  set(PROJECT_HOMEPAGE_URL "https://github.com/cmake-module-manager/cmakemm")
  set(${PROJECT_NAME}_DESCRIPTION "${PROJECT_DESCRIPTION}")
  set(${PROJECT_NAME}_HOMEPAGE_URL "${PROJECT_HOMEPAGE_URL}")
elseif(${CMAKE_VERSION} VERSION_LESS 3.12)
  project(cmakemm VERSION "${CMAKEMM_VERSION}" DESCRIPTION "CMake module manager" LANGUAGES NONE)
  set(PROJECT_HOMEPAGE_URL "https://github.com/cmake-module-manager/cmakemm")
  set(${PROJECT_NAME}_HOMEPAGE_URL "${PROJECT_HOMEPAGE_URL}")
else()
  project(cmakemm VERSION "${CMAKEMM_VERSION}" DESCRIPTION "CMake module manager" HOMEPAGE_URL "https://github.com/cmake-module-manager/cmakemm" LANGUAGES NONE)
endif()
#pass

if(PROJECT_VERSION_MAJOR STREQUAL "")
  set(PROJECT_VERSION_MAJOR 0)
  set(${PROJECT_NAME}_VERSION_MAJOR 0)
endif()
if(PROJECT_VERSION_MINOR STREQUAL "")
  set(PROJECT_VERSION_MINOR 0)
  set(${PROJECT_NAME}_VERSION_MINOR 0)
endif()
if(PROJECT_VERSION_PATCH STREQUAL "")
  set(PROJECT_VERSION_PATCH 0)
  set(${PROJECT_NAME}_VERSION_PATCH 0)
endif()
if(PROJECT_VERSION_TWEAK STREQUAL "")
  set(PROJECT_VERSION_TWEAK 0)
  set(${PROJECT_NAME}_VERSION_TWEAK 0)
endif()

set(PROJECT_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}.${PROJECT_VERSION_TWEAK}")
set(${PROJECT_NAME}_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}.${PROJECT_VERSION_TWEAK}")

include(GetCMakeMM)

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/cmake/Changelog.cmake.in" "${CMAKE_CURRENT_BINARY_DIR}/cmake/Changelog.cmake" @ONLY)

message(STATUS "project version : ${PROJECT_VERSION}")
message(STATUS "cmakemm version : ${cmakemm_VERSION}")
message(STATUS "project version major : ${PROJECT_VERSION_MAJOR}")
message(STATUS "project version minor : ${PROJECT_VERSION_MINOR}")
message(STATUS "project version patch : ${PROJECT_VERSION_PATCH}")
message(STATUS "project version tweak : ${PROJECT_VERSION_TWEAK}")
message(STATUS "cmakemm version major : ${cmakemm_VERSION_MAJOR}")
message(STATUS "cmakemm version minor : ${cmakemm_VERSION_MINOR}")
message(STATUS "cmakemm version patch : ${cmakemm_VERSION_PATCH}")
message(STATUS "cmakemm version tweak : ${cmakemm_VERSION_TWEAK}")
message(STATUS "project URL : ${PROJECT_HOMEPAGE_URL}")
message(STATUS "cmakemm URL : ${cmakemm_HOMEPAGE_URL}")
message(STATUS "project description : ${PROJECT_DESCRIPTION}")
message(STATUS "cmakemm description : ${cmakemm_DESCRIPTION}")

message(STATUS "CMMM_LATEST_VERSION version : ${CMMM_LATEST_VERSION}")
message(STATUS "GET_CMMM_LATEST_VERSION : ${GET_CMMM_LATEST_VERSION}")

cmake_policy(POP)
