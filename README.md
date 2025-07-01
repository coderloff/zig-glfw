# Zig-GLFW - A GLFW library packaged for the Zig build system

This is a fork of [glfw](https://github.com/glfw/glfw), packaged for Zig. Unnecessary files have been deleted, and the build system has been replaced with build.zig.

For the Ziggified GLFW binding, see: [coderloff/glfw](https://github.com/coderloff/zglfw).

## Updating

To update this repository, run `./update.sh` followed by `./verify.sh` to verify the repository contents.

## Verifying

For supply chain security reasons (e.g. to confirm no patches have been made to the code), a `git diff` command is provided to run and verify the contents of this repository:

```sh
./verify.sh
```

If nothing is printed, there is no diff. Deleted files, and changes to `README.md`, `build.zig`, `.github` CI files and `.gitignore` are ignored.