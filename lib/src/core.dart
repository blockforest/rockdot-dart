library acanvas_framework.core;

import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:convert';
import 'dart:async';

/* required by Logger, configuration in Bootstrap */
import 'package:logging/logging.dart';

/* Acanvas depends on StageXL */
import 'package:stagexl/stagexl.dart'
    show DisplayObject, Stage, EventDispatcher;
import 'package:acanvas_commons/acanvas_commons.dart';
import 'package:acanvas_spring/acanvas_spring.dart';

import 'core.plugin.state.dart'
    show StateConstants, StateMessageVO, StateEvents, StateVO, StateModel;
import 'core.plugin.screen.dart' show ScreenConstants, AcanvasLifecycleSprite;

// CORE #####
part 'core/project/abstract_ac_bootstrap.dart';
part 'core/project/abstract_ac_plugin.dart';

part 'core/context/ac_context.dart';
part 'core/context/ac_context_util.dart';

part 'core/mvc/command_vo.dart';
part 'core/mvc/composite_command_with_event.dart';
part 'core/mvc/ac_command.dart';

part 'core/model/countries.dart';
part 'core/model/languages.dart';
part 'core/model/markets.dart';
part 'core/model/ac_constants.dart';

// LIBRARY #####

/* required by Acanvas UGCPlugin */
part 'core/rpc/jsonrpc_client.dart';
part 'core/rpc/rpc_exceptions.dart';
