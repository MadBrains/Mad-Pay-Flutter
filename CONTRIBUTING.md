# Contributing to Mad Pay
## Setting up your development environment
1) [Install Protobuf compiler](https://developers.google.com/protocol-buffers/docs/downloads)
2) [Install Swift-plugin for Protobuf compiler](https://github.com/apple/swift-protobuf#alternatively-install-via-homebrew)
3) [Install Dart-plugin for Protobuf compiler](https://pub.dev/packages/protoc_plugin#optionally-using-pub-global)
4) Install Protobuf extension for IDEs (Opcional)

## Development
You need to work with proto files in: `/protos`

### For Dart and Swift
To compile proto, run the script in the folder: `tool/gen.sh`

### For Kotlin 
To compile proto, run the gradle build project