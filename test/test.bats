#!/usr/bin/env bats

@test "should not throw an error if help wanted" {
  run ./bin/data-uri -h
  [ "$status" -eq 0 ]
  [ "$output" = "Usage: datauri -f /path/to/image.png | pbcopy" ]
}

@test "should throw an error if file could not be found" {
  run ./bin/data-uri -f not-available.png
  [ "$status" -eq 1 ]
  [ "$output" = "error: file not found" ]
}

@test "should prefix output with encoding" {
  ./bin/data-uri -f test/fixture.png | grep ";base64"
}

@test "should prefix output with data:type" {
  ./bin/data-uri -f test/fixture.png | grep "data:image/png"
}

@test "should match the fixture generated from the same file" {
  diff <(cat test/fixture.txt) <(./bin/data-uri -f test/fixture.png)
}
