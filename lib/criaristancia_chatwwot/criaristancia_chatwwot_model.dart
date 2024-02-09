import '/flutter_flow/flutter_flow_util.dart';
import 'criaristancia_chatwwot_widget.dart' show CriaristanciaChatwwotWidget;
import 'package:flutter/material.dart';

class CriaristanciaChatwwotModel
    extends FlutterFlowModel<CriaristanciaChatwwotWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Texchatwoot widget.
  FocusNode? texchatwootFocusNode1;
  TextEditingController? texchatwootController1;
  String? Function(BuildContext, String?)? texchatwootController1Validator;
  // State field(s) for Texchatwoot widget.
  FocusNode? texchatwootFocusNode2;
  TextEditingController? texchatwootController2;
  String? Function(BuildContext, String?)? texchatwootController2Validator;
  // State field(s) for Texchatwoot widget.
  FocusNode? texchatwootFocusNode3;
  TextEditingController? texchatwootController3;
  String? Function(BuildContext, String?)? texchatwootController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    texchatwootFocusNode1?.dispose();
    texchatwootController1?.dispose();

    texchatwootFocusNode2?.dispose();
    texchatwootController2?.dispose();

    texchatwootFocusNode3?.dispose();
    texchatwootController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
