# Example project using the `gb` tool

This project was configured to use http://getgb.io/ as the build tool replacement and vendoring approach.

* External packages are vendored in a way that does not require import path rewriting.
* The application can no longer be built with `go build`.
* The replacement `gb` tool ignores the `$GOPATH` variable
* The `gb build` command will find all `src` directories in the sub-tree.
