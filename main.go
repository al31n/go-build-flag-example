package main

import (
	"fmt"

	"github.com/al31n/go-build-flag-example/pkg/version"
)

func main() {
	fmt.Println(version.GetVersion())
}
