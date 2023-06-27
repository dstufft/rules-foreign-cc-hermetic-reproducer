load("@rules_foreign_cc//foreign_cc:defs.bzl", "configure_make")

configure_make(
    name = "simple",
    configure_in_place = True,
    lib_source = "//simple_lib:simple_srcs",
    targets = [
        "simple",
        "install",
    ],
)
