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
$ export PATH=$GOBIN:$PATH
$ go install github.com/constabulary/gb/...
```
You should now hav a `gb` command in the `$GOPATH/bin` directory, and on your command `$PATH`. You can now remove the `gb` sources:

```
$ rm -rf src/github.com/constabulary
```
Next, fetch this repository into a fresh directory and build it with the `gb` command:
```
$ cd $HOME
$ git clone https://github.com/jbuberel/example_gb
$ cd example_gb
$ gb buid all
```
