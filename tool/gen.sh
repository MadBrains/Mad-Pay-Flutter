#!/bin/bash

SRC_DIR=./protos
DOP_DIR=./packages/mad_pay_platform_interface/lib/src/protos
SOP_DIR=./packages/mad_pay_ios/ios/Classes/protos

protoc --experimental_allow_proto3_optional --proto_path=$SRC_DIR --dart_out=$DOP_DIR --swift_out=$SOP_DIR $SRC_DIR/*.proto

pod install --project-directory=example/ios