.class public Lcom/android/server/wifi/scanner/ScanScheduleUtil;
.super Ljava/lang/Object;
.source "ScanScheduleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z
    .locals 5
    .param p0, "bucket1"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p1, "bucket2"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 52
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return v3

    #@7
    .line 53
    :cond_1
    if-ne p0, p1, :cond_2

    #@9
    return v4

    #@a
    .line 55
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@c
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@e
    if-eq v1, v2, :cond_3

    #@10
    return v3

    #@11
    .line 56
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@13
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@15
    if-eq v1, v2, :cond_4

    #@17
    return v3

    #@18
    .line 57
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@1a
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@1c
    if-eq v1, v2, :cond_5

    #@1e
    return v3

    #@1f
    .line 58
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@21
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@23
    if-eq v1, v2, :cond_6

    #@25
    return v3

    #@26
    .line 59
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@28
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@2a
    if-eq v1, v2, :cond_7

    #@2c
    return v3

    #@2d
    .line 60
    :cond_7
    const/4 v0, 0x0

    #@2e
    .local v0, "c":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@30
    if-ge v0, v1, :cond_9

    #@32
    .line 61
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@34
    aget-object v1, v1, v0

    #@36
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@38
    aget-object v2, v2, v0

    #@3a
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_8

    #@40
    .line 62
    return v3

    #@41
    .line 60
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 66
    :cond_9
    return v4
.end method

.method public static channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z
    .locals 4
    .param p0, "channel1"    # Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .param p1, "channel2"    # Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 39
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return v1

    #@7
    .line 40
    :cond_1
    if-ne p0, p1, :cond_2

    #@9
    return v0

    #@a
    .line 42
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@c
    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@e
    if-eq v2, v3, :cond_3

    #@10
    return v1

    #@11
    .line 43
    :cond_3
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    #@13
    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    #@15
    if-eq v2, v3, :cond_4

    #@17
    return v1

    #@18
    .line 44
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    #@1a
    iget-boolean v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    #@1c
    if-ne v2, v3, :cond_5

    #@1e
    :goto_0
    return v0

    #@1f
    :cond_5
    move v0, v1

    #@20
    goto :goto_0
.end method

.method public static filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 12
    .param p0, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "scheduledBucket"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    #@3
    array-length v4, p1

    #@4
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    .line 155
    .local v1, "filteredScanDatas":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanData;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 156
    .local v0, "filteredResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    array-length v7, p1

    #@d
    move v6, v5

    #@e
    :goto_0
    if-ge v6, v7, :cond_6

    #@10
    aget-object v2, p1, v6

    #@12
    .line 158
    .local v2, "scanData":Landroid/net/wifi/WifiScanner$ScanData;
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    #@15
    move-result v4

    #@16
    invoke-static {p3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 159
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1f
    .line 160
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@22
    move-result-object v8

    #@23
    array-length v9, v8

    #@24
    move v4, v5

    #@25
    :goto_1
    if-ge v4, v9, :cond_1

    #@27
    aget-object v3, v8, v4

    #@29
    .line 161
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    iget v10, v3, Landroid/net/wifi/ScanResult;->frequency:I

    #@2b
    invoke-virtual {p0, p2, v10}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    #@2e
    move-result v10

    #@2f
    if-eqz v10, :cond_0

    #@31
    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 164
    :cond_0
    iget v10, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@36
    if-lez v10, :cond_3

    #@38
    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3b
    move-result v10

    #@3c
    iget v11, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@3e
    if-lt v10, v11, :cond_3

    #@40
    .line 172
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@43
    move-result v4

    #@44
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@47
    move-result-object v8

    #@48
    array-length v8, v8

    #@49
    if-ne v4, v8, :cond_4

    #@4b
    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    .line 156
    :cond_2
    :goto_2
    add-int/lit8 v4, v6, 0x1

    #@50
    move v6, v4

    #@51
    goto :goto_0

    #@52
    .line 160
    .restart local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@54
    goto :goto_1

    #@55
    .line 174
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@58
    move-result v4

    #@59
    if-gtz v4, :cond_5

    #@5b
    .line 175
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    #@5e
    move-result v4

    #@5f
    .line 174
    invoke-static {p3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketDefinitlyScanned(II)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_2

    #@65
    .line 176
    :cond_5
    new-instance v8, Landroid/net/wifi/WifiScanner$ScanData;

    #@67
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getId()I

    #@6a
    move-result v9

    #@6b
    .line 177
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getFlags()I

    #@6e
    move-result v10

    #@6f
    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@72
    move-result v4

    #@73
    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    #@75
    .line 178
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@78
    move-result-object v4

    #@79
    check-cast v4, [Landroid/net/wifi/ScanResult;

    #@7b
    .line 176
    invoke-direct {v8, v9, v10, v4}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    #@7e
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_2

    #@82
    .line 183
    .end local v2    # "scanData":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@85
    move-result v4

    #@86
    if-nez v4, :cond_7

    #@88
    .line 184
    const/4 v4, 0x0

    #@89
    return-object v4

    #@8a
    .line 186
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8d
    move-result v4

    #@8e
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ScanData;

    #@90
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@93
    move-result-object v4

    #@94
    check-cast v4, [Landroid/net/wifi/WifiScanner$ScanData;

    #@96
    return-object v4
.end method

.method private static isBucketDefinitlyScanned(II)Z
    .locals 3
    .param p0, "scheduledBucket"    # I
    .param p1, "bucketsScannedBitSet"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 118
    if-gez p0, :cond_0

    #@4
    .line 119
    return v0

    #@5
    .line 120
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 121
    return v1

    #@8
    .line 123
    :cond_1
    shl-int v2, v0, p0

    #@a
    and-int/2addr v2, p1

    #@b
    if-eqz v2, :cond_2

    #@d
    :goto_0
    return v0

    #@e
    :cond_2
    move v0, v1

    #@f
    goto :goto_0
.end method

.method private static isBucketMaybeScanned(II)Z
    .locals 3
    .param p0, "scheduledBucket"    # I
    .param p1, "bucketsScannedBitSet"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 102
    if-eqz p1, :cond_0

    #@4
    if-gez p0, :cond_1

    #@6
    .line 103
    :cond_0
    return v0

    #@7
    .line 105
    :cond_1
    shl-int v2, v0, p0

    #@9
    and-int/2addr v2, p1

    #@a
    if-eqz v2, :cond_2

    #@c
    :goto_0
    return v0

    #@d
    :cond_2
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static scheduleEquals(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanSettings;)Z
    .locals 5
    .param p0, "schedule1"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p1, "schedule2"    # Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 74
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    return v3

    #@7
    .line 75
    :cond_1
    if-ne p0, p1, :cond_2

    #@9
    return v4

    #@a
    .line 77
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@c
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@e
    if-eq v1, v2, :cond_3

    #@10
    return v3

    #@11
    .line 78
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@13
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@15
    if-eq v1, v2, :cond_4

    #@17
    return v3

    #@18
    .line 79
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@1a
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@1c
    if-eq v1, v2, :cond_5

    #@1e
    return v3

    #@1f
    .line 80
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@21
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@23
    if-eq v1, v2, :cond_6

    #@25
    .line 81
    return v3

    #@26
    .line 83
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@28
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@2a
    if-eq v1, v2, :cond_7

    #@2c
    return v3

    #@2d
    .line 84
    :cond_7
    const/4 v0, 0x0

    #@2e
    .local v0, "b":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@30
    if-ge v0, v1, :cond_9

    #@32
    .line 85
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@34
    aget-object v1, v1, v0

    #@36
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@38
    aget-object v2, v2, v0

    #@3a
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_8

    #@40
    .line 86
    return v3

    #@41
    .line 84
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 90
    :cond_9
    return v4
.end method

.method public static shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 1
    .param p0, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "scheduledBucket"    # I

    #@0
    .prologue
    .line 133
    invoke-static {p4, p2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 134
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@8
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 136
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method
