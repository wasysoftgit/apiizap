import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'instancia_status_widget.dart' show InstanciaStatusWidget;
import 'package:flutter/material.dart';

class InstanciaStatusModel extends FlutterFlowModel<InstanciaStatusWidget> {
  ///  Local state fields for this page.

  String nomeinstancia = '';

  String apikey = '';

  String? info = 'op';

  String qrcodeapi = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Instance  Pegar QR Code )] action in Container widget.
  ApiCallResponse? apiqrcode;
  // Stores action output result for [Backend Call - API (Instance  Logout)] action in Container widget.
  ApiCallResponse? apilogout;
  // Stores action output result for [Backend Call - API (Instance  Logout)] action in Container widget.
  ApiCallResponse? apilogoutCopy;

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
