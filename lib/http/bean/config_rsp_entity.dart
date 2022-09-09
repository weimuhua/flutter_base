import 'package:flutter_base/generated/json/base/json_field.dart';
import 'package:flutter_base/generated/json/config_rsp_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ConfigRspEntity {
  int? code;
  String? msg;
  ConfigRspData? data;

  ConfigRspEntity();

  factory ConfigRspEntity.fromJson(Map<String, dynamic> json) => $ConfigRspEntityFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ConfigRspData {
  ConfigRspDataConfig? config;

  ConfigRspData();

  factory ConfigRspData.fromJson(Map<String, dynamic> json) => $ConfigRspDataFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ConfigRspDataConfig {
  @JSONField(name: "agreement_url")
  String? agreementUrl;
  @JSONField(name: "open_vip_tips")
  String? openVipTips;
  @JSONField(name: "offline_config")
  String? offlineConfig;
  @JSONField(name: "trans_config")
  String? transConfig;
  @JSONField(name: "enable_reward_video")
  String? enableRewardVideo;
  @JSONField(name: "feedback_url")
  String? feedbackUrl;
  @JSONField(name: "qq_group")
  String? qqGroup;
  @JSONField(name: "help_url")
  String? helpUrl;
  @JSONField(name: "ocr_engine_list")
  String? ocrEngineList;
  @JSONField(name: "first_buy_gift_time")
  String? firstBuyGiftTime;
  @JSONField(name: "qq_kefu")
  String? qqKefu;
  @JSONField(name: "privacy_url")
  String? privacyUrl;

  ConfigRspDataConfig();

  factory ConfigRspDataConfig.fromJson(Map<String, dynamic> json) => $ConfigRspDataConfigFromJson(json);

  Map<String, dynamic> toJson() => $ConfigRspDataConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
