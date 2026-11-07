.class Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 4285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4287
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4288
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 4290
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 4291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 4293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 4294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 4295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 4296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 4297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v3

    :goto_47
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 4298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4299
    .local v1, "numRoamingConsortiumIds":I
    new-array v4, v1, [J

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 4300
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    if-ge v4, v1, :cond_5f

    .line 4301
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 4300
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 4303
    .end local v4    # "i":I
    :cond_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4304
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_66
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_76

    .line 4305
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 4304
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 4307
    .end local v4    # "i":I
    :cond_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 4308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDeletionPriority(Landroid/net/wifi/WifiConfiguration;I)V

    .line 4310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    move v4, v2

    goto :goto_92

    :cond_91
    move v4, v3

    :goto_92
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 4311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    move v4, v2

    goto :goto_9d

    :cond_9c
    move v4, v3

    :goto_9d
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 4312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 4314
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 4315
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 4316
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 4317
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 4318
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 4319
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 4320
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 4322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4323
    .local v4, "numSecurityParams":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d4
    if-ge v5, v4, :cond_ec

    .line 4324
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmSecurityParamsList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v6

    const-class v7, Landroid/net/wifi/SecurityParams;

    .line 4325
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/SecurityParams;

    .line 4324
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4323
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 4328
    .end local v5    # "i":I
    :cond_ec
    const-class v5, Landroid/net/wifi/WifiEnterpriseConfig;

    .line 4329
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 4328
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 4330
    const-class v5, Landroid/net/IpConfiguration;

    .line 4331
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/IpConfiguration;

    .line 4330
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 4332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    .line 4333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 4334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11d

    move v5, v2

    goto :goto_11e

    :cond_11d
    move v5, v3

    :goto_11e
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 4335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_128

    move v5, v2

    goto :goto_129

    :cond_128
    move v5, v3

    :goto_129
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 4336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_133

    move v5, v2

    goto :goto_134

    :cond_133
    move v5, v3

    :goto_134
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 4337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13e

    move v5, v2

    goto :goto_13f

    :cond_13e
    move v5, v3

    :goto_13f
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 4338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_149

    move v5, v2

    goto :goto_14a

    :cond_149
    move v5, v3

    :goto_14a
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 4339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_154

    move v5, v2

    goto :goto_155

    :cond_154
    move v5, v3

    :goto_155
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 4340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15f

    move v5, v2

    goto :goto_160

    :cond_15f
    move v5, v3

    :goto_160
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 4341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16a

    move v5, v2

    goto :goto_16b

    :cond_16a
    move v5, v3

    :goto_16b
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 4342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_175

    move v5, v2

    goto :goto_176

    :cond_175
    move v5, v3

    :goto_176
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 4343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_180

    move v5, v2

    goto :goto_181

    :cond_180
    move v5, v3

    :goto_181
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 4344
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-static {v0, v5}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmIsRepeaterEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 4346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_198

    move v5, v2

    goto :goto_199

    :cond_198
    move v5, v3

    :goto_199
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 4347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 4348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 4349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 4350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 4351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 4352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 4353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 4354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 4355
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 4356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 4357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1df

    move v5, v2

    goto :goto_1e0

    :cond_1df
    move v5, v3

    :goto_1e0
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 4358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ea

    move v5, v2

    goto :goto_1eb

    :cond_1ea
    move v5, v3

    :goto_1eb
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 4359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmPasspointManagementObjectTree(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 4360
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(IJ)V

    .line 4361
    const-class v5, Landroid/net/MacAddress;

    .line 4362
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 4361
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/MacAddress;

    invoke-static {v0, v5}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;Landroid/net/MacAddress;)V

    .line 4363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 4364
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-static {v0, v5}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmIsSendDhcpHostnameEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_224

    goto :goto_225

    :cond_224
    move v2, v3

    :goto_225
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    .line 4366
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 4367
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 4368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 4369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmPasspointUniqueId(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 4370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 4371
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    .line 4372
    const-class v2, Landroid/os/ParcelUuid;

    .line 4373
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4372
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmSubscriptionGroup(Landroid/net/wifi/WifiConfiguration;Landroid/os/ParcelUuid;)V

    .line 4374
    const-class v2, Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmBssidAllowlist(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)V

    .line 4375
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmIsDppConfigurator(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4376
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppPrivateEcKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4377
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmDppPrivateEcKey(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_281

    .line 4378
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppPrivateEcKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4380
    :cond_281
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppConnector(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4381
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmDppConnector(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_293

    .line 4382
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppConnector(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4384
    :cond_293
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppCSignKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4385
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmDppCSignKey(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_2a5

    .line 4386
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppCSignKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4388
    :cond_2a5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppNetAccessKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4389
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmDppNetAccessKey(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_2b7

    .line 4390
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmDppNetAccessKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4392
    :cond_2b7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    .line 4393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmIsUserSelected(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4394
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmHasPreSharedKeyChanged(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4395
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmEncryptedPreSharedKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4396
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmEncryptedPreSharedKey(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_2dd

    .line 4397
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmEncryptedPreSharedKey(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4399
    :cond_2dd
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmEncryptedPreSharedKeyIv(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4400
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fgetmEncryptedPreSharedKeyIv(Landroid/net/wifi/WifiConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_2ef

    .line 4401
    new-array v2, v3, [B

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmEncryptedPreSharedKeyIv(Landroid/net/wifi/WifiConfiguration;[B)V

    .line 4403
    :cond_2ef
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmIpProvisioningTimedOut(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4404
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmVendorData(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)V

    .line 4405
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiConfiguration;->-$$Nest$fputmWifi7Enabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4406
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4285
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 4410
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4285
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method
