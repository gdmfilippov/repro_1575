load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary", "npm_package_bin")

def run_my_bin(name, output_file, tool):
    npm_package_bin(
        name = name,
        tool = tool,
        outs = [output_file],
        args = ["$@"],
    )
