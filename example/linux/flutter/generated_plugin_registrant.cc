//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ts_date_converter/ts_date_converter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ts_date_converter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TsDateConverterPlugin");
  ts_date_converter_plugin_register_with_registrar(ts_date_converter_registrar);
}
