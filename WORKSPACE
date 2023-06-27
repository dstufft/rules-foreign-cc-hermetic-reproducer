load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

HERMETIC_CC_TOOLCHAIN_VERSION = "v2.0.0"

http_archive(
    name = "hermetic_cc_toolchain",
    sha256 = "57f03a6c29793e8add7bd64186fc8066d23b5ffd06fe9cc6b0b8c499914d3a65",
    urls = [
        "https://mirror.bazel.build/github.com/uber/hermetic_cc_toolchain/releases/download/{0}/hermetic_cc_toolchain-{0}.tar.gz".format(HERMETIC_CC_TOOLCHAIN_VERSION),
        "https://github.com/uber/hermetic_cc_toolchain/releases/download/{0}/hermetic_cc_toolchain-{0}.tar.gz".format(HERMETIC_CC_TOOLCHAIN_VERSION),
    ],
)

load("@hermetic_cc_toolchain//toolchain:defs.bzl", zig_toolchains = "toolchains")

zig_toolchains()

register_toolchains(
    "@zig_sdk//toolchain:linux_amd64_gnu.2.28",
    "@zig_sdk//toolchain:linux_arm64_gnu.2.28",
    "@zig_sdk//toolchain:darwin_amd64",
    "@zig_sdk//toolchain:darwin_arm64",
    "@zig_sdk//toolchain:windows_amd64",
    "@zig_sdk//toolchain:windows_arm64",
)

# Upstream
# http_archive(
#     name = "rules_foreign_cc",
#     sha256 = "059d1d1ec0819b316d05eb7f9f0e07c5cf9636e0cbb224d445162f2d0690191e",
#     strip_prefix = "rules_foreign_cc-6ecc134b114f6e086537f5f0148d166467042226",
#     url = "https://github.com/bazelbuild/rules_foreign_cc/archive/6ecc134b114f6e086537f5f0148d166467042226.tar.gz",
# )

# Partially Patched?
http_archive(
    name = "rules_foreign_cc",
    sha256 = "30a4b9a44b0bcd693732e7881fbc69c8e6ef772685a925b36c485197bb2e5d5b",
    strip_prefix = "rules_foreign_cc-586b3fa981f829e4f2e0b1e67e48905dd9bdc352",
    url = "https://github.com/dstufft/rules_foreign_cc/archive/586b3fa981f829e4f2e0b1e67e48905dd9bdc352.tar.gz",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies(
    register_built_pkgconfig_toolchain = True,
    # register_built_tools = True,
    # register_default_tools = True,
    # register_preinstalled_tools = False,
    # register_toolchains = False,
)
