import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'minhasestancias_widget.dart' show MinhasestanciasWidget;
import 'package:flutter/material.dart';

class MinhasestanciasModel extends FlutterFlowModel<MinhasestanciasWidget> {
  ///  Local state fields for this page.

  String nomeinstancia = '';

  String apikey = '';

  String? infoapi = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Intance info)] action in Icon widget.
  ApiCallResponse? info;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
