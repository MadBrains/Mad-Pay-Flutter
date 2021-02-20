part of 'models.dart';

/// {@macro response}
class Response {
  /// {@template response}
  /// Answer from platform plugins
  /// {@endtemplate}
  Response({
    this.success,
    this.errorCode,
    this.message,
    this.data,
  });

  /// Get [Response] from byte buffer
  factory Response.fromBuffer(List<int> i) {
    return porto.Response.fromBuffer(i).fromProto;
  }

  /// Execution status
  final bool success;

  /// Error code
  final String errorCode;

  /// Error message
  final String message;

  /// Data received after processing the request
  final Map<String, String> data;
}

/// AppleParameters extension
extension ResponseX on porto.Response {
  /// Mapped this model to proto model
  Response get fromProto => Response(
        success: success,
        errorCode: errorCode,
        message: message,
        data: data,
      );
}
