# Cleopatra: Tests
#
# Copyright (C) 2022 Goutham Krishna K V

test_sources = files(
  'cleopatra_test.vala'
)

# Executable
test_exe = executable(
  'cleopatra_test',
  test_sources,
  dependencies : dependencies,
  link_with : shlib,
  include_directories : [
    incdirs
  ]
)

# Tests
test('cleopatra', test_exe)
