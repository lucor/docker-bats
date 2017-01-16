#!/usr/bin/env bats

VERSION=0.4.0

load '/usr/local/lib/bats/load.bash'

@test "Test bats image version" {
	run bats -v
    [ $status -eq 0 ]
    [ "${lines[0]}" = "Bats ${VERSION}" ]
}

@test "Test assert helper has been loaded" {
	run bats -v
    assert_success
    assert_output --partial ${VERSION}
}

@test "Test file helper has been loaded" {
	assert_file_exist /usr/local/lib/bats/load.bash
}
