#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

export PATH=$(npm bin):$PATH
readonly FONTS_SRC_PATH="src"
readonly FONTS_DST_PATH="fonts"
readonly WORKING_PATH="build"

function generate_fonts() {
    local src_dir="$1"
    local dst_dir="$2"
    for font in $src_dir/*.ttf; do
        genfontgl "$font"
    done

    cp -r $src_dir/** $dst_dir
    rm $dst_dir/*.ttf
}

function main() {
    mkdir -p "$WORKING_PATH"
    mkdir -p "$FONTS_DST_PATH"

    cp $FONTS_SRC_PATH/**/*.ttf "$WORKING_PATH"
    generate_fonts "$WORKING_PATH" "$FONTS_DST_PATH"
    rm -rf "$WORKING_PATH"
}

main
