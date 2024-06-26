set(CMAKE_DISABLE_SOURCE_CHANGES ON)

add_custom_command(OUTPUT b BYPRODUCTS "a<")
add_custom_command(OUTPUT c BYPRODUCTS "a>")
add_custom_command(OUTPUT d BYPRODUCTS "$<CONFIG>/$<ANGLE-R>")
add_custom_command(OUTPUT e BYPRODUCTS ${CMAKE_CURRENT_SOURCE_DIR}/f)
add_custom_command(OUTPUT f BYPRODUCTS "$<TARGET_PROPERTY:prop>")
add_custom_command(OUTPUT h BYPRODUCTS "$<OUTPUT_CONFIG:h>")
add_custom_command(OUTPUT i BYPRODUCTS "$<COMMAND_CONFIG:i>")
