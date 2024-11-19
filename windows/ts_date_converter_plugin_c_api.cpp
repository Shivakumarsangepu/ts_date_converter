#include "include/ts_date_converter/ts_date_converter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ts_date_converter_plugin.h"

void TsDateConverterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ts_date_converter::TsDateConverterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
