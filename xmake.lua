includes("external.lua")
add_requires("libprim")


set_config("toolchain","gcc")

target("librnd")
    set_kind("static")
    -- add_headerfiles("src/**.h")
    add_installfiles("src/**.h",{prefixdir="include/rnd/"})
    add_installfiles("src/**.tcc",{prefixdir="include/rnd/"})
    add_files("src/**.cc|**_TEST.cc")
    add_includedirs("src/")
    add_packages("libprim")
