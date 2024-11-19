
import 'ts_date_converter_platform_interface.dart';

class TsDateConverter {
  static String getConvertedTime(String? serverTime, String displayFormat) {
    return TsDateConverterPlatform.instance.getConvertedTime(serverTime, displayFormat);
  }
}

