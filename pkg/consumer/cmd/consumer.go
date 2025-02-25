// Copyright 2021 Saferwall. All rights reserved.
// Use of this source code is governed by Apache v2 license
// license that can be found in the LICENSE file.

package main

import (
	"log"

	"github.com/saferwall/saferwall/pkg/consumer"
)

func main() {

	// Create a new consumer.
	c, err := consumer.New()
	if err != nil {
		log.Fatal(err)
	}

	if err := c.Start(); err != nil {
		log.Fatal("failed to start consumer instance with error", err)
		return
	}
}
