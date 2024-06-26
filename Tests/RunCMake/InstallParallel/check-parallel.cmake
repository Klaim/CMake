include(read-ninja-install.cmake)

foreach(line ${lines})
  string(REPLACE "\t" ";" line ${line})
  list(GET line 0 start)
  list(GET line 1 end)
  list(APPEND start_times ${start})
  list(APPEND end_times ${end})
endforeach()
list(GET start_times 1 start_2)
list(GET end_times 0 end_1)

if (NOT start_2 LESS end_1)
  message(FATAL_ERROR "Install is not parallel")
endif()
