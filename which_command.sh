#!/bin/bash

if which techbuild >/dev/null 2>&1; then // techbuild is exe file, which command used for chck if exist on path or not
//> /dev/null send the stout to /dev/null where it is garbage and 2>&1 so send stderr to the same place as stdout
//if which testbuild runs and executes, it will give 0 if not then it will non zero num like 1
echo "techbuild installed"
else
echo "techbuild not installed"
fi