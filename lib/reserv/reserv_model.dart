import '/flutter_flow/flutter_flow_util.dart';
import 'reserv_widget.dart' show ReservWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ReservModel extends FlutterFlowModel<ReservWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for numbertexfild widget.
  FocusNode? numbertexfildFocusNode;
  TextEditingController? numbertexfildController;
  final numbertexfildMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? numbertexfildControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    numbertexfildFocusNode?.dispose();
    numbertexfildController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
