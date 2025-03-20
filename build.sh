#!/bin/bash
mkdir out

mkdir build
west build -s zmk/app -d build -b eyelash_corne_left -S studio-rpc-usb-uart -- -DZMK_CONFIG=$(pwd)/config -DSHIELD=nice_view -DCONFIG_ZMK_STUDIO=y -DCONFIG_ZMK_STUDIO_LOCKING=n
cp build/zephyr/zmk.uf2 out/left.uf2
rm -r build

mkdir build
west build -s zmk/app -d build -b eyelash_corne_right -- -DZMK_CONFIG=$(pwd)/config -DSHIELD=nice_view
cp build/zephyr/zmk.uf2 out/right.uf2
rm -r build

mkdir build
west build -s zmk/app -d build -b eyelash_corne_left -- -DZMK_CONFIG=$(pwd)/config -DSHIELD=settings_reset
cp build/zephyr/zmk.uf2 out/left_settings_reset.uf2
rm -r build


mkdir build
west build -s zmk/app -d build -b eyelash_corne_left -S studio-rpc-usb-uart -- -DZMK_CONFIG=$(pwd)/config -DSHIELD=nice_view_gem -DCONFIG_ZMK_STUDIO=y -DCONFIG_ZMK_STUDIO_LOCKING=n
cp build/zephyr/zmk.uf2 out/left_gem.uf2
rm -r build

mkdir build
west build -s zmk/app -d build -b eyelash_corne_right -- -DZMK_CONFIG=$(pwd)/config -DSHIELD=nice_view_gem
cp build/zephyr/zmk.uf2 out/right_gem.uf2
rm -r build
