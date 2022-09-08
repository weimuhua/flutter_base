import 'package:flutter_base/generated/json/base/json_convert_content.dart';
import 'package:flutter_base/http/bean/config_rsp_entity.dart';

ConfigRspEntity $ConfigRspEntityFromJson(Map<String, dynamic> json) {
  final ConfigRspEntity configRspEntity = ConfigRspEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    configRspEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    configRspEntity.msg = msg;
  }
  final ConfigRspData? data = jsonConvert.convert<ConfigRspData>(json['data']);
  if (data != null) {
    configRspEntity.data = data;
  }
  return configRspEntity;
}

Map<String, dynamic> $ConfigRspEntityToJson(ConfigRspEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['data'] = entity.data.toJson();
  return data;
}

ConfigRspData $ConfigRspDataFromJson(Map<String, dynamic> json) {
  final ConfigRspData configRspData = ConfigRspData();
  final ConfigRspDataConfig? config = jsonConvert.convert<ConfigRspDataConfig>(
      json['config']);
  if (config != null) {
    configRspData.config = config;
  }
  return configRspData;
}

Map<String, dynamic> $ConfigRspDataToJson(ConfigRspData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['config'] = entity.config.toJson();
  return data;
}

ConfigRspDataConfig $ConfigRspDataConfigFromJson(Map<String, dynamic> json) {
  final ConfigRspDataConfig configRspDataConfig = ConfigRspDataConfig();
  final String? agreementUrl = jsonConvert.convert<String>(
      json['agreement_url']);
  if (agreementUrl != null) {
    configRspDataConfig.agreementUrl = agreementUrl;
  }
  final String? qqGroup = jsonConvert.convert<String>(json['qq_group']);
  if (qqGroup != null) {
    configRspDataConfig.qqGroup = qqGroup;
  }
  final String? helpUrl = jsonConvert.convert<String>(json['help_url']);
  if (helpUrl != null) {
    configRspDataConfig.helpUrl = helpUrl;
  }
  final String? qqKefu = jsonConvert.convert<String>(json['qq_kefu']);
  if (qqKefu != null) {
    configRspDataConfig.qqKefu = qqKefu;
  }
  final String? privacyUrl = jsonConvert.convert<String>(json['privacy_url']);
  if (privacyUrl != null) {
    configRspDataConfig.privacyUrl = privacyUrl;
  }
  return configRspDataConfig;
}

Map<String, dynamic> $ConfigRspDataConfigToJson(ConfigRspDataConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['agreement_url'] = entity.agreementUrl;
  data['qq_group'] = entity.qqGroup;
  data['help_url'] = entity.helpUrl;
  data['qq_kefu'] = entity.qqKefu;
  data['privacy_url'] = entity.privacyUrl;
  return data;
}