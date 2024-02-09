import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'meus_type_model.dart';
export 'meus_type_model.dart';

class MeusTypeWidget extends StatefulWidget {
  const MeusTypeWidget({
    super.key,
    required this.user,
    required this.intanciatype,
  });

  final UsuarioRow? user;
  final EstanciaRow? intanciatype;

  @override
  State<MeusTypeWidget> createState() => _MeusTypeWidgetState();
}

class _MeusTypeWidgetState extends State<MeusTypeWidget> {
  late MeusTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeusTypeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
      await Future.delayed(const Duration(milliseconds: 2000));
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent1,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: 960.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('dashboard');
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: FlutterFlowTheme.of(context).accent4,
                                    size: 30.0,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://i.postimg.cc/3R4jwbCk/12-Chat-Bot.png',
                                    width: 60.0,
                                    height: 60.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Meus Typebot',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 15.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FutureBuilder<List<TypebotRow>>(
                                    future: (_model.requestCompleter ??=
                                            Completer<List<TypebotRow>>()
                                              ..complete(
                                                  TypebotTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'user',
                                                      widget.user?.id,
                                                    )
                                                    .eq(
                                                      'instancia',
                                                      widget.intanciatype?.nome,
                                                    ),
                                              )))
                                        .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TypebotRow> listViewTypebotRowList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewTypebotRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewTypebotRow =
                                              listViewTypebotRowList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 12.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 120.0,
                                              constraints: const BoxConstraints(
                                                maxWidth: 570.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: const Color(0xFF5590FF),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'naveg_type',
                                                            queryParameters: {
                                                              'user':
                                                                  serializeParam(
                                                                widget.user,
                                                                ParamType
                                                                    .SupabaseRow,
                                                              ),
                                                              'type':
                                                                  serializeParam(
                                                                listViewTypebotRow,
                                                                ParamType
                                                                    .SupabaseRow,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              listViewTypebotRow
                                                                  .nomeType!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          15.0),
                                                              child: Text(
                                                                'Ver ao vivo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent4,
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.apiResulta2d =
                                                                await IdealzapGroup
                                                                    .postTypebotCall
                                                                    .call(
                                                              nome: widget
                                                                  .intanciatype
                                                                  ?.nome,
                                                              link:
                                                                  listViewTypebotRow
                                                                      .link,
                                                              url:
                                                                  listViewTypebotRow
                                                                      .url,
                                                              tempo:
                                                                  listViewTypebotRow
                                                                      .tempo,
                                                              token: widget
                                                                  .intanciatype
                                                                  ?.apikey,
                                                              nometype:
                                                                  listViewTypebotRow
                                                                      .nomeType,
                                                              ativar: true,
                                                            );
                                                            if ((_model
                                                                    .apiResulta2d
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await EstanciaTable()
                                                                  .update(
                                                                data: {
                                                                  'type_ativo':
                                                                      listViewTypebotRow
                                                                          .id,
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows.eq(
                                                                  'id',
                                                                  widget
                                                                      .intanciatype
                                                                      ?.id,
                                                                ),
                                                              );
                                                              setState(() =>
                                                                  _model.requestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted();

                                                              context.pushNamed(
                                                                'sucesso',
                                                                queryParameters:
                                                                    {
                                                                  'user':
                                                                      serializeParam(
                                                                    widget.user,
                                                                    ParamType
                                                                        .SupabaseRow,
                                                                  ),
                                                                  'instancia':
                                                                      serializeParam(
                                                                    widget
                                                                        .intanciatype,
                                                                    ParamType
                                                                        .SupabaseRow,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            }

                                                            setState(() {});
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                widget.intanciatype
                                                                            ?.typeAtivo ==
                                                                        listViewTypebotRow
                                                                            .id
                                                                    ? 'EM USO'
                                                                    : 'ATIVAR ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: widget.intanciatype?.typeAtivo ==
                                                                              listViewTypebotRow
                                                                                  .id
                                                                          ? const Color(
                                                                              0xFF00C914)
                                                                          : const Color(
                                                                              0xFFBD1000),
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .circle_sharp,
                                                                color: widget
                                                                            .intanciatype
                                                                            ?.typeAtivo ==
                                                                        listViewTypebotRow
                                                                            .id
                                                                    ? const Color(
                                                                        0xFF00C914)
                                                                    : const Color(
                                                                        0xFFBD1000),
                                                                size: 30.0,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (widget.intanciatype
                                                                ?.typeAtivo ==
                                                            listViewTypebotRow
                                                                .id)
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.apiRESETTYPE =
                                                                      await IdealzapGroup
                                                                          .postTypebotCall
                                                                          .call(
                                                                    nome: widget
                                                                        .intanciatype
                                                                        ?.nome,
                                                                    link: listViewTypebotRow
                                                                        .link,
                                                                    url: listViewTypebotRow
                                                                        .url,
                                                                    tempo: listViewTypebotRow
                                                                        .tempo,
                                                                    token: widget
                                                                        .intanciatype
                                                                        ?.apikey,
                                                                    nometype:
                                                                        listViewTypebotRow
                                                                            .nomeType,
                                                                    ativar:
                                                                        false,
                                                                  );
                                                                  if ((_model
                                                                          .apiResulta2d
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    await EstanciaTable()
                                                                        .update(
                                                                      data: {
                                                                        'type_ativo':
                                                                            15,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eq(
                                                                        'id',
                                                                        widget
                                                                            .intanciatype
                                                                            ?.id,
                                                                      ),
                                                                    );
                                                                    setState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();

                                                                    context
                                                                        .pushNamed(
                                                                      'sucesso',
                                                                      queryParameters:
                                                                          {
                                                                        'user':
                                                                            serializeParam(
                                                                          widget
                                                                              .user,
                                                                          ParamType
                                                                              .SupabaseRow,
                                                                        ),
                                                                        'instancia':
                                                                            serializeParam(
                                                                          widget
                                                                              .intanciatype,
                                                                          ParamType
                                                                              .SupabaseRow,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('OPS'),
                                                                            content:
                                                                                const Text('Algo deu errado!'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Text(
                                                                  'Desativar',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            18.0,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 35.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'criar_typebot',
                                queryParameters: {
                                  'user': serializeParam(
                                    widget.user,
                                    ParamType.SupabaseRow,
                                  ),
                                  'instancia': serializeParam(
                                    widget.intanciatype,
                                    ParamType.SupabaseRow,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
