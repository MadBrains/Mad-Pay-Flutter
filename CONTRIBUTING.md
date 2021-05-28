# Contributing to Mad Pay
Thank you for your interest in contributing to our project! <3 Whether it's a bug report, new feature, correction, or additional documentation, we greatly value feedback and contributions from our community. Please read through these guidelines carefully before submitting a PR or issue and let us know if it's not up-to-date (or even better, submit a PR with your corrections ;)).

## Setting up your development environment
1) [Install Protobuf compiler](https://developers.google.com/protocol-buffers/docs/downloads)
2) [Install Swift-plugin for Protobuf compiler](https://github.com/apple/swift-protobuf#alternatively-install-via-homebrew)
3) [Install Dart-plugin for Protobuf compiler](https://pub.dev/packages/protoc_plugin#optionally-using-pub-global)
4) Install Protobuf extension for IDEs (Opcional)

## Setting up for local development

This section should get you running with **Mad Pay** and get you familiar with the basics of the codebase.

Start by, [Forking](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) the main branch of Mad Pay repo.

You will need to install `melos` for dependency management.
Run `melos bootstrap` to link local packages together and install remaining dependencies.

> Melos launching via FVM goes like this: `fvm flutter pub global run melos...`

Note that running `pub get` in the packages is no longer required, because `melos bootstrap` has
already installed all the dependencies.

See [invertase/melos](https://github.com/invertase/melos) for more instructions on how to use `melos`.

```
$ git clone git@github.com:MadBrains/Mad-Pay-Flutter.git
$ cd Mad-Pay-Flutter
$ pub global activate melos
$ melos bootstrap
```

> Note: Make sure to always [sync your fork](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) with main branch of Mad Pay repo.

## Proto
You need to work with proto files in: `/protos`

### For Dart and Swift
To compile proto, run the script in the folder: `tool/gen.sh`

### For Kotlin 
To compile proto, run the gradle build project

## Contributing:

1) To start contributing make a fork of this repo and create a branch where you will make your changes to a particular `packages/[category]`.

2) Update the example app to use your new changes (if applicable) and to build the app on iOS and Android.

3) Run the test suite

4) Submit a PR