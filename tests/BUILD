load("//:myrule.bzl", "run_my_bin")


run_my_bin(
    name = "nested_bin_1",
    output_file = "output_1.txt",
    tool = "@sub_1//npm_bin/bin:run_me_app"
)

run_my_bin(
    name = "nested_bin_2",
    output_file = "output_2.txt",
    tool = "@sub_2//npm_bin/bin:run_me_app"
)

sh_test(
    name = "my_test_1",
    srcs = ["test.sh"],
    data = [":output_1.txt"]
)

sh_test(
    name = "my_test_2",
    srcs = ["test.sh"],
    data = [":output_2.txt"]
)