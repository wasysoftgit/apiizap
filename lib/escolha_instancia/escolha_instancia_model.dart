import '/flutter_flow/flutter_flow_util.dart';
import 'escolha_instancia_widget.dart' show EscolhaInstanciaWidget;
import 'package:flutter/material.dart';

class EscolhaInstanciaModel extends FlutterFlowModel<EscolhaInstanciaWidget> {
  ///  Local state fields for this page.

  String nomeinstancia = '';

  String apikey = '';

  String? infoapi = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
