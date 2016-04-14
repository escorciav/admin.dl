#!/usr/bin/env bash

# create user escorciav and group ivul
groupadd ivul
useradd escorciav -g ivul
passwd --delete escorciav
