import 'package:flutter_base/generated/json/base/json_field.dart';
import 'package:flutter_base/generated/json/config_rsp_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ConfigRspEntity {

  late int code;
  late String msg;
  late ConfigRspData data;

  ConfigRspEntity();

  factory ConfigRspEntity.fromJson(Map<String, dynamic> json) =>
      $ConfigRspEntityFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ConfigRspData {

  late ConfigRspDataConfig config;

  ConfigRspData();

  factory ConfigRspData.fromJson(Map<String, dynamic> json) =>
      $ConfigRspDataFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ConfigRspDataConfig {

  @JSONField(name: "agreement_url")
  late String agreementUrl;
  @JSONField(name: "qq_group")
  late String qqGroup;
  @JSONField(name: "help_url")
  late String helpUrl;
  @JSONField(name: "qq_kefu")
  late String qqKefu;
  @JSONField(name: "privacy_url")
  late String privacyUrl;
  @JSONField(name: "agreement_url")

  ConfigRspDataConfig();

  factory ConfigRspDataConfig.fromJson(Map<String, dynamic> json) =>
      $ConfigRspDataConfigFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspDataConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}