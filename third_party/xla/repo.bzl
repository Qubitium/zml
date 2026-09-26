load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def repo():
    git_repository(
        name = "xla",
        remote = "https://github.com/Qubitium/xla.git",
        commit = "7c254e56baaa366adec1f73f4377d40828711ffe",
        patches = [
            "//third_party/xla:cuda-root-path-local-defines.patch",
        ],
        patch_args = ["-p1"],
    )
