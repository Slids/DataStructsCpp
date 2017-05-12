# Set the current directory
include_directories(${DATASTRUCTURES_SOURCE_DIR}/trie)
link_directories(${DATASTRUCTURES_BINARY_DIR}/trie)


# Add the trie llibrary
add_library(trie_lib trie.cc)

# Add the test
add_executable(main main.cc)
target_link_libraries(main trie_lib)
