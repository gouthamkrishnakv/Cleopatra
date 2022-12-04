# Cleopatra
# Email Library for Vala
#
# Copyright (C) 2022 Goutham Krishna K V

project(
  'Cleopatra',
  ['c', 'vala'],
  version: '0.1'
)

# Dependencies
dependencies = [
  dependency('libvala-0.56', required: true),
  dependency('glib-2.0', required: true),
  dependency('gobject-2.0', required: true),
  dependency('gee-0.8', required: true),
  dependency('gmime-3.0', required: true),
]

# Source Directory
subdir('src')
# Include Directories
incdirs = include_directories('.')

# These arguments are only used to build the shared library
# not the executables that use the library.
shlib = shared_library(
  'cleopatra',
  sources,
  dependencies: dependencies,
  install: true,
  install_dir: [true, true, true]
)

# Tests Directory
subdir('tests')

# Make this library usable as a Meson subproject.
cleopatra_dep = declare_dependency(
  include_directories: incdirs,
  link_with: shlib
)
