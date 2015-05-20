# Example project using the `gb` tool

This project was configured to use http://getgb.io/ as the build tool replacement and vendoring approach.

* External packages are vendored in a way that does not require import path rewriting.
* The application can no longer be built with `go build`.
* The replacement `gb` tool ignores the `$GOPATH` variable
* The `gb build` command will find all `src` directories in the sub-tree.

# To build this app:

```
$ mkdir gb
$ cd gb
$ export GOPATH=`pwd`
$ go get github.com/constabulary/gb/...
$ export GOBIN=$GOPATH/bin
$ go install github.com/constabulary/gb/...
$ go get github.com/jbuberel/example_gb/...
$ gb build all
github.com/constabulary/gb
github.com/gorilla/context
github.com/gorilla/mux
github.com/jbuberel/example_gb/vendor/src/github.com/gorilla/mux
github.com/jbuberel/example_gb/gbserver
github.com/constabulary/gb/cmd
github.com/constabulary/gb/cmd/gb
github.com/constabulary/gb/cmd/gb-env
github.com/constabulary/gb/cmd/gb-list

```
