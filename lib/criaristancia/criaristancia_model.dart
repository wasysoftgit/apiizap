import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criaristancia_widget.dart' show CriaristanciaWidget;
import 'package:flutter/material.dart';

class CriaristanciaModel extends FlutterFlowModel<CriaristanciaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Textnom widget.
  FocusNode? textnomFocusNode;
  TextEditingController? textnomController;
  String? Function(BuildContext, String?)? textnomControllerValidator;
  // State field(s) for Texttok widget.
  FocusNode? texttokFocusNode;
  TextEditingController? texttokController;
  String? Function(BuildContext, String?)? texttokControllerValidator;
  // Stores action output result for [Backend Call - API (criar instancia)] action in Button widget.
  ApiCallResponse? criarinstancia;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textnomFocusNode?.dispose();
    textnomController?.dispose();

    texttokFocusNode?.dispose();
    texttokController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
