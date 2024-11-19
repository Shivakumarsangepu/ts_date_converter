import 'package:flutter_test/flutter_test.dart';
import 'package:ts_date_converter/ts_date_converter.dart';
import 'package:ts_date_converter/ts_date_converter_platform_interface.dart';
import 'package:ts_date_converter/ts_date_converter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTsDateConverterPlatform
    with MockPlatformInterfaceMixin
    implements TsDateConverterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TsDateConverterPlatform initialPlatform = TsDateConverterPlatform.instance;

  test('$MethodChannelTsDateConverter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTsDateConverter>());
  });

  test('getPlatformVersion', () async {
    TsDateConverter tsDateConverterPlugin = TsDateConverter();
    MockTsDateConverterPlatform fakePlatform = MockTsDateConverterPlatform();
    TsDateConverterPlatform.instance = fakePlatform;

    expect(await tsDateConverterPlugin.getPlatformVersion(), '42');
  });
}
