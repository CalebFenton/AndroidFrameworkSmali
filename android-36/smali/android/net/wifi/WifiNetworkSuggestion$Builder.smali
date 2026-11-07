.class public final Landroid/net/wifi/WifiNetworkSuggestion$Builder;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist UNASSIGNED_PRIORITY:I = -0x1

.field private static final blacklist WPA3_ENTERPRISE_192_BIT:I = 0x2

.field private static final blacklist WPA3_ENTERPRISE_AUTO:I = 0x0

.field private static final blacklist WPA3_ENTERPRISE_STANDARD:I = 0x1


# instance fields
.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mCarrierId:I

.field private blacklist mIsAppInteractionRequired:Z

.field private blacklist mIsCarrierMerged:Z

.field private blacklist mIsEnhancedOpen:Z

.field private blacklist mIsHiddenSSID:Z

.field private blacklist mIsInitialAutojoinEnabled:Z

.field private blacklist mIsNetworkOemPaid:Z

.field private blacklist mIsNetworkOemPrivate:Z

.field private blacklist mIsNetworkRestricted:Z

.field private blacklist mIsNetworkUntrusted:Z

.field private blacklist mIsSharedWithUser:Z

.field private blacklist mIsSharedWithUserSet:Z

.field private blacklist mIsUserInteractionRequired:Z

.field private blacklist mIsWifi7Enabled:Z

.field private blacklist mMacRandomizationSetting:I

.field private blacklist mMeteredOverride:I

.field private blacklist mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private blacklist mPriority:I

.field private blacklist mPriorityGroup:I

.field private blacklist mSaeH2eOnlyMode:Z

.field private blacklist mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private blacklist mSubscriptionId:I

.field private blacklist mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private blacklist mWapiPskPassphrase:Ljava/lang/String;

.field private blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;

.field private blacklist mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private blacklist mWpa2PskPassphrase:Ljava/lang/String;

.field private blacklist mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private blacklist mWpa3EnterpriseType:I

.field private blacklist mWpa3SaePassphrase:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseType:I

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    .line 251
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    .line 252
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    .line 254
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 255
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 256
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 257
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    .line 258
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    .line 260
    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    .line 261
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 262
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    .line 263
    iput-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsInitialAutojoinEnabled:Z

    .line 264
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    .line 265
    iput v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mCarrierId:I

    .line 266
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiPskPassphrase:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 268
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkUntrusted:Z

    .line 269
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    .line 270
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    .line 271
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    .line 272
    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriorityGroup:I

    .line 273
    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMacRandomizationSetting:I

    .line 274
    iput v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    .line 275
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSaeH2eOnlyMode:Z

    .line 276
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkRestricted:Z

    .line 277
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 278
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 279
    iput-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsWifi7Enabled:Z

    .line 280
    return-void
.end method

.method private blacklist buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    .line 1078
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1080
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1081
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_19

    .line 1082
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1085
    :cond_19
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1087
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1088
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1089
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1090
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mCarrierId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 1091
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkUntrusted:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 1092
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 1093
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 1094
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 1095
    nop

    .line 1096
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMacRandomizationSetting:I

    if-ne v1, v2, :cond_45

    .line 1097
    const/4 v2, 0x2

    goto :goto_46

    .line 1098
    :cond_45
    nop

    :goto_46
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 1099
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1100
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkRestricted:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    .line 1101
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSubscriptionGroup(Landroid/os/ParcelUuid;)V

    .line 1102
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsWifi7Enabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setWifi7Enabled(Z)V

    .line 1103
    return-object v0
.end method

.method private blacklist buildWifiConfigurationForPasspoint()Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 1125
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1126
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1127
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setPasspointUniqueId(Ljava/lang/String;)V

    .line 1128
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1129
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1130
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkUntrusted:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 1131
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 1132
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 1133
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 1134
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mCarrierId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 1135
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1136
    nop

    .line 1137
    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMacRandomizationSetting:I

    if-ne v1, v2, :cond_43

    .line 1138
    const/4 v1, 0x2

    goto :goto_44

    .line 1139
    :cond_43
    move v1, v2

    :goto_44
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 1140
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkRestricted:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    .line 1141
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSubscriptionGroup(Landroid/os/ParcelUuid;)V

    .line 1142
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsWifi7Enabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setWifi7Enabled(Z)V

    .line 1143
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mCarrierId:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCarrierId(I)V

    .line 1144
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionId(I)V

    .line 1145
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionGroup(Landroid/os/ParcelUuid;)V

    .line 1146
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setMeteredOverride(I)V

    .line 1147
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setOemPrivate(Z)V

    .line 1148
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setOemPaid(Z)V

    .line 1149
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCarrierMerged(Z)V

    .line 1152
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setMacRandomizationEnabled(Z)V

    .line 1153
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMacRandomizationSetting:I

    if-ne v3, v2, :cond_91

    goto :goto_92

    :cond_91
    const/4 v2, 0x0

    :goto_92
    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setNonPersistentMacRandomizationEnabled(Z)V

    .line 1155
    return-object v0
.end method

.method private blacklist isEnterpriseSuggestion()Z
    .registers 2

    .line 1303
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 1027
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    if-nez v0, :cond_29

    .line 1028
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e8

    .line 1031
    :cond_29
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1032
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1035
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSaeH2eOnlyMode:Z

    if-eqz v0, :cond_e8

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSaeH2eOnlyMode:Z

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->enableSaeH2eOnlyMode(Z)V

    goto/16 :goto_e8

    .line 1036
    :cond_59
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_67

    .line 1037
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1038
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto/16 :goto_e8

    .line 1039
    :cond_67
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_a7

    .line 1040
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseType:I

    const/4 v2, 0x5

    if-nez v0, :cond_95

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1041
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_95

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1043
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1042
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1045
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1047
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_a2

    .line 1049
    :cond_95
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseType:I

    if-ne v0, v1, :cond_9d

    .line 1051
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_a2

    .line 1055
    :cond_9d
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1058
    :goto_a2
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_e8

    .line 1059
    :cond_a7
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    if-eqz v0, :cond_b0

    .line 1060
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_e8

    .line 1061
    :cond_b0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiPskPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 1062
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiPskPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_e8

    .line 1065
    :cond_d6
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_e4

    .line 1066
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1067
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_e8

    .line 1069
    :cond_e4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1071
    :cond_e8
    :goto_e8
    return-void
.end method

.method private blacklist validateSecurityParams()V
    .registers 5

    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "numSecurityTypes":I
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    add-int/2addr v0, v1

    .line 1109
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1110
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1111
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1112
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    add-int/2addr v0, v1

    .line 1113
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    add-int/2addr v0, v1

    .line 1114
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_34

    move v1, v2

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    add-int/2addr v0, v1

    .line 1115
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_3b

    move v3, v2

    :cond_3b
    add-int/2addr v0, v3

    .line 1116
    if-gt v0, v2, :cond_3f

    .line 1122
    return-void

    .line 1117
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "only one of setIsEnhancedOpen, setWpa2Passphrase, setWpa3Passphrase, setWpa2EnterpriseConfig, setWpa3EnterpriseConfig setWapiPassphrase, setWapiCertSuite, setIsWapiCertSuiteAuto or setPasspointConfig can be invoked for network suggestion"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiNetworkSuggestion;
    .registers 12

    .line 1211
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->validateSecurityParams()V

    .line 1213
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1214
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_1f

    .line 1218
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    if-nez v0, :cond_17

    .line 1222
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->buildWifiConfigurationForPasspoint()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v4, v0

    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_88

    .line 1219
    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setIsHiddenSsid should not be invoked for suggestion with Passpoint configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSsid should not be invoked for suggestion with Passpoint configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1224
    :cond_27
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_12e

    .line 1227
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_126

    .line 1230
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    .line 1231
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_55

    .line 1233
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid bssid for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_55
    :goto_55
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSaeH2eOnlyMode:Z

    if-nez v0, :cond_62

    goto :goto_6a

    .line 1236
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hash-to-Element only mode is only allowed for the SAE network"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1241
    .restart local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1242
    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    if-eqz v2, :cond_85

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    if-nez v2, :cond_7d

    goto :goto_85

    .line 1243
    :cond_7d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Open network should not be setCredentialSharedWithUser to true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1246
    :cond_85
    :goto_85
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 1249
    :cond_87
    move-object v4, v0

    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    .local v4, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :goto_88
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsInitialAutojoinEnabled:Z

    if-eqz v0, :cond_91

    goto :goto_99

    .line 1250
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should have not a network with both setCredentialSharedWithUser and setIsAutojoinEnabled set to false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_99
    :goto_99
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkUntrusted:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkRestricted:Z

    if-eqz v0, :cond_b4

    .line 1255
    :cond_a1
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    if-eqz v0, :cond_b2

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    if-nez v0, :cond_aa

    goto :goto_b2

    .line 1256
    :cond_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be bothsetCredentialSharedWithUser and +setUntrusted or setRestricted to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_b2
    :goto_b2
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 1262
    :cond_b4
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    if-eqz v0, :cond_cb

    .line 1263
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    if-nez v0, :cond_c1

    goto :goto_c9

    .line 1264
    :cond_c1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be bothsetCredentialSharedWithUser and +setOemPaid to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_c9
    :goto_c9
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 1270
    :cond_cb
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    if-eqz v0, :cond_e2

    .line 1271
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    if-eqz v0, :cond_e0

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    if-nez v0, :cond_d8

    goto :goto_e0

    .line 1272
    :cond_d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be bothsetCredentialSharedWithUser and +setOemPrivate to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_e0
    :goto_e0
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 1278
    :cond_e2
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_103

    .line 1279
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    if-ne v0, v1, :cond_ef

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_fb

    :cond_ef
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_fb

    .line 1282
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->isEnterpriseSuggestion()Z

    move-result v0

    if-eqz v0, :cond_fb

    goto :goto_103

    .line 1283
    :cond_fb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A carrier merged network must be a metered, enterprise network with valid subscription Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_103
    :goto_103
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_114

    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    if-ne v0, v1, :cond_10c

    goto :goto_114

    .line 1289
    :cond_10c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be set both SubscriptionGroup and SubscriptionId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_114
    :goto_114
    new-instance v3, Landroid/net/wifi/WifiNetworkSuggestion;

    iget-object v5, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-boolean v6, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    iget-boolean v7, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    iget-boolean v8, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    iget-boolean v9, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsInitialAutojoinEnabled:Z

    iget v10, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriorityGroup:I

    invoke-direct/range {v3 .. v10}, Landroid/net/wifi/WifiNetworkSuggestion;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;ZZZZI)V

    return-object v3

    .line 1228
    .end local v4    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid ssid for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_12e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSsid should be invoked for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "bssid"    # Landroid/net/MacAddress;

    .line 342
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    .line 344
    return-object p0
.end method

.method public whitelist setCarrierId(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "carrierId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 536
    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mCarrierId:I

    .line 537
    return-object p0
.end method

.method public whitelist setCarrierMerged(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "isCarrierMerged"    # Z

    .line 995
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 998
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsCarrierMerged:Z

    .line 999
    return-object p0

    .line 996
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setCredentialSharedWithUser(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "isShared"    # Z

    .line 798
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUser:Z

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsSharedWithUserSet:Z

    .line 800
    return-object p0
.end method

.method public whitelist setIsAppInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isAppInteractionRequired"    # Z

    .line 726
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    .line 727
    return-object p0
.end method

.method public whitelist setIsEnhancedOpen(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isEnhancedOpen"    # Z

    .line 355
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    .line 356
    return-object p0
.end method

.method public whitelist setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isHiddenSsid"    # Z

    .line 682
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    .line 683
    return-object p0
.end method

.method public whitelist setIsInitialAutojoinEnabled(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 820
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsInitialAutojoinEnabled:Z

    .line 821
    return-object p0
.end method

.method public whitelist setIsMetered(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "isMetered"    # Z

    .line 774
    if-eqz p1, :cond_6

    .line 775
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    goto :goto_9

    .line 777
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMeteredOverride:I

    .line 779
    :goto_9
    return-object p0
.end method

.method public whitelist setIsUserInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isUserInteractionRequired"    # Z

    .line 740
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    .line 741
    return-object p0
.end method

.method public whitelist setIsWpa3SaeH2eOnlyModeEnabled(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 1018
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1021
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSaeH2eOnlyMode:Z

    .line 1022
    return-object p0

    .line 1019
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setMacRandomizationSetting(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "macRandomizationSetting"    # I

    .line 699
    packed-switch p1, :pswitch_data_e

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 702
    :pswitch_9
    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mMacRandomizationSetting:I

    .line 703
    nop

    .line 707
    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist setOemPaid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "isOemPaid"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 919
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 922
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPaid:Z

    .line 923
    return-object p0

    .line 920
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setOemPrivate(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "isOemPrivate"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 962
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 965
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkOemPrivate:Z

    .line 966
    return-object p0

    .line 963
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setPasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "passpointConfig"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 515
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->validate()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 519
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 520
    return-object p0

    .line 517
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passpoint configuration is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPriority(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 5
    .param p1, "priority"    # I

    .line 757
    if-ltz p1, :cond_5

    .line 760
    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    .line 761
    return-object p0

    .line 758
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPriorityGroup(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "priorityGroup"    # I

    .line 635
    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriorityGroup:I

    .line 636
    return-object p0
.end method

.method public whitelist setRestricted(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isRestricted"    # Z

    .line 868
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkRestricted:Z

    .line 869
    return-object p0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;

    .line 296
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 298
    .local v0, "unicodeEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 301
    invoke-static {p1}, Landroid/net/wifi/WifiSsid;->fromUtf8Text(Ljava/lang/CharSequence;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 302
    return-object p0

    .line 299
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SSID is not a valid unicode string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setSubscriptionGroup(Landroid/os/ParcelUuid;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "groupUuid"    # Landroid/os/ParcelUuid;

    .line 600
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 603
    if-eqz p1, :cond_b

    .line 606
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 607
    return-object p0

    .line 604
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SubscriptionGroup is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setSubscriptionId(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "subscriptionId"    # I

    .line 565
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 568
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 571
    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSubscriptionId:I

    .line 572
    return-object p0

    .line 569
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription Id is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setUntrusted(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "isUntrusted"    # Z

    .line 844
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsNetworkUntrusted:Z

    .line 845
    return-object p0
.end method

.method public whitelist setWapiEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 3
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 667
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 669
    return-object p0
.end method

.method public whitelist setWapiPassphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 5
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 649
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 651
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 654
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWapiPskPassphrase:Ljava/lang/String;

    .line 655
    return-object p0

    .line 652
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setWifi7Enabled(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 880
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsWifi7Enabled:Z

    .line 881
    return-object p0
.end method

.method public whitelist setWifiSsid(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .line 318
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_15

    .line 322
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 323
    return-object p0

    .line 320
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty WifiSsid is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWpa2EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 406
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 408
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isMandatoryParameterSetForServerCertValidation()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 409
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enterprise configuration mandates server certificate but validation is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_18
    :goto_18
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 413
    return-object p0
.end method

.method public whitelist setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 5
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 368
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 370
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 373
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    .line 374
    return-object p0

    .line 371
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setWpa3Enterprise192BitModeConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 485
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 489
    nop

    .line 490
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 494
    nop

    .line 495
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 494
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 500
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseType:I

    .line 502
    return-object p0

    .line 496
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The CA certificate does not meet 192-bit mode requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client certificate does not meet 192-bit mode requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The 192-bit mode network type must be TLS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWpa3EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 438
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isMandatoryParameterSetForServerCertValidation()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 439
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enterprise configuration mandates server certificate but validation is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_18
    :goto_18
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 443
    return-object p0
.end method

.method public whitelist setWpa3EnterpriseStandardModeConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 4
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 459
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 461
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isMandatoryParameterSetForServerCertValidation()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 462
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enterprise configuration mandates server certificate but validation is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_18
    :goto_18
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseType:I

    .line 467
    return-object p0
.end method

.method public whitelist setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .registers 5
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 386
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 388
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 391
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    .line 392
    return-object p0

    .line 389
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
