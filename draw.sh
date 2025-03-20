#!/bin/bash
keymap parse -z config/eyelash_corne.keymap > corne_keymap.yml
keymap -c keymap_drawer.config.yaml draw corne_keymap.yml -j config/eyelash_corne.json > corne_keymap.svg
