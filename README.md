# gRPC Demo Projects 

## Presented in Persian Flutter Community [Youtube](https://www.youtube.com/watch?v=pHbLJSHtoCs)
This repository contains three separate projects demonstrating gRPC implementation using Dart and Flutter:

1. **`protos`**: A Dart library for Protocol Buffer definitions.
2. **`server`**: A gRPC server written in Dart.
3. **`client`**: A Flutter application that communicates with the server using gRPC.

## Project Structure

- **`protos/`**: Contains the `.proto` files and generates Dart code for gRPC communication.
- **`server/`**: Implements the gRPC server logic in Dart.
- **`client/`**: A Flutter application acting as a gRPC client.

---

## Prerequisites for gRPC development in Dart/Flutter

Before proceeding, ensure you have the following installed:

1. **Dart**: [Install Dart](https://dart.dev/get-dart)
2. **Flutter**: [Install Flutter](https://flutter.dev/docs/get-started/install)
3. **Protocol Buffers Compiler (protoc)**: [Download protoc](https://pub.dev/packages/protoc_plugin)

---

## Useful commands

### Activate `protoc`

```bash
  dart pub global activate protoc_plugin
```

### Generate proto stub
```bash
  protoc --dart_out=grpc:lib/src/generated -Iprotos protos/*.proto
```

--dart_out=grpc: Generates Dart protobuf and gRPC service files.

-Iprotos: Specifies the directory where .proto files are located.

lib/src/generated: Output directory for the generated files.
