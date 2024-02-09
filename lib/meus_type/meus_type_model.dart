import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'meus_type_widget.dart' show MeusTypeWidget;
import 'package:flutter/material.dart';

class MeusTypeModel extends FlutterFlowModel<MeusTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<TypebotRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (post typebot)] action in Row widget.
  ApiCallResponse? apiResulta2d;
  // Stores action output result for [Backend Call - API (post typebot)] action in Text widget.
  ApiCallResponse? apiRESETTYPE;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
