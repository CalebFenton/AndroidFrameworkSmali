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

.field public numEnterpriseNetworks:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworks:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public recordDurationSec:I

.field public scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 379
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@6
    .line 378
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
    .line 964
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
    .line 958
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
    .line 383
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@7
    .line 384
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@9
    .line 385
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@b
    .line 386
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@d
    .line 387
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@f
    .line 388
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@11
    .line 389
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@13
    .line 390
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@15
    .line 391
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@17
    .line 392
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@19
    .line 393
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@1b
    .line 394
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@1d
    .line 395
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@1f
    .line 396
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@21
    .line 397
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@23
    .line 398
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@29
    .line 399
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2f
    .line 400
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@35
    .line 401
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@3b
    .line 402
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@3d
    .line 403
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@3f
    .line 404
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@41
    .line 405
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@43
    .line 406
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@45
    .line 407
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@47
    .line 408
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@49
    .line 409
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@4b
    .line 410
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@4d
    .line 411
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@4f
    .line 412
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@51
    .line 413
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@53
    .line 414
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@55
    .line 415
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@57
    .line 416
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@59
    .line 417
    const/4 v0, -0x1

    #@5a
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->cachedSize:I

    #@5c
    .line 418
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    #@0
    .prologue
    .line 556
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v4

    #@4
    .line 557
    .local v4, "size":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    if-eqz v5, :cond_1

    #@8
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@a
    array-length v5, v5

    #@b
    if-lez v5, :cond_1

    #@d
    .line 558
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@10
    array-length v5, v5

    #@11
    if-ge v3, v5, :cond_1

    #@13
    .line 559
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@15
    aget-object v0, v5, v3

    #@17
    .line 560
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v0, :cond_0

    #@19
    .line 562
    const/4 v5, 0x1

    #@1a
    .line 561
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@1d
    move-result v5

    #@1e
    add-int/2addr v4, v5

    #@1f
    .line 558
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 566
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v3    # "i":I
    :cond_1
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 568
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@28
    const/4 v6, 0x2

    #@29
    .line 567
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v5

    #@2d
    add-int/2addr v4, v5

    #@2e
    .line 570
    :cond_2
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 572
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@34
    const/4 v6, 0x3

    #@35
    .line 571
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@38
    move-result v5

    #@39
    add-int/2addr v4, v5

    #@3a
    .line 574
    :cond_3
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@3c
    if-eqz v5, :cond_4

    #@3e
    .line 576
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@40
    const/4 v6, 0x4

    #@41
    .line 575
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@44
    move-result v5

    #@45
    add-int/2addr v4, v5

    #@46
    .line 578
    :cond_4
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@48
    if-eqz v5, :cond_5

    #@4a
    .line 580
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@4c
    const/4 v6, 0x5

    #@4d
    .line 579
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@50
    move-result v5

    #@51
    add-int/2addr v4, v5

    #@52
    .line 582
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@54
    if-eqz v5, :cond_6

    #@56
    .line 584
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@58
    const/4 v6, 0x6

    #@59
    .line 583
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@5c
    move-result v5

    #@5d
    add-int/2addr v4, v5

    #@5e
    .line 586
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@60
    if-eqz v5, :cond_7

    #@62
    .line 588
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@64
    const/4 v6, 0x7

    #@65
    .line 587
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@68
    move-result v5

    #@69
    add-int/2addr v4, v5

    #@6a
    .line 590
    :cond_7
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@6c
    if-eqz v5, :cond_8

    #@6e
    .line 592
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@70
    const/16 v6, 0x8

    #@72
    .line 591
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@75
    move-result v5

    #@76
    add-int/2addr v4, v5

    #@77
    .line 594
    :cond_8
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@79
    if-eqz v5, :cond_9

    #@7b
    .line 596
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@7d
    const/16 v6, 0x9

    #@7f
    .line 595
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@82
    move-result v5

    #@83
    add-int/2addr v4, v5

    #@84
    .line 598
    :cond_9
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@86
    if-eqz v5, :cond_a

    #@88
    .line 600
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@8a
    const/16 v6, 0xa

    #@8c
    .line 599
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@8f
    move-result v5

    #@90
    add-int/2addr v4, v5

    #@91
    .line 602
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@93
    if-eqz v5, :cond_b

    #@95
    .line 604
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@97
    const/16 v6, 0xb

    #@99
    .line 603
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@9c
    move-result v5

    #@9d
    add-int/2addr v4, v5

    #@9e
    .line 606
    :cond_b
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@a0
    if-eqz v5, :cond_c

    #@a2
    .line 608
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@a4
    const/16 v6, 0xc

    #@a6
    .line 607
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@a9
    move-result v5

    #@aa
    add-int/2addr v4, v5

    #@ab
    .line 610
    :cond_c
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@ad
    if-eqz v5, :cond_d

    #@af
    .line 612
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@b1
    const/16 v6, 0xd

    #@b3
    .line 611
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@b6
    move-result v5

    #@b7
    add-int/2addr v4, v5

    #@b8
    .line 614
    :cond_d
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@ba
    if-eqz v5, :cond_e

    #@bc
    .line 616
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@be
    const/16 v6, 0xe

    #@c0
    .line 615
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@c3
    move-result v5

    #@c4
    add-int/2addr v4, v5

    #@c5
    .line 618
    :cond_e
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@c7
    if-eqz v5, :cond_f

    #@c9
    .line 620
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@cb
    const/16 v6, 0xf

    #@cd
    .line 619
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@d0
    move-result v5

    #@d1
    add-int/2addr v4, v5

    #@d2
    .line 622
    :cond_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d4
    if-eqz v5, :cond_11

    #@d6
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d8
    array-length v5, v5

    #@d9
    if-lez v5, :cond_11

    #@db
    .line 623
    const/4 v3, 0x0

    #@dc
    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@de
    array-length v5, v5

    #@df
    if-ge v3, v5, :cond_11

    #@e1
    .line 624
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@e3
    aget-object v1, v5, v3

    #@e5
    .line 625
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_10

    #@e7
    .line 627
    const/16 v5, 0x10

    #@e9
    .line 626
    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@ec
    move-result v5

    #@ed
    add-int/2addr v4, v5

    #@ee
    .line 623
    :cond_10
    add-int/lit8 v3, v3, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 631
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v3    # "i":I
    :cond_11
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@f3
    if-eqz v5, :cond_13

    #@f5
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@f7
    array-length v5, v5

    #@f8
    if-lez v5, :cond_13

    #@fa
    .line 632
    const/4 v3, 0x0

    #@fb
    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@fd
    array-length v5, v5

    #@fe
    if-ge v3, v5, :cond_13

    #@100
    .line 633
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@102
    aget-object v2, v5, v3

    #@104
    .line 634
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_12

    #@106
    .line 636
    const/16 v5, 0x11

    #@108
    .line 635
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@10b
    move-result v5

    #@10c
    add-int/2addr v4, v5

    #@10d
    .line 632
    :cond_12
    add-int/lit8 v3, v3, 0x1

    #@10f
    goto :goto_2

    #@110
    .line 640
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v3    # "i":I
    :cond_13
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@112
    if-eqz v5, :cond_15

    #@114
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@116
    array-length v5, v5

    #@117
    if-lez v5, :cond_15

    #@119
    .line 641
    const/4 v3, 0x0

    #@11a
    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@11c
    array-length v5, v5

    #@11d
    if-ge v3, v5, :cond_15

    #@11f
    .line 642
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@121
    aget-object v1, v5, v3

    #@123
    .line 643
    .restart local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_14

    #@125
    .line 645
    const/16 v5, 0x12

    #@127
    .line 644
    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@12a
    move-result v5

    #@12b
    add-int/2addr v4, v5

    #@12c
    .line 641
    :cond_14
    add-int/lit8 v3, v3, 0x1

    #@12e
    goto :goto_3

    #@12f
    .line 649
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v3    # "i":I
    :cond_15
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@131
    if-eqz v5, :cond_17

    #@133
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@135
    array-length v5, v5

    #@136
    if-lez v5, :cond_17

    #@138
    .line 650
    const/4 v3, 0x0

    #@139
    .restart local v3    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@13b
    array-length v5, v5

    #@13c
    if-ge v3, v5, :cond_17

    #@13e
    .line 651
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@140
    aget-object v2, v5, v3

    #@142
    .line 652
    .restart local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_16

    #@144
    .line 654
    const/16 v5, 0x13

    #@146
    .line 653
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@149
    move-result v5

    #@14a
    add-int/2addr v4, v5

    #@14b
    .line 650
    :cond_16
    add-int/lit8 v3, v3, 0x1

    #@14d
    goto :goto_4

    #@14e
    .line 658
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v3    # "i":I
    :cond_17
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@150
    if-eqz v5, :cond_18

    #@152
    .line 660
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@154
    const/16 v6, 0x14

    #@156
    .line 659
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@159
    move-result v5

    #@15a
    add-int/2addr v4, v5

    #@15b
    .line 662
    :cond_18
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@15d
    if-eqz v5, :cond_19

    #@15f
    .line 664
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@161
    const/16 v6, 0x15

    #@163
    .line 663
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@166
    move-result v5

    #@167
    add-int/2addr v4, v5

    #@168
    .line 666
    :cond_19
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@16a
    if-eqz v5, :cond_1a

    #@16c
    .line 668
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@16e
    const/16 v6, 0x16

    #@170
    .line 667
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@173
    move-result v5

    #@174
    add-int/2addr v4, v5

    #@175
    .line 670
    :cond_1a
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@177
    if-eqz v5, :cond_1b

    #@179
    .line 672
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@17b
    const/16 v6, 0x17

    #@17d
    .line 671
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@180
    move-result v5

    #@181
    add-int/2addr v4, v5

    #@182
    .line 674
    :cond_1b
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@184
    if-eqz v5, :cond_1c

    #@186
    .line 676
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@188
    const/16 v6, 0x18

    #@18a
    .line 675
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@18d
    move-result v5

    #@18e
    add-int/2addr v4, v5

    #@18f
    .line 678
    :cond_1c
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@191
    if-eqz v5, :cond_1d

    #@193
    .line 680
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@195
    const/16 v6, 0x19

    #@197
    .line 679
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@19a
    move-result v5

    #@19b
    add-int/2addr v4, v5

    #@19c
    .line 682
    :cond_1d
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@19e
    if-eqz v5, :cond_1e

    #@1a0
    .line 684
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@1a2
    const/16 v6, 0x1a

    #@1a4
    .line 683
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a7
    move-result v5

    #@1a8
    add-int/2addr v4, v5

    #@1a9
    .line 686
    :cond_1e
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1ab
    if-eqz v5, :cond_1f

    #@1ad
    .line 688
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1af
    const/16 v6, 0x1b

    #@1b1
    .line 687
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1b4
    move-result v5

    #@1b5
    add-int/2addr v4, v5

    #@1b6
    .line 690
    :cond_1f
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@1b8
    if-eqz v5, :cond_20

    #@1ba
    .line 692
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@1bc
    const/16 v6, 0x1c

    #@1be
    .line 691
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1c1
    move-result v5

    #@1c2
    add-int/2addr v4, v5

    #@1c3
    .line 694
    :cond_20
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@1c5
    if-eqz v5, :cond_21

    #@1c7
    .line 696
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@1c9
    const/16 v6, 0x1d

    #@1cb
    .line 695
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1ce
    move-result v5

    #@1cf
    add-int/2addr v4, v5

    #@1d0
    .line 698
    :cond_21
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@1d2
    if-eqz v5, :cond_22

    #@1d4
    .line 700
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@1d6
    const/16 v6, 0x1e

    #@1d8
    .line 699
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1db
    move-result v5

    #@1dc
    add-int/2addr v4, v5

    #@1dd
    .line 702
    :cond_22
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1df
    if-eqz v5, :cond_23

    #@1e1
    .line 704
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1e3
    const/16 v6, 0x1f

    #@1e5
    .line 703
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e8
    move-result v5

    #@1e9
    add-int/2addr v4, v5

    #@1ea
    .line 706
    :cond_23
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1ec
    if-eqz v5, :cond_24

    #@1ee
    .line 708
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1f0
    const/16 v6, 0x20

    #@1f2
    .line 707
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1f5
    move-result v5

    #@1f6
    add-int/2addr v4, v5

    #@1f7
    .line 710
    :cond_24
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1f9
    if-eqz v5, :cond_25

    #@1fb
    .line 712
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1fd
    const/16 v6, 0x21

    #@1ff
    .line 711
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@202
    move-result v5

    #@203
    add-int/2addr v4, v5

    #@204
    .line 714
    :cond_25
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@206
    if-eqz v5, :cond_26

    #@208
    .line 716
    iget v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@20a
    const/16 v6, 0x22

    #@20c
    .line 715
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@20f
    move-result v5

    #@210
    add-int/2addr v4, v5

    #@211
    .line 718
    :cond_26
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 726
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v5

    #@5
    .line 727
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    #@8
    .line 731
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 732
    return-object p0

    #@f
    .line 729
    :sswitch_0
    return-object p0

    #@10
    .line 738
    :sswitch_1
    const/16 v7, 0xa

    #@12
    .line 737
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@15
    move-result v0

    #@16
    .line 739
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@18
    if-nez v7, :cond_2

    #@1a
    move v1, v6

    #@1b
    .line 741
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    #@1d
    new-array v2, v7, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@1f
    .line 742
    .local v2, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_1

    #@21
    .line 743
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@23
    invoke-static {v7, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 745
    :cond_1
    :goto_2
    array-length v7, v2

    #@27
    add-int/lit8 v7, v7, -0x1

    #@29
    if-ge v1, v7, :cond_3

    #@2b
    .line 746
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2d
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@30
    aput-object v7, v2, v1

    #@32
    .line 747
    aget-object v7, v2, v1

    #@34
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@37
    .line 748
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3a
    .line 745
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 739
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3f
    array-length v1, v7

    #@40
    goto :goto_1

    #@41
    .line 751
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_3
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@43
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@46
    aput-object v7, v2, v1

    #@48
    .line 752
    aget-object v7, v2, v1

    #@4a
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@4d
    .line 753
    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4f
    goto :goto_0

    #@50
    .line 757
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@53
    move-result v7

    #@54
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@56
    goto :goto_0

    #@57
    .line 761
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@5a
    move-result v7

    #@5b
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@5d
    goto :goto_0

    #@5e
    .line 765
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@61
    move-result v7

    #@62
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@64
    goto :goto_0

    #@65
    .line 769
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@68
    move-result v7

    #@69
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@6b
    goto :goto_0

    #@6c
    .line 773
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@6f
    move-result v7

    #@70
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@72
    goto :goto_0

    #@73
    .line 777
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@76
    move-result v7

    #@77
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@79
    goto :goto_0

    #@7a
    .line 781
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@7d
    move-result v7

    #@7e
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@80
    goto :goto_0

    #@81
    .line 785
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@84
    move-result v7

    #@85
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@87
    goto/16 :goto_0

    #@89
    .line 789
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@8c
    move-result v7

    #@8d
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@8f
    goto/16 :goto_0

    #@91
    .line 793
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@94
    move-result v7

    #@95
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@97
    goto/16 :goto_0

    #@99
    .line 797
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@9c
    move-result v7

    #@9d
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@9f
    goto/16 :goto_0

    #@a1
    .line 801
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@a4
    move-result v7

    #@a5
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@a7
    goto/16 :goto_0

    #@a9
    .line 805
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@ac
    move-result v7

    #@ad
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@af
    goto/16 :goto_0

    #@b1
    .line 809
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@b4
    move-result v7

    #@b5
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 814
    :sswitch_10
    const/16 v7, 0x82

    #@bb
    .line 813
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@be
    move-result v0

    #@bf
    .line 815
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c1
    if-nez v7, :cond_5

    #@c3
    move v1, v6

    #@c4
    .line 817
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    #@c6
    new-array v3, v7, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c8
    .line 818
    .local v3, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_4

    #@ca
    .line 819
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@cc
    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@cf
    .line 821
    :cond_4
    :goto_4
    array-length v7, v3

    #@d0
    add-int/lit8 v7, v7, -0x1

    #@d2
    if-ge v1, v7, :cond_6

    #@d4
    .line 822
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@d6
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@d9
    aput-object v7, v3, v1

    #@db
    .line 823
    aget-object v7, v3, v1

    #@dd
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@e0
    .line 824
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@e3
    .line 821
    add-int/lit8 v1, v1, 0x1

    #@e5
    goto :goto_4

    #@e6
    .line 815
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@e8
    array-length v1, v7

    #@e9
    goto :goto_3

    #@ea
    .line 827
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_6
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@ec
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@ef
    aput-object v7, v3, v1

    #@f1
    .line 828
    aget-object v7, v3, v1

    #@f3
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@f6
    .line 829
    iput-object v3, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f8
    goto/16 :goto_0

    #@fa
    .line 834
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_11
    const/16 v7, 0x8a

    #@fc
    .line 833
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@ff
    move-result v0

    #@100
    .line 835
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@102
    if-nez v7, :cond_8

    #@104
    move v1, v6

    #@105
    .line 837
    .restart local v1    # "i":I
    :goto_5
    add-int v7, v1, v0

    #@107
    new-array v4, v7, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@109
    .line 838
    .local v4, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_7

    #@10b
    .line 839
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@10d
    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@110
    .line 841
    :cond_7
    :goto_6
    array-length v7, v4

    #@111
    add-int/lit8 v7, v7, -0x1

    #@113
    if-ge v1, v7, :cond_9

    #@115
    .line 842
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@117
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@11a
    aput-object v7, v4, v1

    #@11c
    .line 843
    aget-object v7, v4, v1

    #@11e
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@121
    .line 844
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@124
    .line 841
    add-int/lit8 v1, v1, 0x1

    #@126
    goto :goto_6

    #@127
    .line 835
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@129
    array-length v1, v7

    #@12a
    goto :goto_5

    #@12b
    .line 847
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_9
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@12d
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@130
    aput-object v7, v4, v1

    #@132
    .line 848
    aget-object v7, v4, v1

    #@134
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@137
    .line 849
    iput-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@139
    goto/16 :goto_0

    #@13b
    .line 854
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_12
    const/16 v7, 0x92

    #@13d
    .line 853
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@140
    move-result v0

    #@141
    .line 855
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@143
    if-nez v7, :cond_b

    #@145
    move v1, v6

    #@146
    .line 857
    .restart local v1    # "i":I
    :goto_7
    add-int v7, v1, v0

    #@148
    new-array v3, v7, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@14a
    .line 858
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_a

    #@14c
    .line 859
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@14e
    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@151
    .line 861
    :cond_a
    :goto_8
    array-length v7, v3

    #@152
    add-int/lit8 v7, v7, -0x1

    #@154
    if-ge v1, v7, :cond_c

    #@156
    .line 862
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@158
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@15b
    aput-object v7, v3, v1

    #@15d
    .line 863
    aget-object v7, v3, v1

    #@15f
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@162
    .line 864
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@165
    .line 861
    add-int/lit8 v1, v1, 0x1

    #@167
    goto :goto_8

    #@168
    .line 855
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@16a
    array-length v1, v7

    #@16b
    goto :goto_7

    #@16c
    .line 867
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_c
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@16e
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@171
    aput-object v7, v3, v1

    #@173
    .line 868
    aget-object v7, v3, v1

    #@175
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@178
    .line 869
    iput-object v3, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@17a
    goto/16 :goto_0

    #@17c
    .line 874
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_13
    const/16 v7, 0x9a

    #@17e
    .line 873
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@181
    move-result v0

    #@182
    .line 875
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@184
    if-nez v7, :cond_e

    #@186
    move v1, v6

    #@187
    .line 877
    .restart local v1    # "i":I
    :goto_9
    add-int v7, v1, v0

    #@189
    new-array v4, v7, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@18b
    .line 878
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_d

    #@18d
    .line 879
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@18f
    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@192
    .line 881
    :cond_d
    :goto_a
    array-length v7, v4

    #@193
    add-int/lit8 v7, v7, -0x1

    #@195
    if-ge v1, v7, :cond_f

    #@197
    .line 882
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@199
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@19c
    aput-object v7, v4, v1

    #@19e
    .line 883
    aget-object v7, v4, v1

    #@1a0
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@1a3
    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@1a6
    .line 881
    add-int/lit8 v1, v1, 0x1

    #@1a8
    goto :goto_a

    #@1a9
    .line 875
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_e
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1ab
    array-length v1, v7

    #@1ac
    goto :goto_9

    #@1ad
    .line 887
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_f
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1af
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@1b2
    aput-object v7, v4, v1

    #@1b4
    .line 888
    aget-object v7, v4, v1

    #@1b6
    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@1b9
    .line 889
    iput-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 893
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1c0
    move-result v7

    #@1c1
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 897
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1c8
    move-result v7

    #@1c9
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 901
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d0
    move-result v7

    #@1d1
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 905
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d8
    move-result v7

    #@1d9
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 909
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1e0
    move-result v7

    #@1e1
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 913
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1e8
    move-result v7

    #@1e9
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@1eb
    goto/16 :goto_0

    #@1ed
    .line 917
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1f0
    move-result v7

    #@1f1
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 921
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1f8
    move-result v7

    #@1f9
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@1fb
    goto/16 :goto_0

    #@1fd
    .line 925
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@200
    move-result v7

    #@201
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@203
    goto/16 :goto_0

    #@205
    .line 929
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@208
    move-result v7

    #@209
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@20b
    goto/16 :goto_0

    #@20d
    .line 933
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@210
    move-result v7

    #@211
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@213
    goto/16 :goto_0

    #@215
    .line 937
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@218
    move-result v7

    #@219
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@21b
    goto/16 :goto_0

    #@21d
    .line 941
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@220
    move-result v7

    #@221
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@223
    goto/16 :goto_0

    #@225
    .line 945
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@228
    move-result v7

    #@229
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@22b
    goto/16 :goto_0

    #@22d
    .line 949
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@230
    move-result v7

    #@231
    iput v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@233
    goto/16 :goto_0

    #@235
    .line 727
    nop

    #@236
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
    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    if-eqz v4, :cond_1

    #@4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    array-length v4, v4

    #@7
    if-lez v4, :cond_1

    #@9
    .line 425
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@c
    array-length v4, v4

    #@d
    if-ge v3, v4, :cond_1

    #@f
    .line 426
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@11
    aget-object v0, v4, v3

    #@13
    .line 427
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v0, :cond_0

    #@15
    .line 428
    const/4 v4, 0x1

    #@16
    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@19
    .line 425
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 432
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v3    # "i":I
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 433
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@22
    const/4 v5, 0x2

    #@23
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@26
    .line 435
    :cond_2
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 436
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@2c
    const/4 v5, 0x3

    #@2d
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@30
    .line 438
    :cond_3
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@32
    if-eqz v4, :cond_4

    #@34
    .line 439
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@36
    const/4 v5, 0x4

    #@37
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@3a
    .line 441
    :cond_4
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 442
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@40
    const/4 v5, 0x5

    #@41
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@44
    .line 444
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@46
    if-eqz v4, :cond_6

    #@48
    .line 445
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@4a
    const/4 v5, 0x6

    #@4b
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@4e
    .line 447
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@50
    if-eqz v4, :cond_7

    #@52
    .line 448
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@54
    const/4 v5, 0x7

    #@55
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@58
    .line 450
    :cond_7
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@5a
    if-eqz v4, :cond_8

    #@5c
    .line 451
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    #@5e
    const/16 v5, 0x8

    #@60
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@63
    .line 453
    :cond_8
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@65
    if-eqz v4, :cond_9

    #@67
    .line 454
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    #@69
    const/16 v5, 0x9

    #@6b
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@6e
    .line 456
    :cond_9
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@70
    if-eqz v4, :cond_a

    #@72
    .line 457
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@74
    const/16 v5, 0xa

    #@76
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@79
    .line 459
    :cond_a
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@7b
    if-eqz v4, :cond_b

    #@7d
    .line 460
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@7f
    const/16 v5, 0xb

    #@81
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@84
    .line 462
    :cond_b
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@86
    if-eqz v4, :cond_c

    #@88
    .line 463
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@8a
    const/16 v5, 0xc

    #@8c
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@8f
    .line 465
    :cond_c
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@91
    if-eqz v4, :cond_d

    #@93
    .line 466
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@95
    const/16 v5, 0xd

    #@97
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@9a
    .line 468
    :cond_d
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@9c
    if-eqz v4, :cond_e

    #@9e
    .line 469
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@a0
    const/16 v5, 0xe

    #@a2
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a5
    .line 471
    :cond_e
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@a7
    if-eqz v4, :cond_f

    #@a9
    .line 472
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@ab
    const/16 v5, 0xf

    #@ad
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@b0
    .line 474
    :cond_f
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@b2
    if-eqz v4, :cond_11

    #@b4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@b6
    array-length v4, v4

    #@b7
    if-lez v4, :cond_11

    #@b9
    .line 475
    const/4 v3, 0x0

    #@ba
    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@bc
    array-length v4, v4

    #@bd
    if-ge v3, v4, :cond_11

    #@bf
    .line 476
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@c1
    aget-object v1, v4, v3

    #@c3
    .line 477
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_10

    #@c5
    .line 478
    const/16 v4, 0x10

    #@c7
    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@ca
    .line 475
    :cond_10
    add-int/lit8 v3, v3, 0x1

    #@cc
    goto :goto_1

    #@cd
    .line 482
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v3    # "i":I
    :cond_11
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@cf
    if-eqz v4, :cond_13

    #@d1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d3
    array-length v4, v4

    #@d4
    if-lez v4, :cond_13

    #@d6
    .line 483
    const/4 v3, 0x0

    #@d7
    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d9
    array-length v4, v4

    #@da
    if-ge v3, v4, :cond_13

    #@dc
    .line 484
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@de
    aget-object v2, v4, v3

    #@e0
    .line 485
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_12

    #@e2
    .line 486
    const/16 v4, 0x11

    #@e4
    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@e7
    .line 483
    :cond_12
    add-int/lit8 v3, v3, 0x1

    #@e9
    goto :goto_2

    #@ea
    .line 490
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v3    # "i":I
    :cond_13
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@ec
    if-eqz v4, :cond_15

    #@ee
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f0
    array-length v4, v4

    #@f1
    if-lez v4, :cond_15

    #@f3
    .line 491
    const/4 v3, 0x0

    #@f4
    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@f6
    array-length v4, v4

    #@f7
    if-ge v3, v4, :cond_15

    #@f9
    .line 492
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@fb
    aget-object v1, v4, v3

    #@fd
    .line 493
    .restart local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_14

    #@ff
    .line 494
    const/16 v4, 0x12

    #@101
    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@104
    .line 491
    :cond_14
    add-int/lit8 v3, v3, 0x1

    #@106
    goto :goto_3

    #@107
    .line 498
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v3    # "i":I
    :cond_15
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@109
    if-eqz v4, :cond_17

    #@10b
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@10d
    array-length v4, v4

    #@10e
    if-lez v4, :cond_17

    #@110
    .line 499
    const/4 v3, 0x0

    #@111
    .restart local v3    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@113
    array-length v4, v4

    #@114
    if-ge v3, v4, :cond_17

    #@116
    .line 500
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@118
    aget-object v2, v4, v3

    #@11a
    .line 501
    .restart local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_16

    #@11c
    .line 502
    const/16 v4, 0x13

    #@11e
    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@121
    .line 499
    :cond_16
    add-int/lit8 v3, v3, 0x1

    #@123
    goto :goto_4

    #@124
    .line 506
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v3    # "i":I
    :cond_17
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@126
    if-eqz v4, :cond_18

    #@128
    .line 507
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@12a
    const/16 v5, 0x14

    #@12c
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@12f
    .line 509
    :cond_18
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@131
    if-eqz v4, :cond_19

    #@133
    .line 510
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@135
    const/16 v5, 0x15

    #@137
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@13a
    .line 512
    :cond_19
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@13c
    if-eqz v4, :cond_1a

    #@13e
    .line 513
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@140
    const/16 v5, 0x16

    #@142
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@145
    .line 515
    :cond_1a
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@147
    if-eqz v4, :cond_1b

    #@149
    .line 516
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@14b
    const/16 v5, 0x17

    #@14d
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@150
    .line 518
    :cond_1b
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@152
    if-eqz v4, :cond_1c

    #@154
    .line 519
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@156
    const/16 v5, 0x18

    #@158
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@15b
    .line 521
    :cond_1c
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@15d
    if-eqz v4, :cond_1d

    #@15f
    .line 522
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@161
    const/16 v5, 0x19

    #@163
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@166
    .line 524
    :cond_1d
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@168
    if-eqz v4, :cond_1e

    #@16a
    .line 525
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@16c
    const/16 v5, 0x1a

    #@16e
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@171
    .line 527
    :cond_1e
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@173
    if-eqz v4, :cond_1f

    #@175
    .line 528
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@177
    const/16 v5, 0x1b

    #@179
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@17c
    .line 530
    :cond_1f
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@17e
    if-eqz v4, :cond_20

    #@180
    .line 531
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@182
    const/16 v5, 0x1c

    #@184
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@187
    .line 533
    :cond_20
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@189
    if-eqz v4, :cond_21

    #@18b
    .line 534
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@18d
    const/16 v5, 0x1d

    #@18f
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@192
    .line 536
    :cond_21
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@194
    if-eqz v4, :cond_22

    #@196
    .line 537
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@198
    const/16 v5, 0x1e

    #@19a
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@19d
    .line 539
    :cond_22
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@19f
    if-eqz v4, :cond_23

    #@1a1
    .line 540
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@1a3
    const/16 v5, 0x1f

    #@1a5
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1a8
    .line 542
    :cond_23
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1aa
    if-eqz v4, :cond_24

    #@1ac
    .line 543
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@1ae
    const/16 v5, 0x20

    #@1b0
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1b3
    .line 545
    :cond_24
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1b5
    if-eqz v4, :cond_25

    #@1b7
    .line 546
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@1b9
    const/16 v5, 0x21

    #@1bb
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1be
    .line 548
    :cond_25
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@1c0
    if-eqz v4, :cond_26

    #@1c2
    .line 549
    iget v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@1c4
    const/16 v5, 0x22

    #@1c6
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1c9
    .line 551
    :cond_26
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@1cc
    .line 423
    return-void
.end method
