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
  data['data'] = entity.data?.toJson();
  return data;
}

ConfigRspData $ConfigRspDataFromJson(Map<String, dynamic> json) {
  final ConfigRspData configRspData = ConfigRspData();
  final ConfigRspDataConfig? config = jsonConvert.convert<ConfigRspDataConfig>(json['config']);
  if (config != null) {
    configRspData.config = config;
  }
  return configRspData;
}

Map<String, dynamic> $ConfigRspDataToJson(ConfigRspData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['config'] = entity.config?.toJson();
  return data;
}

ConfigRspDataConfig $ConfigRspDataConfigFromJson(Map<String, dynamic> json) {
  final ConfigRspDataConfig configRspDataConfig = ConfigRspDataConfig();
  final String? agreementUrl = jsonConvert.convert<String>(json['agreement_url']);
  if (agreementUrl != null) {
    configRspDataConfig.agreementUrl = agreementUrl;
  }
  final String? openVipTips = jsonConvert.convert<String>(json['open_vip_tips']);
  if (openVipTips != null) {
    configRspDataConfig.openVipTips = openVipTips;
  }
  final String? offlineConfig = jsonConvert.convert<String>(json['offline_config']);
  if (offlineConfig != null) {
    configRspDataConfig.offlineConfig = offlineConfig;
  }
  final String? transConfig = jsonConvert.convert<String>(json['trans_config']);
  if (transConfig != null) {
    configRspDataConfig.transConfig = transConfig;
  }
  final String? enableRewardVideo = jsonConvert.convert<String>(json['enable_reward_video']);
  if (enableRewardVideo != null) {
    configRspDataConfig.enableRewardVideo = enableRewardVideo;
  }
  final String? feedbackUrl = jsonConvert.convert<String>(json['feedback_url']);
  if (feedbackUrl != null) {
    configRspDataConfig.feedbackUrl = feedbackUrl;
  }
  final String? qqGroup = jsonConvert.convert<String>(json['qq_group']);
  if (qqGroup != null) {
    configRspDataConfig.qqGroup = qqGroup;
  }
  final String? helpUrl = jsonConvert.convert<String>(json['help_url']);
  if (helpUrl != null) {
    configRspDataConfig.helpUrl = helpUrl;
  }
  final String? ocrEngineList = jsonConvert.convert<String>(json['ocr_engine_list']);
  if (ocrEngineList != null) {
    configRspDataConfig.ocrEngineList = ocrEngineList;
  }
  final String? firstBuyGiftTime = jsonConvert.convert<String>(json['first_buy_gift_time']);
  if (firstBuyGiftTime != null) {
    configRspDataConfig.firstBuyGiftTime = firstBuyGiftTime;
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
  data['open_vip_tips'] = entity.openVipTips;
  data['offline_config'] = entity.offlineConfig;
  data['trans_config'] = entity.transConfig;
  data['enable_reward_video'] = entity.enableRewardVideo;
  data['feedback_url'] = entity.feedbackUrl;
  data['qq_group'] = entity.qqGroup;
  data['help_url'] = entity.helpUrl;
  data['ocr_engine_list'] = entity.ocrEngineList;
  data['first_buy_gift_time'] = entity.firstBuyGiftTime;
  data['qq_kefu'] = entity.qqKefu;
  data['privacy_url'] = entity.privacyUrl;
  return data;
}
