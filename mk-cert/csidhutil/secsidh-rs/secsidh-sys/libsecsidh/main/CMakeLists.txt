# ===================
# CSIDH: Full torsion search
# --------------------------------------------------------------

macro(SECSIDH_FULLTORSIONPOINTS_EXE bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		# needs to be explicitly targeted to build
		# add_executable(fulltorsion-points-${bits}.main EXCLUDE_FROM_ALL fulltorsion-points.c)
		add_executable(fulltorsion-points-${bits}.main EXCLUDE_FROM_ALL fulltorsion-points.c)

		target_include_directories(
			fulltorsion-points-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CTIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
            ${CMAKE_SOURCE_DIR}/src/common/
            ${CMAKE_SOURCE_DIR}/src/CSIDH/
		)
        target_compile_definitions(fulltorsion-points-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(fulltorsion-points-${bits}.main PRIVATE "P${bits}" "CSIDH")
		# target_link_libraries(fulltorsion-points-${bits}.main
		# 	PUBLIC
        #     elligator-ctidh${bits}

		# 	fp-${bits}
		# 	uint-${bits}
		# )
        target_link_libraries(fulltorsion-points-${bits}.main PUBLIC secsidh)
	endif()
endmacro()

# macro(SECSIDH_CSIDH_EXE bits)
# 	if(SECSIDH_ENABLE_CSIDH${bits})
# 		add_executable(csidh-${bits}.main csidh.c)
# 		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
# 			target_compile_options(csidh-${bits}.main PUBLIC -Wno-language-extension-token)
# 		endif()
# 		set_target_properties(csidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
# 		target_include_directories(
# 			csidh-${bits}.main
# 			PUBLIC
# 			${CMAKE_SOURCE_DIR}/src/CSIDH
#             ${CMAKE_SOURCE_DIR}/src/common/fp
# 		)
# 		target_link_libraries(csidh-${bits}.main PUBLIC secsidh)
# 		target_compile_definitions(csidh-${bits}.main PUBLIC BITS=${bits} NAMESPACE_NAME=${bits})
#         if(SECSIDH_USE_GMP)
#             target_compile_definitions(csidh-${bits}.main PRIVATE "GMP")
#         endif()
#         if(SECSIDH_USE_AVX2)
#             target_compile_definitions(csidh-${bits}.main PRIVATE "AVX2")
#         endif()
# 		add_test(NAME csidh-${bits} COMMAND csidh-${bits}.main)
# 	endif()
# endmacro()

macro(SECSIDH_CSIDH_EXE bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(csidh-${bits}.main csidh.c)
		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
			target_compile_options(csidh-${bits}.main PUBLIC -Wno-language-extension-token)
		endif()
		set_target_properties(csidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			csidh-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH/.
            ${CMAKE_SOURCE_DIR}/src/common
            ${CMAKE_SOURCE_DIR}/src/common/fp
		)
		target_link_libraries(csidh-${bits}.main PUBLIC secsidh)
        target_compile_definitions(csidh-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(csidh-${bits}.main PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_GMP)
            target_compile_definitions(csidh-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(csidh-${bits}.main PRIVATE "AVX2")
        endif()

		add_test(NAME csidh-${bits} COMMAND csidh-${bits}.main)
	endif()
endmacro()

macro(SECSIDH_CTIDH_EXE bits)
	if(SECSIDH_ENABLE_CTIDH${bits})
		add_executable(ctidh-${bits}.main ctidh.c)
		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
			target_compile_options(ctidh-${bits}.main PUBLIC -Wno-language-extension-token)
		endif()
		set_target_properties(ctidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			ctidh-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CTIDH/.
            # ${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
            ${CMAKE_SOURCE_DIR}/src/common
            ${CMAKE_SOURCE_DIR}/src/common/fp
		)
		target_link_libraries(ctidh-${bits}.main PUBLIC secsidh)
        target_compile_definitions(ctidh-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(ctidh-${bits}.main PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "KARATSUBA")
        endif()          
        if(SECSIDH_USE_GMP)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "AVX2")
        endif()

		add_test(NAME ctidh-${bits} COMMAND ctidh-${bits}.main)
	endif()
endmacro()

# macro(SECSIDH_GENERATE_HEADER_EXE bits)
# 	if(SECSIDH_ENABLE_CSIDH${bits})
# 		add_executable(generate-header-csidh${bits}.main generate-header.c)
# 		target_compile_options(generate-header-csidh${bits}.main PUBLIC -Wno-language-extension-token)
# 		set_target_properties(generate-header-csidh${bits}.main PROPERTIES C_EXTENSIONS ON)
# 		target_include_directories(
# 			generate-header-csidh${bits}.main
# 			PUBLIC
# 			${CMAKE_SOURCE_DIR}/src/CSIDH
#             ${CMAKE_SOURCE_DIR}/src/common/fp
# 			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
# 		)
# 		target_compile_definitions(generate-header-csidh${bits}.main PRIVATE PRIME="${bits}" NAMESPACE_NAME=${bits})
#         if(SECSIDH_USE_GMP)
#             target_compile_definitions(generate-header-csidh${bits}.main PRIVATE "GMP")
#         endif()
#         if(SECSIDH_USE_AVX2)
#             target_compile_definitions(generate-header-csidh${bits}.main PRIVATE "AVX2")
#         endif()

#         target_link_libraries(generate-header-csidh${bits}.main PUBLIC secsidh-csidh${bits})

# 		add_test(NAME generate-header-${bits} COMMAND generate-header-csidh${bits}.main)
# 	endif()
# 	# if(SECSIDH_ENABLE_CSIDH${bits})
# 	# 	add_executable(generate-header-ctidh${bits}.main generate-header.c)
# 	# 	target_compile_options(generate-header-ctidh${bits}.main PUBLIC -Wno-language-extension-token)
# 	# 	set_target_properties(generate-header-ctidh${bits}.main PROPERTIES C_EXTENSIONS ON)
# 	# 	target_include_directories(
# 	# 		generate-header-ctidh${bits}.main
# 	# 		PUBLIC
# 	# 		${CMAKE_SOURCE_DIR}/src
# 	# 		${CMAKE_SOURCE_DIR}/src/csidh-${bits}
# 	# 	)
# 	# 	target_compile_definitions(generate-header-ctidh${bits}.main PRIVATE "CTIDH" PRIME="${bits}" "P${bits}" NAMESPACE_NAME=${bits})
# 	# 	target_link_libraries(generate-header-ctidh${bits}.main PUBLIC secsidh-ctidh${bits})

# 	# 	add_test(NAME generate-header-ctidh${bits} COMMAND generate-header-ctidh${bits}.main)
# 	# endif()
# endmacro()

macro(SECSIDH_BENCH_EXE bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(bench-csidh-${bits}.main bench.c)
		target_compile_options(bench-csidh-${bits}.main PUBLIC -Wno-language-extension-token)
		set_target_properties(bench-csidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			bench-csidh-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/common
		)
		target_link_libraries(bench-csidh-${bits}.main PUBLIC secsidh)
        target_compile_definitions(bench-csidh-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(bench-csidh-${bits}.main PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(bench-csidh-${bits}.main PRIVATE "KARATSUBA")
        endif()      
        if(SECSIDH_USE_GMP)
            target_compile_definitions(bench-csidh-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(bench-csidh-${bits}.main PRIVATE "AVX2")
        endif()
		target_link_libraries(bench-csidh-${bits}.main PUBLIC secsidh-csidh${bits} m)
	endif()
endmacro()

# macro(SECSIDH_BENCH_CTIDH_EXE bits)
# 	if(SECSIDH_ENABLE_${bits})
# 		add_executable(bench-ctidh-${bits}.main bench.c)
# 		target_compile_options(bench-ctidh-${bits}.main PUBLIC -Wno-language-extension-token)
# 		set_target_properties(bench-ctidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
# 		target_include_directories(
# 			bench-ctidh-${bits}.main
# 			PUBLIC
# 			${CMAKE_SOURCE_DIR}/src
# 			${CMAKE_SOURCE_DIR}/src/csidh-${bits}
# 		)
# 		target_compile_definitions(bench-ctidh-${bits}.main PUBLIC BITS=${bits})
#         target_compile_definitions(ctidh-${bits}.main PUBLIC "P${bits}" "CTIDH")
#         target_link_libraries(bench-ctidh-${bits}.main PUBLIC secsidh-ctidh${bits} m)

# 	endif()
# endmacro()

macro(SECSIDH_BENCH_MULT_EXE bits)
	if(SECSIDH_ENABLE_${bits})
		add_executable(bench_mult_-${bits}.main bench_mult.c)
		target_compile_options(bench_mult_-${bits}.main PUBLIC -Wno-language-extension-token)
		set_target_properties(bench_mult_-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			bench_mult_-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src
			${CMAKE_SOURCE_DIR}/src/csidh-${bits}
		)
		target_compile_definitions(bench_mult_-${bits}.main PUBLIC BITS=${bits})
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(bench_mult_-${bits}.main PRIVATE "KARATSUBA")
        endif()              
        if(SECSIDH_USE_GMP)
            target_compile_definitions(bench_mult_-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(bench_mult_-${bits}.main PRIVATE "AVX2")
        endif()
		target_link_libraries(bench_mult_-${bits}.main PUBLIC secsidh-csidh${bits} m)
	endif()
endmacro()





foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CTIDH})
	SECSIDH_CTIDH_EXE(${bits})
	# SECSIDH_BENCH_CTIDH_EXE(${bits})
endforeach()

foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})
    #SECSIDH_FULLTORSIONPOINTS_EXE(${bits})
    SECSIDH_CSIDH_EXE(${bits})
    # SECSIDH_BENCH_MULT_EXE(${bits})
	SECSIDH_BENCH_EXE(${bits})

    # SECSIDH_GENERATE_HEADER_EXE(${bits})
endforeach()

