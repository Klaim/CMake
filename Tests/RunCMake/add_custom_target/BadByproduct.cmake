set(CMAKE_DISABLE_SOURCE_CHANGES ON)

add_custom_target(c BYPRODUCTS "a<" COMMAND d)
add_custom_target(e BYPRODUCTS "a>" COMMAND f)
add_custom_target(g BYPRODUCTS "$<CONFIG>/$<ANGLE-R>" COMMAND h)
add_custom_target(i BYPRODUCTS ${CMAKE_CURRENT_SOURCE_DIR}/j COMMAND k)
add_custom_target(l BYPRODUCTS "$<TARGET_PROPERTY:prop>" COMMAND m)
add_custom_target(n BYPRODUCTS "$<OUTPUT_CONFIG:n>" COMMAND o)
add_custom_target(p BYPRODUCTS "$<COMMAND_CONFIG:p>" COMMAND q)
