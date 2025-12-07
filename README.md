# Multi Module Repos Bug in bazel

When you have two modules where one module depends on the other, you cannot use the repos of the dependent module. However, due to how bzlmod works, it also means you cannot declare repos with the same name.

I think two reasonable solutions are either:
1. You can declare repos with the same name
2. You don't need to declare the repo in the root module, you just "import" the dependent one

## How to use:

Assuming you have bazel setup on your computer already

```sh
cd mod1
bazel build //:swift # This will fail
bazel build //:rust # This will fail
# If you edit the MODULE.bazel to remove the bazel_dep on mod2, the above commands succeed
```
