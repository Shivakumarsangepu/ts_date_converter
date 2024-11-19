#ifndef FLUTTER_PLUGIN_TS_DATE_CONVERTER_PLUGIN_H_
#define FLUTTER_PLUGIN_TS_DATE_CONVERTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ts_date_converter {

class TsDateConverterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TsDateConverterPlugin();

  virtual ~TsDateConverterPlugin();

  // Disallow copy and assign.
  TsDateConverterPlugin(const TsDateConverterPlugin&) = delete;
  TsDateConverterPlugin& operator=(const TsDateConverterPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ts_date_converter

#endif  // FLUTTER_PLUGIN_TS_DATE_CONVERTER_PLUGIN_H_
