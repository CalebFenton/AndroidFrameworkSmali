.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public recordDurationSec:I

.field public rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 421
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@6
    .line 420
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    #@0
    .prologue
    .line 263
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 264
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 266
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 267
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 271
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@13
    return-object v0

    #@14
    .line 264
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1246
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 425
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@7
    .line 426
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@9
    .line 427
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@b
    .line 428
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@d
    .line 429
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@f
    .line 430
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@11
    .line 431
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@13
    .line 432
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@15
    .line 433
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@17
    .line 434
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@19
    .line 435
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@1b
    .line 436
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@1d
    .line 437
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@1f
    .line 438
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@21
    .line 439
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@23
    .line 440
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@29
    .line 441
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2f
    .line 442
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@35
    .line 443
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@3b
    .line 444
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@3d
    .line 445
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@3f
    .line 446
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@41
    .line 447
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@43
    .line 448
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@45
    .line 449
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@47
    .line 450
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@49
    .line 451
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@4b
    .line 452
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@4d
    .line 453
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@4f
    .line 454
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@51
    .line 455
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@53
    .line 456
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@55
    .line 457
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@57
    .line 458
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@59
    .line 459
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@5f
    .line 460
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@61
    .line 461
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@67
    .line 462
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@69
    .line 463
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@6b
    .line 464
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@6d
    .line 465
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@6f
    .line 466
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@71
    .line 467
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@73
    .line 468
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@75
    .line 469
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@77
    .line 470
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@79
    .line 471
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@7b
    .line 472
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@7e
    move-result-object v0

    #@7f
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@81
    .line 473
    const/4 v0, -0x1

    #@82
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->cachedSize:I

    #@84
    .line 474
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 10

    #@0
    .prologue
    .line 669
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v7

    #@4
    .line 670
    .local v7, "size":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    if-eqz v8, :cond_1

    #@8
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@a
    array-length v8, v8

    #@b
    if-lez v8, :cond_1

    #@d
    .line 671
    const/4 v6, 0x0

    #@e
    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@10
    array-length v8, v8

    #@11
    if-ge v6, v8, :cond_1

    #@13
    .line 672
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@15
    aget-object v1, v8, v6

    #@17
    .line 673
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    #@19
    .line 675
    const/4 v8, 0x1

    #@1a
    .line 674
    invoke-static {v8, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@1d
    move-result v8

    #@1e
    add-int/2addr v7, v8

    #@1f
    .line 671
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 679
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@24
    if-eqz v8, :cond_2

    #@26
    .line 681
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@28
    const/4 v9, 0x2

    #@29
    .line 680
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v8

    #@2d
    add-int/2addr v7, v8

    #@2e
    .line 683
    :cond_2
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@30
    if-eqz v8, :cond_3

    #@32
    .line 685
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@34
    const/4 v9, 0x3

    #@35
    .line 684
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@38
    move-result v8

    #@39
    add-int/2addr v7, v8

    #@3a
    .line 687
    :cond_3
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@3c
    if-eqz v8, :cond_4

    #@3e
    .line 689
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@40
    const/4 v9, 0x4

    #@41
    .line 688
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@44
    move-result v8

    #@45
    add-int/2addr v7, v8

    #@46
    .line 691
    :cond_4
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@48
    if-eqz v8, :cond_5

    #@4a
    .line 693
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@4c
    const/4 v9, 0x5

    #@4d
    .line 692
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@50
    move-result v8

    #@51
    add-int/2addr v7, v8

    #@52
    .line 695
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@54
    if-eqz v8, :cond_6

    #@56
    .line 697
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@58
    const/4 v9, 0x6

    #@59
    .line 696
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@5c
    move-result v8

    #@5d
    add-int/2addr v7, v8

    #@5e
    .line 699
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@60
    if-eqz v8, :cond_7

    #@62
    .line 701
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@64
    const/4 v9, 0x7

    #@65
    .line 700
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@68
    move-result v8

    #@69
    add-int/2addr v7, v8

    #@6a
    .line 703
    :cond_7
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@6c
    if-eqz v8, :cond_8

    #@6e
    .line 705
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@70
    const/16 v9, 0x8

    #@72
    .line 704
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@75
    move-result v8

    #@76
    add-int/2addr v7, v8

    #@77
    .line 707
    :cond_8
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@79
    if-eqz v8, :cond_9

    #@7b
    .line 709
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@7d
    const/16 v9, 0x9

    #@7f
    .line 708
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@82
    move-result v8

    #@83
    add-int/2addr v7, v8

    #@84
    .line 711
    :cond_9
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@86
    if-eqz v8, :cond_a

    #@88
    .line 713
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@8a
    const/16 v9, 0xa

    #@8c
    .line 712
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@8f
    move-result v8

    #@90
    add-int/2addr v7, v8

    #@91
    .line 715
    :cond_a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@93
    if-eqz v8, :cond_b

    #@95
    .line 717
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@97
    const/16 v9, 0xb

    #@99
    .line 716
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@9c
    move-result v8

    #@9d
    add-int/2addr v7, v8

    #@9e
    .line 719
    :cond_b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@a0
    if-eqz v8, :cond_c

    #@a2
    .line 721
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@a4
    const/16 v9, 0xc

    #@a6
    .line 720
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@a9
    move-result v8

    #@aa
    add-int/2addr v7, v8

    #@ab
    .line 723
    :cond_c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@ad
    if-eqz v8, :cond_d

    #@af
    .line 725
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@b1
    const/16 v9, 0xd

    #@b3
    .line 724
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@b6
    move-result v8

    #@b7
    add-int/2addr v7, v8

    #@b8
    .line 727
    :cond_d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@ba
    if-eqz v8, :cond_e

    #@bc
    .line 729
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@be
    const/16 v9, 0xe

    #@c0
    .line 728
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@c3
    move-result v8

    #@c4
    add-int/2addr v7, v8

    #@c5
    .line 731
    :cond_e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@c7
    if-eqz v8, :cond_f

    #@c9
    .line 733
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@cb
    const/16 v9, 0xf

    #@cd
    .line 732
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@d0
    move-result v8

    #@d1
    add-int/2addr v7, v8

    #@d2
    .line 735
    :cond_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d4
    if-eqz v8, :cond_11

    #@d6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d8
    array-length v8, v8

    #@d9
    if-lez v8, :cond_11

    #@db
    .line 736
    const/4 v6, 0x0

    #@dc
    .restart local v6    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@de
    array-length v8, v8

    #@df
    if-ge v6, v8, :cond_11

    #@e1
    .line 737
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@e3
    aget-object v3, v8, v6

    #@e5
    .line 738
    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    #@e7
    .line 740
    const/16 v8, 0x10

    #@e9
    .line 739
    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@ec
    move-result v8

    #@ed
    add-int/2addr v7, v8

    #@ee
    .line 736
    :cond_10
    add-int/lit8 v6, v6, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 744
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@f3
    if-eqz v8, :cond_13

    #@f5
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@f7
    array-length v8, v8

    #@f8
    if-lez v8, :cond_13

    #@fa
    .line 745
    const/4 v6, 0x0

    #@fb
    .restart local v6    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@fd
    array-length v8, v8

    #@fe
    if-ge v6, v8, :cond_13

    #@100
    .line 746
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@102
    aget-object v4, v8, v6

    #@104
    .line 747
    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    #@106
    .line 749
    const/16 v8, 0x11

    #@108
    .line 748
    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@10b
    move-result v8

    #@10c
    add-int/2addr v7, v8

    #@10d
    .line 745
    :cond_12
    add-int/lit8 v6, v6, 0x1

    #@10f
    goto :goto_2

    #@110
    .line 753
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@112
    if-eqz v8, :cond_15

    #@114
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@116
    array-length v8, v8

    #@117
    if-lez v8, :cond_15

    #@119
    .line 754
    const/4 v6, 0x0

    #@11a
    .restart local v6    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@11c
    array-length v8, v8

    #@11d
    if-ge v6, v8, :cond_15

    #@11f
    .line 755
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@121
    aget-object v3, v8, v6

    #@123
    .line 756
    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    #@125
    .line 758
    const/16 v8, 0x12

    #@127
    .line 757
    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@12a
    move-result v8

    #@12b
    add-int/2addr v7, v8

    #@12c
    .line 754
    :cond_14
    add-int/lit8 v6, v6, 0x1

    #@12e
    goto :goto_3

    #@12f
    .line 762
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@131
    if-eqz v8, :cond_17

    #@133
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@135
    array-length v8, v8

    #@136
    if-lez v8, :cond_17

    #@138
    .line 763
    const/4 v6, 0x0

    #@139
    .restart local v6    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@13b
    array-length v8, v8

    #@13c
    if-ge v6, v8, :cond_17

    #@13e
    .line 764
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@140
    aget-object v4, v8, v6

    #@142
    .line 765
    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    #@144
    .line 767
    const/16 v8, 0x13

    #@146
    .line 766
    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@149
    move-result v8

    #@14a
    add-int/2addr v7, v8

    #@14b
    .line 763
    :cond_16
    add-int/lit8 v6, v6, 0x1

    #@14d
    goto :goto_4

    #@14e
    .line 771
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@150
    if-eqz v8, :cond_18

    #@152
    .line 773
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@154
    const/16 v9, 0x14

    #@156
    .line 772
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@159
    move-result v8

    #@15a
    add-int/2addr v7, v8

    #@15b
    .line 775
    :cond_18
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@15d
    if-eqz v8, :cond_19

    #@15f
    .line 777
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@161
    const/16 v9, 0x15

    #@163
    .line 776
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@166
    move-result v8

    #@167
    add-int/2addr v7, v8

    #@168
    .line 779
    :cond_19
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@16a
    if-eqz v8, :cond_1a

    #@16c
    .line 781
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@16e
    const/16 v9, 0x16

    #@170
    .line 780
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@173
    move-result v8

    #@174
    add-int/2addr v7, v8

    #@175
    .line 783
    :cond_1a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@177
    if-eqz v8, :cond_1b

    #@179
    .line 785
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@17b
    const/16 v9, 0x17

    #@17d
    .line 784
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@180
    move-result v8

    #@181
    add-int/2addr v7, v8

    #@182
    .line 787
    :cond_1b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@184
    if-eqz v8, :cond_1c

    #@186
    .line 789
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@188
    const/16 v9, 0x18

    #@18a
    .line 788
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@18d
    move-result v8

    #@18e
    add-int/2addr v7, v8

    #@18f
    .line 791
    :cond_1c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@191
    if-eqz v8, :cond_1d

    #@193
    .line 793
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@195
    const/16 v9, 0x19

    #@197
    .line 792
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@19a
    move-result v8

    #@19b
    add-int/2addr v7, v8

    #@19c
    .line 795
    :cond_1d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@19e
    if-eqz v8, :cond_1e

    #@1a0
    .line 797
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@1a2
    const/16 v9, 0x1a

    #@1a4
    .line 796
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a7
    move-result v8

    #@1a8
    add-int/2addr v7, v8

    #@1a9
    .line 799
    :cond_1e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1ab
    if-eqz v8, :cond_1f

    #@1ad
    .line 801
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1af
    const/16 v9, 0x1b

    #@1b1
    .line 800
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1b4
    move-result v8

    #@1b5
    add-int/2addr v7, v8

    #@1b6
    .line 803
    :cond_1f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@1b8
    if-eqz v8, :cond_20

    #@1ba
    .line 805
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@1bc
    const/16 v9, 0x1c

    #@1be
    .line 804
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1c1
    move-result v8

    #@1c2
    add-int/2addr v7, v8

    #@1c3
    .line 807
    :cond_20
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@1c5
    if-eqz v8, :cond_21

    #@1c7
    .line 809
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@1c9
    const/16 v9, 0x1d

    #@1cb
    .line 808
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1ce
    move-result v8

    #@1cf
    add-int/2addr v7, v8

    #@1d0
    .line 811
    :cond_21
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@1d2
    if-eqz v8, :cond_22

    #@1d4
    .line 813
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@1d6
    const/16 v9, 0x1e

    #@1d8
    .line 812
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1db
    move-result v8

    #@1dc
    add-int/2addr v7, v8

    #@1dd
    .line 815
    :cond_22
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1df
    if-eqz v8, :cond_23

    #@1e1
    .line 817
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1e3
    const/16 v9, 0x1f

    #@1e5
    .line 816
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e8
    move-result v8

    #@1e9
    add-int/2addr v7, v8

    #@1ea
    .line 819
    :cond_23
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1ec
    if-eqz v8, :cond_24

    #@1ee
    .line 821
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1f0
    const/16 v9, 0x20

    #@1f2
    .line 820
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1f5
    move-result v8

    #@1f6
    add-int/2addr v7, v8

    #@1f7
    .line 823
    :cond_24
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1f9
    if-eqz v8, :cond_25

    #@1fb
    .line 825
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1fd
    const/16 v9, 0x21

    #@1ff
    .line 824
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@202
    move-result v8

    #@203
    add-int/2addr v7, v8

    #@204
    .line 827
    :cond_25
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@206
    if-eqz v8, :cond_26

    #@208
    .line 829
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@20a
    const/16 v9, 0x22

    #@20c
    .line 828
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@20f
    move-result v8

    #@210
    add-int/2addr v7, v8

    #@211
    .line 831
    :cond_26
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@213
    if-eqz v8, :cond_28

    #@215
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@217
    array-length v8, v8

    #@218
    if-lez v8, :cond_28

    #@21a
    .line 832
    const/4 v6, 0x0

    #@21b
    .restart local v6    # "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@21d
    array-length v8, v8

    #@21e
    if-ge v6, v8, :cond_28

    #@220
    .line 833
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@222
    aget-object v2, v8, v6

    #@224
    .line 834
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    #@226
    .line 836
    const/16 v8, 0x23

    #@228
    .line 835
    invoke-static {v8, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@22b
    move-result v8

    #@22c
    add-int/2addr v7, v8

    #@22d
    .line 832
    :cond_27
    add-int/lit8 v6, v6, 0x1

    #@22f
    goto :goto_5

    #@230
    .line 840
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@232
    if-eqz v8, :cond_29

    #@234
    .line 842
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@236
    const/16 v9, 0x24

    #@238
    .line 841
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@23b
    move-result v8

    #@23c
    add-int/2addr v7, v8

    #@23d
    .line 844
    :cond_29
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@23f
    if-eqz v8, :cond_2a

    #@241
    .line 846
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@243
    const/16 v9, 0x25

    #@245
    .line 845
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@248
    move-result v8

    #@249
    add-int/2addr v7, v8

    #@24a
    .line 848
    :cond_2a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@24c
    if-eqz v8, :cond_2b

    #@24e
    .line 850
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@250
    const/16 v9, 0x26

    #@252
    .line 849
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@255
    move-result v8

    #@256
    add-int/2addr v7, v8

    #@257
    .line 852
    :cond_2b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@259
    if-eqz v8, :cond_2c

    #@25b
    .line 854
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@25d
    const/16 v9, 0x27

    #@25f
    .line 853
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@262
    move-result v8

    #@263
    add-int/2addr v7, v8

    #@264
    .line 856
    :cond_2c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@266
    if-eqz v8, :cond_2d

    #@268
    .line 858
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@26a
    const/16 v9, 0x28

    #@26c
    .line 857
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@26f
    move-result v8

    #@270
    add-int/2addr v7, v8

    #@271
    .line 860
    :cond_2d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@273
    if-eqz v8, :cond_2e

    #@275
    .line 862
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@277
    const/16 v9, 0x29

    #@279
    .line 861
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@27c
    move-result v8

    #@27d
    add-int/2addr v7, v8

    #@27e
    .line 864
    :cond_2e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@280
    if-eqz v8, :cond_2f

    #@282
    .line 866
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@284
    const/16 v9, 0x2a

    #@286
    .line 865
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@289
    move-result v8

    #@28a
    add-int/2addr v7, v8

    #@28b
    .line 868
    :cond_2f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@28d
    if-eqz v8, :cond_30

    #@28f
    .line 870
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@291
    const/16 v9, 0x2b

    #@293
    .line 869
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@296
    move-result v8

    #@297
    add-int/2addr v7, v8

    #@298
    .line 872
    :cond_30
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@29a
    if-eqz v8, :cond_31

    #@29c
    .line 874
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@29e
    const/16 v9, 0x2c

    #@2a0
    .line 873
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2a3
    move-result v8

    #@2a4
    add-int/2addr v7, v8

    #@2a5
    .line 876
    :cond_31
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@2a7
    if-eqz v8, :cond_32

    #@2a9
    .line 878
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@2ab
    const/16 v9, 0x2d

    #@2ad
    .line 877
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2b0
    move-result v8

    #@2b1
    add-int/2addr v7, v8

    #@2b2
    .line 880
    :cond_32
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@2b4
    if-eqz v8, :cond_33

    #@2b6
    .line 882
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@2b8
    const/16 v9, 0x2e

    #@2ba
    .line 881
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2bd
    move-result v8

    #@2be
    add-int/2addr v7, v8

    #@2bf
    .line 884
    :cond_33
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2c1
    if-eqz v8, :cond_35

    #@2c3
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2c5
    array-length v8, v8

    #@2c6
    if-lez v8, :cond_35

    #@2c8
    .line 885
    const/4 v6, 0x0

    #@2c9
    .restart local v6    # "i":I
    :goto_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2cb
    array-length v8, v8

    #@2cc
    if-ge v6, v8, :cond_35

    #@2ce
    .line 886
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2d0
    aget-object v0, v8, v6

    #@2d2
    .line 887
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    #@2d4
    .line 889
    const/16 v8, 0x2f

    #@2d6
    .line 888
    invoke-static {v8, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@2d9
    move-result v8

    #@2da
    add-int/2addr v7, v8

    #@2db
    .line 885
    :cond_34
    add-int/lit8 v6, v6, 0x1

    #@2dd
    goto :goto_6

    #@2de
    .line 893
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2e0
    if-eqz v8, :cond_37

    #@2e2
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2e4
    array-length v8, v8

    #@2e5
    if-lez v8, :cond_37

    #@2e7
    .line 894
    const/4 v6, 0x0

    #@2e8
    .restart local v6    # "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2ea
    array-length v8, v8

    #@2eb
    if-ge v6, v8, :cond_37

    #@2ed
    .line 895
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@2ef
    aget-object v5, v8, v6

    #@2f1
    .line 896
    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    #@2f3
    .line 898
    const/16 v8, 0x30

    #@2f5
    .line 897
    invoke-static {v8, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@2f8
    move-result v8

    #@2f9
    add-int/2addr v7, v8

    #@2fa
    .line 894
    :cond_36
    add-int/lit8 v6, v6, 0x1

    #@2fc
    goto :goto_7

    #@2fd
    .line 902
    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    return v7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 910
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v8

    #@5
    .line 911
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    #@8
    .line 915
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v10

    #@c
    if-nez v10, :cond_0

    #@e
    .line 916
    return-object p0

    #@f
    .line 913
    :sswitch_0
    return-object p0

    #@10
    .line 922
    :sswitch_1
    const/16 v10, 0xa

    #@12
    .line 921
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@15
    move-result v0

    #@16
    .line 923
    .local v0, "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@18
    if-nez v10, :cond_2

    #@1a
    move v1, v9

    #@1b
    .line 925
    .local v1, "i":I
    :goto_1
    add-int v10, v1, v0

    #@1d
    new-array v3, v10, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@1f
    .line 926
    .local v3, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_1

    #@21
    .line 927
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@23
    invoke-static {v10, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 929
    :cond_1
    :goto_2
    array-length v10, v3

    #@27
    add-int/lit8 v10, v10, -0x1

    #@29
    if-ge v1, v10, :cond_3

    #@2b
    .line 930
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2d
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@30
    aput-object v10, v3, v1

    #@32
    .line 931
    aget-object v10, v3, v1

    #@34
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@37
    .line 932
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3a
    .line 929
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 923
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3f
    array-length v1, v10

    #@40
    goto :goto_1

    #@41
    .line 935
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_3
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@43
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@46
    aput-object v10, v3, v1

    #@48
    .line 936
    aget-object v10, v3, v1

    #@4a
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@4d
    .line 937
    iput-object v3, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4f
    goto :goto_0

    #@50
    .line 941
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@53
    move-result v10

    #@54
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@56
    goto :goto_0

    #@57
    .line 945
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@5a
    move-result v10

    #@5b
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@5d
    goto :goto_0

    #@5e
    .line 949
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@61
    move-result v10

    #@62
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@64
    goto :goto_0

    #@65
    .line 953
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@68
    move-result v10

    #@69
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@6b
    goto :goto_0

    #@6c
    .line 957
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@6f
    move-result v10

    #@70
    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@72
    goto :goto_0

    #@73
    .line 961
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@76
    move-result v10

    #@77
    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@79
    goto :goto_0

    #@7a
    .line 965
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@7d
    move-result v10

    #@7e
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@80
    goto :goto_0

    #@81
    .line 969
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@84
    move-result v10

    #@85
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@87
    goto/16 :goto_0

    #@89
    .line 973
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@8c
    move-result v10

    #@8d
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@8f
    goto/16 :goto_0

    #@91
    .line 977
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@94
    move-result v10

    #@95
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@97
    goto/16 :goto_0

    #@99
    .line 981
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@9c
    move-result v10

    #@9d
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@9f
    goto/16 :goto_0

    #@a1
    .line 985
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@a4
    move-result v10

    #@a5
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@a7
    goto/16 :goto_0

    #@a9
    .line 989
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@ac
    move-result v10

    #@ad
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@af
    goto/16 :goto_0

    #@b1
    .line 993
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@b4
    move-result v10

    #@b5
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 998
    :sswitch_10
    const/16 v10, 0x82

    #@bb
    .line 997
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@be
    move-result v0

    #@bf
    .line 999
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c1
    if-nez v10, :cond_5

    #@c3
    move v1, v9

    #@c4
    .line 1001
    .restart local v1    # "i":I
    :goto_3
    add-int v10, v1, v0

    #@c6
    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c8
    .line 1002
    .local v5, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_4

    #@ca
    .line 1003
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@cc
    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@cf
    .line 1005
    :cond_4
    :goto_4
    array-length v10, v5

    #@d0
    add-int/lit8 v10, v10, -0x1

    #@d2
    if-ge v1, v10, :cond_6

    #@d4
    .line 1006
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d6
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@d9
    aput-object v10, v5, v1

    #@db
    .line 1007
    aget-object v10, v5, v1

    #@dd
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@e0
    .line 1008
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@e3
    .line 1005
    add-int/lit8 v1, v1, 0x1

    #@e5
    goto :goto_4

    #@e6
    .line 999
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@e8
    array-length v1, v10

    #@e9
    goto :goto_3

    #@ea
    .line 1011
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_6
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@ec
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@ef
    aput-object v10, v5, v1

    #@f1
    .line 1012
    aget-object v10, v5, v1

    #@f3
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@f6
    .line 1013
    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1018
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_11
    const/16 v10, 0x8a

    #@fc
    .line 1017
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@ff
    move-result v0

    #@100
    .line 1019
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@102
    if-nez v10, :cond_8

    #@104
    move v1, v9

    #@105
    .line 1021
    .restart local v1    # "i":I
    :goto_5
    add-int v10, v1, v0

    #@107
    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@109
    .line 1022
    .local v6, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_7

    #@10b
    .line 1023
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@10d
    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@110
    .line 1025
    :cond_7
    :goto_6
    array-length v10, v6

    #@111
    add-int/lit8 v10, v10, -0x1

    #@113
    if-ge v1, v10, :cond_9

    #@115
    .line 1026
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@117
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@11a
    aput-object v10, v6, v1

    #@11c
    .line 1027
    aget-object v10, v6, v1

    #@11e
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@121
    .line 1028
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@124
    .line 1025
    add-int/lit8 v1, v1, 0x1

    #@126
    goto :goto_6

    #@127
    .line 1019
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@129
    array-length v1, v10

    #@12a
    goto :goto_5

    #@12b
    .line 1031
    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_9
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@12d
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@130
    aput-object v10, v6, v1

    #@132
    .line 1032
    aget-object v10, v6, v1

    #@134
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@137
    .line 1033
    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@139
    goto/16 :goto_0

    #@13b
    .line 1038
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_12
    const/16 v10, 0x92

    #@13d
    .line 1037
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@140
    move-result v0

    #@141
    .line 1039
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@143
    if-nez v10, :cond_b

    #@145
    move v1, v9

    #@146
    .line 1041
    .restart local v1    # "i":I
    :goto_7
    add-int v10, v1, v0

    #@148
    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@14a
    .line 1042
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_a

    #@14c
    .line 1043
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@14e
    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@151
    .line 1045
    :cond_a
    :goto_8
    array-length v10, v5

    #@152
    add-int/lit8 v10, v10, -0x1

    #@154
    if-ge v1, v10, :cond_c

    #@156
    .line 1046
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@158
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@15b
    aput-object v10, v5, v1

    #@15d
    .line 1047
    aget-object v10, v5, v1

    #@15f
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@162
    .line 1048
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@165
    .line 1045
    add-int/lit8 v1, v1, 0x1

    #@167
    goto :goto_8

    #@168
    .line 1039
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_b
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@16a
    array-length v1, v10

    #@16b
    goto :goto_7

    #@16c
    .line 1051
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_c
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@16e
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@171
    aput-object v10, v5, v1

    #@173
    .line 1052
    aget-object v10, v5, v1

    #@175
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@178
    .line 1053
    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@17a
    goto/16 :goto_0

    #@17c
    .line 1058
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_13
    const/16 v10, 0x9a

    #@17e
    .line 1057
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@181
    move-result v0

    #@182
    .line 1059
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@184
    if-nez v10, :cond_e

    #@186
    move v1, v9

    #@187
    .line 1061
    .restart local v1    # "i":I
    :goto_9
    add-int v10, v1, v0

    #@189
    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@18b
    .line 1062
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_d

    #@18d
    .line 1063
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@18f
    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@192
    .line 1065
    :cond_d
    :goto_a
    array-length v10, v6

    #@193
    add-int/lit8 v10, v10, -0x1

    #@195
    if-ge v1, v10, :cond_f

    #@197
    .line 1066
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@199
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@19c
    aput-object v10, v6, v1

    #@19e
    .line 1067
    aget-object v10, v6, v1

    #@1a0
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@1a3
    .line 1068
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@1a6
    .line 1065
    add-int/lit8 v1, v1, 0x1

    #@1a8
    goto :goto_a

    #@1a9
    .line 1059
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_e
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1ab
    array-length v1, v10

    #@1ac
    goto :goto_9

    #@1ad
    .line 1071
    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_f
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1af
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@1b2
    aput-object v10, v6, v1

    #@1b4
    .line 1072
    aget-object v10, v6, v1

    #@1b6
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@1b9
    .line 1073
    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 1077
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1c0
    move-result v10

    #@1c1
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 1081
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1c8
    move-result v10

    #@1c9
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 1085
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d0
    move-result v10

    #@1d1
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 1089
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d8
    move-result v10

    #@1d9
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 1093
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1e0
    move-result v10

    #@1e1
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 1097
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1e8
    move-result v10

    #@1e9
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@1eb
    goto/16 :goto_0

    #@1ed
    .line 1101
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1f0
    move-result v10

    #@1f1
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 1105
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1f8
    move-result v10

    #@1f9
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1fb
    goto/16 :goto_0

    #@1fd
    .line 1109
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@200
    move-result v10

    #@201
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@203
    goto/16 :goto_0

    #@205
    .line 1113
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@208
    move-result v10

    #@209
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@20b
    goto/16 :goto_0

    #@20d
    .line 1117
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@210
    move-result v10

    #@211
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@213
    goto/16 :goto_0

    #@215
    .line 1121
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@218
    move-result v10

    #@219
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@21b
    goto/16 :goto_0

    #@21d
    .line 1125
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@220
    move-result v10

    #@221
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@223
    goto/16 :goto_0

    #@225
    .line 1129
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@228
    move-result v10

    #@229
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@22b
    goto/16 :goto_0

    #@22d
    .line 1133
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@230
    move-result v10

    #@231
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@233
    goto/16 :goto_0

    #@235
    .line 1138
    :sswitch_23
    const/16 v10, 0x11a

    #@237
    .line 1137
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@23a
    move-result v0

    #@23b
    .line 1139
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@23d
    if-nez v10, :cond_11

    #@23f
    move v1, v9

    #@240
    .line 1141
    .restart local v1    # "i":I
    :goto_b
    add-int v10, v1, v0

    #@242
    new-array v4, v10, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@244
    .line 1142
    .local v4, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v1, :cond_10

    #@246
    .line 1143
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@248
    invoke-static {v10, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24b
    .line 1145
    :cond_10
    :goto_c
    array-length v10, v4

    #@24c
    add-int/lit8 v10, v10, -0x1

    #@24e
    if-ge v1, v10, :cond_12

    #@250
    .line 1146
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@252
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    #@255
    aput-object v10, v4, v1

    #@257
    .line 1147
    aget-object v10, v4, v1

    #@259
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@25c
    .line 1148
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@25f
    .line 1145
    add-int/lit8 v1, v1, 0x1

    #@261
    goto :goto_c

    #@262
    .line 1139
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_11
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@264
    array-length v1, v10

    #@265
    goto :goto_b

    #@266
    .line 1151
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_12
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@268
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    #@26b
    aput-object v10, v4, v1

    #@26d
    .line 1152
    aget-object v10, v4, v1

    #@26f
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@272
    .line 1153
    iput-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@274
    goto/16 :goto_0

    #@276
    .line 1157
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@279
    move-result v10

    #@27a
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@27c
    goto/16 :goto_0

    #@27e
    .line 1161
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@281
    move-result v10

    #@282
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@284
    goto/16 :goto_0

    #@286
    .line 1165
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@289
    move-result v10

    #@28a
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@28c
    goto/16 :goto_0

    #@28e
    .line 1169
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@291
    move-result v10

    #@292
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@294
    goto/16 :goto_0

    #@296
    .line 1173
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@299
    move-result v10

    #@29a
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@29c
    goto/16 :goto_0

    #@29e
    .line 1177
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2a1
    move-result v10

    #@2a2
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@2a4
    goto/16 :goto_0

    #@2a6
    .line 1181
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2a9
    move-result v10

    #@2aa
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@2ac
    goto/16 :goto_0

    #@2ae
    .line 1185
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2b1
    move-result v10

    #@2b2
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@2b4
    goto/16 :goto_0

    #@2b6
    .line 1189
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2b9
    move-result v10

    #@2ba
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 1193
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2c1
    move-result v10

    #@2c2
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@2c4
    goto/16 :goto_0

    #@2c6
    .line 1197
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2c9
    move-result v10

    #@2ca
    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 1202
    :sswitch_2f
    const/16 v10, 0x17a

    #@2d0
    .line 1201
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@2d3
    move-result v0

    #@2d4
    .line 1203
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2d6
    if-nez v10, :cond_14

    #@2d8
    move v1, v9

    #@2d9
    .line 1205
    .restart local v1    # "i":I
    :goto_d
    add-int v10, v1, v0

    #@2db
    new-array v2, v10, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2dd
    .line 1206
    .local v2, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v1, :cond_13

    #@2df
    .line 1207
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2e1
    invoke-static {v10, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e4
    .line 1209
    :cond_13
    :goto_e
    array-length v10, v2

    #@2e5
    add-int/lit8 v10, v10, -0x1

    #@2e7
    if-ge v1, v10, :cond_15

    #@2e9
    .line 1210
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2eb
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    #@2ee
    aput-object v10, v2, v1

    #@2f0
    .line 1211
    aget-object v10, v2, v1

    #@2f2
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@2f5
    .line 1212
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@2f8
    .line 1209
    add-int/lit8 v1, v1, 0x1

    #@2fa
    goto :goto_e

    #@2fb
    .line 1203
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_14
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@2fd
    array-length v1, v10

    #@2fe
    goto :goto_d

    #@2ff
    .line 1215
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_15
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@301
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    #@304
    aput-object v10, v2, v1

    #@306
    .line 1216
    aget-object v10, v2, v1

    #@308
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@30b
    .line 1217
    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@30d
    goto/16 :goto_0

    #@30f
    .line 1222
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :sswitch_30
    const/16 v10, 0x182

    #@311
    .line 1221
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@314
    move-result v0

    #@315
    .line 1223
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@317
    if-nez v10, :cond_17

    #@319
    move v1, v9

    #@31a
    .line 1225
    .restart local v1    # "i":I
    :goto_f
    add-int v10, v1, v0

    #@31c
    new-array v7, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@31e
    .line 1226
    .local v7, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v1, :cond_16

    #@320
    .line 1227
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@322
    invoke-static {v10, v9, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@325
    .line 1229
    :cond_16
    :goto_10
    array-length v10, v7

    #@326
    add-int/lit8 v10, v10, -0x1

    #@328
    if-ge v1, v10, :cond_18

    #@32a
    .line 1230
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@32c
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    #@32f
    aput-object v10, v7, v1

    #@331
    .line 1231
    aget-object v10, v7, v1

    #@333
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@336
    .line 1232
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@339
    .line 1229
    add-int/lit8 v1, v1, 0x1

    #@33b
    goto :goto_10

    #@33c
    .line 1223
    .end local v1    # "i":I
    .end local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_17
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@33e
    array-length v1, v10

    #@33f
    goto :goto_f

    #@340
    .line 1235
    .restart local v1    # "i":I
    .restart local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_18
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@342
    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    #@345
    aput-object v10, v7, v1

    #@347
    .line 1236
    aget-object v10, v7, v1

    #@349
    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@34c
    .line 1237
    iput-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@34e
    goto/16 :goto_0

    #@350
    .line 911
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x158 -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x168 -> :sswitch_2d
        0x170 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x182 -> :sswitch_30
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    if-eqz v7, :cond_1

    #@4
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    array-length v7, v7

    #@7
    if-lez v7, :cond_1

    #@9
    .line 481
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@c
    array-length v7, v7

    #@d
    if-ge v6, v7, :cond_1

    #@f
    .line 482
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@11
    aget-object v1, v7, v6

    #@13
    .line 483
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    #@15
    .line 484
    const/4 v7, 0x1

    #@16
    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@19
    .line 481
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 488
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@1e
    if-eqz v7, :cond_2

    #@20
    .line 489
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@22
    const/4 v8, 0x2

    #@23
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@26
    .line 491
    :cond_2
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@28
    if-eqz v7, :cond_3

    #@2a
    .line 492
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@2c
    const/4 v8, 0x3

    #@2d
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@30
    .line 494
    :cond_3
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@32
    if-eqz v7, :cond_4

    #@34
    .line 495
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@36
    const/4 v8, 0x4

    #@37
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@3a
    .line 497
    :cond_4
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@3c
    if-eqz v7, :cond_5

    #@3e
    .line 498
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@40
    const/4 v8, 0x5

    #@41
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@44
    .line 500
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@46
    if-eqz v7, :cond_6

    #@48
    .line 501
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@4a
    const/4 v8, 0x6

    #@4b
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@4e
    .line 503
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@50
    if-eqz v7, :cond_7

    #@52
    .line 504
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@54
    const/4 v8, 0x7

    #@55
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@58
    .line 506
    :cond_7
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@5a
    if-eqz v7, :cond_8

    #@5c
    .line 507
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@5e
    const/16 v8, 0x8

    #@60
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@63
    .line 509
    :cond_8
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@65
    if-eqz v7, :cond_9

    #@67
    .line 510
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@69
    const/16 v8, 0x9

    #@6b
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@6e
    .line 512
    :cond_9
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@70
    if-eqz v7, :cond_a

    #@72
    .line 513
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@74
    const/16 v8, 0xa

    #@76
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@79
    .line 515
    :cond_a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@7b
    if-eqz v7, :cond_b

    #@7d
    .line 516
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@7f
    const/16 v8, 0xb

    #@81
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@84
    .line 518
    :cond_b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@86
    if-eqz v7, :cond_c

    #@88
    .line 519
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@8a
    const/16 v8, 0xc

    #@8c
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@8f
    .line 521
    :cond_c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@91
    if-eqz v7, :cond_d

    #@93
    .line 522
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@95
    const/16 v8, 0xd

    #@97
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@9a
    .line 524
    :cond_d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@9c
    if-eqz v7, :cond_e

    #@9e
    .line 525
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@a0
    const/16 v8, 0xe

    #@a2
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a5
    .line 527
    :cond_e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@a7
    if-eqz v7, :cond_f

    #@a9
    .line 528
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@ab
    const/16 v8, 0xf

    #@ad
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@b0
    .line 530
    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@b2
    if-eqz v7, :cond_11

    #@b4
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@b6
    array-length v7, v7

    #@b7
    if-lez v7, :cond_11

    #@b9
    .line 531
    const/4 v6, 0x0

    #@ba
    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@bc
    array-length v7, v7

    #@bd
    if-ge v6, v7, :cond_11

    #@bf
    .line 532
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c1
    aget-object v3, v7, v6

    #@c3
    .line 533
    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    #@c5
    .line 534
    const/16 v7, 0x10

    #@c7
    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@ca
    .line 531
    :cond_10
    add-int/lit8 v6, v6, 0x1

    #@cc
    goto :goto_1

    #@cd
    .line 538
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@cf
    if-eqz v7, :cond_13

    #@d1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d3
    array-length v7, v7

    #@d4
    if-lez v7, :cond_13

    #@d6
    .line 539
    const/4 v6, 0x0

    #@d7
    .restart local v6    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d9
    array-length v7, v7

    #@da
    if-ge v6, v7, :cond_13

    #@dc
    .line 540
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@de
    aget-object v4, v7, v6

    #@e0
    .line 541
    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    #@e2
    .line 542
    const/16 v7, 0x11

    #@e4
    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@e7
    .line 539
    :cond_12
    add-int/lit8 v6, v6, 0x1

    #@e9
    goto :goto_2

    #@ea
    .line 546
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@ec
    if-eqz v7, :cond_15

    #@ee
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f0
    array-length v7, v7

    #@f1
    if-lez v7, :cond_15

    #@f3
    .line 547
    const/4 v6, 0x0

    #@f4
    .restart local v6    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f6
    array-length v7, v7

    #@f7
    if-ge v6, v7, :cond_15

    #@f9
    .line 548
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@fb
    aget-object v3, v7, v6

    #@fd
    .line 549
    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    #@ff
    .line 550
    const/16 v7, 0x12

    #@101
    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@104
    .line 547
    :cond_14
    add-int/lit8 v6, v6, 0x1

    #@106
    goto :goto_3

    #@107
    .line 554
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@109
    if-eqz v7, :cond_17

    #@10b
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@10d
    array-length v7, v7

    #@10e
    if-lez v7, :cond_17

    #@110
    .line 555
    const/4 v6, 0x0

    #@111
    .restart local v6    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@113
    array-length v7, v7

    #@114
    if-ge v6, v7, :cond_17

    #@116
    .line 556
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@118
    aget-object v4, v7, v6

    #@11a
    .line 557
    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    #@11c
    .line 558
    const/16 v7, 0x13

    #@11e
    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@121
    .line 555
    :cond_16
    add-int/lit8 v6, v6, 0x1

    #@123
    goto :goto_4

    #@124
    .line 562
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@126
    if-eqz v7, :cond_18

    #@128
    .line 563
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@12a
    const/16 v8, 0x14

    #@12c
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@12f
    .line 565
    :cond_18
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@131
    if-eqz v7, :cond_19

    #@133
    .line 566
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@135
    const/16 v8, 0x15

    #@137
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@13a
    .line 568
    :cond_19
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@13c
    if-eqz v7, :cond_1a

    #@13e
    .line 569
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@140
    const/16 v8, 0x16

    #@142
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@145
    .line 571
    :cond_1a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@147
    if-eqz v7, :cond_1b

    #@149
    .line 572
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@14b
    const/16 v8, 0x17

    #@14d
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@150
    .line 574
    :cond_1b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@152
    if-eqz v7, :cond_1c

    #@154
    .line 575
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@156
    const/16 v8, 0x18

    #@158
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@15b
    .line 577
    :cond_1c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@15d
    if-eqz v7, :cond_1d

    #@15f
    .line 578
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@161
    const/16 v8, 0x19

    #@163
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@166
    .line 580
    :cond_1d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@168
    if-eqz v7, :cond_1e

    #@16a
    .line 581
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@16c
    const/16 v8, 0x1a

    #@16e
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@171
    .line 583
    :cond_1e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@173
    if-eqz v7, :cond_1f

    #@175
    .line 584
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@177
    const/16 v8, 0x1b

    #@179
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@17c
    .line 586
    :cond_1f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@17e
    if-eqz v7, :cond_20

    #@180
    .line 587
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@182
    const/16 v8, 0x1c

    #@184
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@187
    .line 589
    :cond_20
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@189
    if-eqz v7, :cond_21

    #@18b
    .line 590
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@18d
    const/16 v8, 0x1d

    #@18f
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@192
    .line 592
    :cond_21
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@194
    if-eqz v7, :cond_22

    #@196
    .line 593
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@198
    const/16 v8, 0x1e

    #@19a
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@19d
    .line 595
    :cond_22
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@19f
    if-eqz v7, :cond_23

    #@1a1
    .line 596
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1a3
    const/16 v8, 0x1f

    #@1a5
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1a8
    .line 598
    :cond_23
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1aa
    if-eqz v7, :cond_24

    #@1ac
    .line 599
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1ae
    const/16 v8, 0x20

    #@1b0
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1b3
    .line 601
    :cond_24
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1b5
    if-eqz v7, :cond_25

    #@1b7
    .line 602
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1b9
    const/16 v8, 0x21

    #@1bb
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1be
    .line 604
    :cond_25
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@1c0
    if-eqz v7, :cond_26

    #@1c2
    .line 605
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@1c4
    const/16 v8, 0x22

    #@1c6
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1c9
    .line 607
    :cond_26
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@1cb
    if-eqz v7, :cond_28

    #@1cd
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@1cf
    array-length v7, v7

    #@1d0
    if-lez v7, :cond_28

    #@1d2
    .line 608
    const/4 v6, 0x0

    #@1d3
    .restart local v6    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@1d5
    array-length v7, v7

    #@1d6
    if-ge v6, v7, :cond_28

    #@1d8
    .line 609
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@1da
    aget-object v2, v7, v6

    #@1dc
    .line 610
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    #@1de
    .line 611
    const/16 v7, 0x23

    #@1e0
    invoke-virtual {p1, v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@1e3
    .line 608
    :cond_27
    add-int/lit8 v6, v6, 0x1

    #@1e5
    goto :goto_5

    #@1e6
    .line 615
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@1e8
    if-eqz v7, :cond_29

    #@1ea
    .line 616
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@1ec
    const/16 v8, 0x24

    #@1ee
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1f1
    .line 618
    :cond_29
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@1f3
    if-eqz v7, :cond_2a

    #@1f5
    .line 619
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@1f7
    const/16 v8, 0x25

    #@1f9
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1fc
    .line 621
    :cond_2a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@1fe
    if-eqz v7, :cond_2b

    #@200
    .line 622
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@202
    const/16 v8, 0x26

    #@204
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@207
    .line 624
    :cond_2b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@209
    if-eqz v7, :cond_2c

    #@20b
    .line 625
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@20d
    const/16 v8, 0x27

    #@20f
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@212
    .line 627
    :cond_2c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@214
    if-eqz v7, :cond_2d

    #@216
    .line 628
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@218
    const/16 v8, 0x28

    #@21a
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@21d
    .line 630
    :cond_2d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@21f
    if-eqz v7, :cond_2e

    #@221
    .line 631
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@223
    const/16 v8, 0x29

    #@225
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@228
    .line 633
    :cond_2e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@22a
    if-eqz v7, :cond_2f

    #@22c
    .line 634
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@22e
    const/16 v8, 0x2a

    #@230
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@233
    .line 636
    :cond_2f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@235
    if-eqz v7, :cond_30

    #@237
    .line 637
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@239
    const/16 v8, 0x2b

    #@23b
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@23e
    .line 639
    :cond_30
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@240
    if-eqz v7, :cond_31

    #@242
    .line 640
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@244
    const/16 v8, 0x2c

    #@246
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@249
    .line 642
    :cond_31
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@24b
    if-eqz v7, :cond_32

    #@24d
    .line 643
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@24f
    const/16 v8, 0x2d

    #@251
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@254
    .line 645
    :cond_32
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@256
    if-eqz v7, :cond_33

    #@258
    .line 646
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@25a
    const/16 v8, 0x2e

    #@25c
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@25f
    .line 648
    :cond_33
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@261
    if-eqz v7, :cond_35

    #@263
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@265
    array-length v7, v7

    #@266
    if-lez v7, :cond_35

    #@268
    .line 649
    const/4 v6, 0x0

    #@269
    .restart local v6    # "i":I
    :goto_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@26b
    array-length v7, v7

    #@26c
    if-ge v6, v7, :cond_35

    #@26e
    .line 650
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@270
    aget-object v0, v7, v6

    #@272
    .line 651
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    #@274
    .line 652
    const/16 v7, 0x2f

    #@276
    invoke-virtual {p1, v7, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@279
    .line 649
    :cond_34
    add-int/lit8 v6, v6, 0x1

    #@27b
    goto :goto_6

    #@27c
    .line 656
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@27e
    if-eqz v7, :cond_37

    #@280
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@282
    array-length v7, v7

    #@283
    if-lez v7, :cond_37

    #@285
    .line 657
    const/4 v6, 0x0

    #@286
    .restart local v6    # "i":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@288
    array-length v7, v7

    #@289
    if-ge v6, v7, :cond_37

    #@28b
    .line 658
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@28d
    aget-object v5, v7, v6

    #@28f
    .line 659
    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    #@291
    .line 660
    const/16 v7, 0x30

    #@293
    invoke-virtual {p1, v7, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@296
    .line 657
    :cond_36
    add-int/lit8 v6, v6, 0x1

    #@298
    goto :goto_7

    #@299
    .line 664
    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@29c
    .line 479
    return-void
.end method
