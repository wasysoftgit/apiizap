import '/flutter_flow/flutter_flow_util.dart';
import 'criar_conta_widget.dart' show CriarContaWidget;
import 'package:flutter/material.dart';

class CriarContaModel extends FlutterFlowModel<CriarContaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nome_text widget.
  FocusNode? nomeTextFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for email_text widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for confirmsenha widget.
  FocusNode? confirmsenhaFocusNode;
  TextEditingController? confirmsenhaController;
  late bool confirmsenhaVisibility;
  String? Function(BuildContext, String?)? confirmsenhaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmsenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeTextFocusNode?.dispose();
    nomeTextController?.dispose();

    emailTextFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    confirmsenhaFocusNode?.dispose();
    confirmsenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
