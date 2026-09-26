load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def repo():
    git_repository(
        name = "xla",
        remote = "https://github.com/Qubitium/xla.git",
        commit = "6d43ef12322a2082a946cc9d091af0e73ed3547d",
        patches = [
            "//third_party/xla:cuda-root-path-local-defines.patch",
        ],
        patch_args = ["-p1"],
    )
