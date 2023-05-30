# SECSIDH

## Building

```sh
# Only necessary first time (generally)
mkdir build && cd build
cmake .. 
# If you have Ninja (faster builds)
cmake -GNinja ..
# If you want an extra variant
# (see CMakeLists.txt near top for other options)
cmake -DSECSIDH_ENABLE_4095d221=Yes ..
# Release build
cmake -DCMAKE_BUILD_TYPE=Release ..
# combined
cmake -GNinja -DSECSIDH_ENABLE_4095d221=Yes -DCMAKE_BUILD_TYPE=Release ..

# Building
make
# Or with Ninja
ninja

# Testing
make all test
# or
ninja all
ninja test
```
