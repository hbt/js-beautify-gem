#!/bin/sh

git submodule sync && git submodule init && git submodule update && git submodule foreach git fetch origin && git submodule foreach git submodule init && git submodule foreach git submodule update
