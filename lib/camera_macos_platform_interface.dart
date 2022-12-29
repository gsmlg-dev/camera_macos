import 'package:camera_macos/camera_macos.dart';
import 'package:camera_macos/camera_macos_arguments.dart';
import 'package:camera_macos/camera_macos_device.dart';
import 'package:camera_macos/camera_macos_file.dart';
import 'package:camera_macos/exceptions.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'camera_macos_method_channel.dart';

abstract class CameraMacOSPlatform extends PlatformInterface {
  /// Constructs a CameraMacOSPlatform.
  CameraMacOSPlatform() : super(token: _token);

  static final Object _token = Object();

  static CameraMacOSPlatform _instance = MethodChannelCameraMacOS();

  /// The default instance of [CameraMacOSPlatform] to use.
  ///
  /// Defaults to [MethodChannelCameraMacos].
  static CameraMacOSPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CameraMacOSPlatform] when
  /// they register themselves.
  static set instance(CameraMacOSPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<CameraMacOSArguments?> initialize({
    String? deviceId,
    required CameraMacOSMode cameraMacOSMode,
  }) {
    throw UnimplementedError("");
  }

  Future<List<CameraMacOSDevice>> listDevices() {
    throw UnimplementedError("");
  }

  Future<CameraMacOSFile?> takePicture() {
    throw UnimplementedError("");
  }

  Future<bool> startVideoRecording({
    CameraMacOSDevice? device,
    double? maxVideoDuration,
    String? url,
    Function(CameraMacOSFile?, CameraMacOSException?)? onVideoRecordingFinished,
  }) {
    throw UnimplementedError("");
  }

  Future<CameraMacOSFile?> stopVideoRecording() {
    throw UnimplementedError("");
  }

  Future<bool?> destroy() {
    throw UnimplementedError("");
  }
}
