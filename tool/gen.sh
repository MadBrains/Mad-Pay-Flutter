#!/bin/bash

cd ..

SRC_DIR=./protos
DOP_DIR=./lib/src/protos
SOP_DIR=./ios/Classes/protos

protoc --experimental_allow_proto3_optional --proto_path=$SRC_DIR --dart_out=$DOP_DIR --swift_out=$SOP_DIR $SRC_DIR/*.proto

cd example/ios/
pod install