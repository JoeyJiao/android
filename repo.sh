#!/bin/bash
repo init -u git://github.com/CyanogenMod/android.git -b gingerbread --repo-url=git://codeaurora.org/tools/repo.git
repo sync -j32
while [ $? = 1 ]; do
	echo "repo sync failed, try again automatically"
	sleep 3
	repo sync -j32
done
