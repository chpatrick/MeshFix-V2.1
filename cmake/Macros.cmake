function(add_folder FOLDER_NAME)
    set(filters "")
    foreach(f ${ARGN})
        set(filters ${filters} "${FOLDER_NAME}/${f}")
    endforeach()

    file(GLOB LOCAL_FILES ${filters})
    set(SOURCE_FILES ${SOURCE_FILES} ${LOCAL_FILES} PARENT_SCOPE)

    source_group("${FOLDER_NAME}" FILES ${LOCAL_FILES})
    source_group("${FOLDER_NAME}\\shaders" FILES ${LOCAL_SHADERS})
endfunction()