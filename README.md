# Zig-GLFW - A GLFW library packaged for the Zig build system

This is a fork of [glfw](https://github.com/glfw/glfw) and unmaintained GLFW repository from [Hexops](https://github.com/hexops), packaged for Zig. Unnecessary files have been deleted, and the build system has been replaced with build.zig.

For an example of how to use this library, check out the [coderloff/zig-glfw-example](https://github.com/coderloff/zig-glfw-example).

For the Ziggified GLFW binding, see: [coderloff/zglfw](https://github.com/coderloff/zglfw).

## Adding to your project

To add this library to your Zig project, first fetch the repository to add the dependency to `build.zig.zon`:
```bash
zig fetch --save https://github.com/coderloff/zig-glfw/archive/[latest-commit-hash].zip
```

Latest commit hash can be acquired by entering `Commits` tab on the repository and pressing the `Copy full SHA` button next to the latest commit.

Then, add the dependency to your `build.zig` file:
```zig
...

const glfw_dep = b.dependency("zig_glfw", .{
    .target = target,
    .optimize = optimize,
});
your_module.linkLibrary(glfw_dep.artifact("zig-glfw"));

...
```

## Updating

To update this repository, run `./update.sh` followed by `./verify.sh` to verify the repository contents.

## Verifying

For supply chain security reasons (e.g. to confirm no patches have been made to the code), a `git diff` command is provided to run and verify the contents of this repository:

```sh
./verify.sh
```

If nothing is printed, there is no diff. Deleted files, and changes to `README.md`, `build.zig`, `.github` CI files and `.gitignore` are ignored.