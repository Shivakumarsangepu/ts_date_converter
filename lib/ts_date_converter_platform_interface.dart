import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:ts_date_converter/ts_date_converter_method_channel.dart';

abstract class TsDateConverterPlatform extends PlatformInterface {
  TsDateConverterPlatform() : super(token: _token);

  static final Object _token = Object();

  static TsDateConverterPlatform _instance = TsMethodChannelDateConverter();

  static TsDateConverterPlatform get instance => _instance;

  static set instance(TsDateConverterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  String getConvertedTime(String? serverTime, String displayFormat) {
    throw UnimplementedError('getDisplayTime() has not been implemented.');
  }
}
