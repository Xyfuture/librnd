includes("external.lua")

add_requires("libprim")

target("librnd")
    set_kind("static")
    add_headerfiles("src/**.h")
    add_files("src/**.cc|**_TEST.cc")
    add_includedirs("src/")
    add_packages("libprim")
