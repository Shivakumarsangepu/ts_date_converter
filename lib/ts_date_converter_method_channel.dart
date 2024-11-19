import 'package:intl/intl.dart';
import 'package:ts_date_converter/ts_date_converter_platform_interface.dart';


class TsMethodChannelDateConverter extends TsDateConverterPlatform {
  @override
  String getConvertedTime(String? serverTime, String displayFormat) {
    final format = DateFormat("yyyy-MM-dd'T'HH:mm:ss");

    if (serverTime != null && serverTime.length > 23) {
      try {
        DateTime date = format.parse(serverTime.substring(0, 23));
        final displayFormatter = DateFormat(displayFormat);
        return displayFormatter.format(date);
      } catch (e) {
        return "Invalid Time";
      }
    } else {
      return "No Time";
    }
  }
}
