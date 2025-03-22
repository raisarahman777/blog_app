import 'package:flutter/material.dart';

class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}
