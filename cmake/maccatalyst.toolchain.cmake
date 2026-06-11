# Mac Catalyst toolchain for cargo/cmake-rs builds (sentencepiece-sys).
#
# Catalyst ("macabi") targets build against the macOS SDK but with the iOS-on-macOS ABI, selected via
# the `arm64-apple-ios*-macabi` target triple. This mirrors the Rust `aarch64-apple-ios-macabi` target
# so the C/C++ (sentencepiece) and Rust objects link into one Catalyst slice.

# sentencepiece-sys references this macro (normally from ios.toolchain.cmake, which cmake-rs doesn't use).
macro(set_xcode_property TARGET XCODE_PROPERTY XCODE_VALUE XCODE_RELVERSION)
    set(XCODE_RELVERSION_I "${XCODE_RELVERSION}")
    if(XCODE_RELVERSION_I STREQUAL "All")
        set_property(TARGET ${TARGET} PROPERTY XCODE_ATTRIBUTE_${XCODE_PROPERTY} "${XCODE_VALUE}")
    else()
        set_property(TARGET ${TARGET} PROPERTY XCODE_ATTRIBUTE_${XCODE_PROPERTY}[variant=${XCODE_RELVERSION_I}] "${XCODE_VALUE}")
    endif()
endmacro(set_xcode_property)

set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_PROCESSOR arm64)
set(CMAKE_OSX_ARCHITECTURES arm64)
set(CMAKE_OSX_SYSROOT macosx)

# Build every TU and link for Mac Catalyst.
set(CMAKE_C_FLAGS_INIT "-target arm64-apple-ios14.0-macabi")
set(CMAKE_CXX_FLAGS_INIT "-target arm64-apple-ios14.0-macabi")
set(CMAKE_EXE_LINKER_FLAGS_INIT "-target arm64-apple-ios14.0-macabi")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "-target arm64-apple-ios14.0-macabi")

# Static libraries only — no code signing.
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED NO)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED NO)
