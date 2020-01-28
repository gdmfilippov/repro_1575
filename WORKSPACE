workspace(
    name = "gerrit",
    managed_directories = {
        "@sub_1": ["sub_1/node_modules"],
        "@sub_2": ["sub_2/node_modules"],
    },
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "591d2945b09ecc89fde53e56dd54cfac93322df3bc9d4747cb897ce67ba8cdbf",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/1.2.0/rules_nodejs-1.2.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "yarn_install")

yarn_install(
    name = "sub_1",
    package_json = "//:sub_1/package.json",
    yarn_lock = "//:sub_1/yarn.lock",
)

yarn_install(
    name = "sub_2",
    package_json = "//:sub_2/package.json",
    yarn_lock = "//:sub_2/yarn.lock",
)