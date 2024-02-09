import '/flutter_flow/flutter_flow_util.dart';
import 'notifica_widget.dart' show NotificaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NotificaModel extends FlutterFlowModel<NotificaWidget> {
  ///  Local state fields for this page.

  int? pag = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Textcliente widget.
  FocusNode? textclienteFocusNode1;
  TextEditingController? textclienteController1;
  String? Function(BuildContext, String?)? textclienteController1Validator;
  // State field(s) for Textcliente widget.
  FocusNode? textclienteFocusNode2;
  TextEditingController? textclienteController2;
  String? Function(BuildContext, String?)? textclienteController2Validator;
  // State field(s) for Textcliente widget.
  FocusNode? textclienteFocusNode3;
  TextEditingController? textclienteController3;
  String? Function(BuildContext, String?)? textclienteController3Validator;
  // State field(s) for Textcliente widget.
  FocusNode? textclienteFocusNode4;
  TextEditingController? textclienteController4;
  String? Function(BuildContext, String?)? textclienteController4Validator;
  // State field(s) for Textcliente widget.
  FocusNode? textclienteFocusNode5;
  TextEditingController? textclienteController5;
  final textclienteMask5 = MaskTextInputFormatter(mask: '(##)#########');
  String? Function(BuildContext, String?)? textclienteController5Validator;
  // State field(s) for Textaviso widget.
  FocusNode? textavisoFocusNode;
  TextEditingController? textavisoController;
  final textavisoMask = MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)? textavisoControllerValidator;
  // State field(s) for Textcompromisso widget.
  FocusNode? textcompromissoFocusNode;
  TextEditingController? textcompromissoController;
  final textcompromissoMask = MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)? textcompromissoControllerValidator;
  // State field(s) for Textclientefinal widget.
  FocusNode? textclientefinalFocusNode;
  TextEditingController? textclientefinalController;
  String? Function(BuildContext, String?)? textclientefinalControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textclienteFocusNode1?.dispose();
    textclienteController1?.dispose();

    textclienteFocusNode2?.dispose();
    textclienteController2?.dispose();

    textclienteFocusNode3?.dispose();
    textclienteController3?.dispose();

    textclienteFocusNode4?.dispose();
    textclienteController4?.dispose();

    textclienteFocusNode5?.dispose();
    textclienteController5?.dispose();

    textavisoFocusNode?.dispose();
    textavisoController?.dispose();

    textcompromissoFocusNode?.dispose();
    textcompromissoController?.dispose();

    textclientefinalFocusNode?.dispose();
    textclientefinalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
