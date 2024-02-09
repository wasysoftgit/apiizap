import '/flutter_flow/flutter_flow_util.dart';
import 'criar_typebot_widget.dart' show CriarTypebotWidget;
import 'package:flutter/material.dart';

class CriarTypebotModel extends FlutterFlowModel<CriarTypebotWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Textnome widget.
  FocusNode? textnomeFocusNode;
  TextEditingController? textnomeController;
  String? Function(BuildContext, String?)? textnomeControllerValidator;
  // State field(s) for urltex widget.
  FocusNode? urltexFocusNode;
  TextEditingController? urltexController;
  String? Function(BuildContext, String?)? urltexControllerValidator;
  // State field(s) for LINK widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkController;
  String? Function(BuildContext, String?)? linkControllerValidator;
  // State field(s) for Texttempo widget.
  FocusNode? texttempoFocusNode;
  TextEditingController? texttempoController;
  String? Function(BuildContext, String?)? texttempoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textnomeFocusNode?.dispose();
    textnomeController?.dispose();

    urltexFocusNode?.dispose();
    urltexController?.dispose();

    linkFocusNode?.dispose();
    linkController?.dispose();

    texttempoFocusNode?.dispose();
    texttempoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
