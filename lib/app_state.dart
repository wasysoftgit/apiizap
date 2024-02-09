import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _idempresa = prefs.getInt('ff_idempresa') ?? _idempresa;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _nomeistancia = '';
  String get nomeistancia => _nomeistancia;
  set nomeistancia(String value) {
    _nomeistancia = value;
  }

  bool _statusconectado = false;
  bool get statusconectado => _statusconectado;
  set statusconectado(bool value) {
    _statusconectado = value;
  }

  String _erronome = '';
  String get erronome => _erronome;
  set erronome(String value) {
    _erronome = value;
  }

  String _qrcode = '';
  String get qrcode => _qrcode;
  set qrcode(String value) {
    _qrcode = value;
  }

  String _qrcode64 = '';
  String get qrcode64 => _qrcode64;
  set qrcode64(String value) {
    _qrcode64 = value;
  }

  dynamic _jsondaapi;
  dynamic get jsondaapi => _jsondaapi;
  set jsondaapi(dynamic value) {
    _jsondaapi = value;
  }

  String _qrcodeimage = '';
  String get qrcodeimage => _qrcodeimage;
  set qrcodeimage(String value) {
    _qrcodeimage = value;
  }

  int _instancia = 0;
  int get instancia => _instancia;
  set instancia(int value) {
    _instancia = value;
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
  }

  String _antiphone = '';
  String get antiphone => _antiphone;
  set antiphone(String value) {
    _antiphone = value;
  }

  int _idempresa = 0;
  int get idempresa => _idempresa;
  set idempresa(int value) {
    _idempresa = value;
    prefs.setInt('ff_idempresa', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
