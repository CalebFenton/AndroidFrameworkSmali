.class public Lcom/android/internal/telephony/RadioResponse;
.super Landroid/hardware/radio/V1_6/IRadioResponse$Stub;
.source "RadioResponse.java"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public static synthetic blacklist $r8$lambda$MXc_srKXt2qsAqpjulv2ozE-zHA(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->lambda$responseScanStatus$2(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NN8p9L4Ql6b_9N31B8J-8WN5S5E(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->lambda$getVoiceRegistrationStateResponse_1_5$0(ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nqOE2nYoeQyLkgZm9P685wYMZVo(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->lambda$getDataRegistrationStateResponse_1_5$1(ILandroid/os/Message;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private synthetic blacklist lambda$getDataRegistrationStateResponse_1_5$1(ILandroid/os/Message;)V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 463
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getDataRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$getVoiceRegistrationStateResponse_1_5$0(ILandroid/os/Message;)V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getVoiceRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$responseScanStatus$2(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 6

    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 2361
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RIL;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 14

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 2533
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_32

    .line 2534
    iget v6, p2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 2535
    iget v7, p2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    .line 2536
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    new-array v8, v1, [I

    .line 2537
    :goto_17
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    if-ge v2, v1, :cond_26

    .line 2538
    iget-object v1, p2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v1, v1, v2

    aput v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2540
    :cond_26
    iget v9, p2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    .line 2541
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    goto :goto_45

    .line 2544
    :cond_32
    new-instance v4, Landroid/telephony/ModemActivityInfo;

    .line 2545
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p2

    new-array v9, p2, [I

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 2546
    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    move-object v3, v4

    .line 2548
    :goto_45
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2549
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_4f
    return-void
.end method

.method private blacklist responseAdnCapacity(Landroid/hardware/radio/V1_6/RadioResponseInfo;Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 5

    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1841
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 1842
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1844
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private blacklist responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2309
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    .line 2310
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 2311
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 2312
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2313
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2314
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2315
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2316
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2317
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2319
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2320
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2322
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2454
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 2459
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2a

    const/16 p2, 0x5e

    .line 2468
    new-array v1, p2, [I

    const/16 v4, 0x1f

    .line 2471
    aput v4, v1, v2

    move v4, v3

    :goto_19
    if-ge v4, p2, :cond_5f

    .line 2476
    div-int/lit8 v5, v4, 0x3

    aput v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    .line 2477
    aput v3, v1, v5

    add-int/lit8 v5, v4, 0x2

    .line 2478
    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_19

    :cond_2a
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v3

    .line 2483
    new-array v4, v4, [I

    .line 2485
    aput v1, v4, v2

    .line 2486
    :goto_31
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5e

    .line 2488
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v1, v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    .line 2489
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    aput v5, v4, v1

    add-int/lit8 v1, v3, 0x2

    .line 2490
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget-boolean v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_31

    :cond_5e
    move-object v1, v4

    .line 2493
    :cond_5f
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_68

    .line 2494
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2496
    :cond_68
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6d
    return-void
.end method

.method private blacklist responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2502
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2505
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2506
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2507
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2509
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseCellInfoList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2519
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2520
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2521
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2523
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2415
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 2417
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    .line 2416
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v3, 0x0

    .line 2420
    :goto_2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 2421
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget v4, v4, Landroid/hardware/radio/V1_0/NeighboringCell;->rssi:I

    .line 2422
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/NeighboringCell;->cid:Ljava/lang/String;

    .line 2423
    new-instance v6, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v6, v4, v5, v2}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 2424
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2427
    :cond_4d
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_56

    .line 2428
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2430
    :cond_56
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method private blacklist responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1981
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1982
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_44

    .line 1986
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 1988
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_33

    .line 1991
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1992
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_41

    .line 1994
    :cond_33
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1995
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1999
    :cond_44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_65

    .line 2001
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2002
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_65

    .line 2003
    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2005
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2009
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2010
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2012
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseCurrentCalls_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/Call;",
            ">;)V"
        }
    .end annotation

    .line 2019
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2022
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2023
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_44

    .line 2027
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 2029
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_33

    .line 2032
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2033
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_41

    .line 2035
    :cond_33
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2036
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2040
    :cond_44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_65

    .line 2042
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2043
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_65

    .line 2044
    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2046
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2050
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2051
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2053
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2383
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2384
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2385
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2387
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseDataCallList(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2393
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2397
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2398
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2399
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2401
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 2439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2440
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 2441
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v5, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 2442
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v6, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 2443
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v8, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget-boolean v9, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 2441
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2445
    :cond_47
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_50

    .line 2446
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2448
    :cond_50
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_55
    return-void
.end method

.method private blacklist responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2558
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2559
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2560
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2562
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .registers 8

    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1853
    iget-object v1, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1854
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 1855
    iget-object v3, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v4, v3, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v4, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 1856
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 1857
    iget-object v2, v3, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1858
    iget-object v2, v3, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1859
    iget-object p2, p2, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 1860
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1861
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_48

    .line 1862
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1864
    :cond_48
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method private blacklist responseIccCardStatus_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V
    .registers 7

    .line 1870
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1873
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 1874
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1875
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2b

    .line 1876
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1878
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method private blacklist responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 7

    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2297
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 2298
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1c

    .line 2299
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2301
    :cond_1c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public static blacklist responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1962
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 1965
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1966
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1967
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1969
    :cond_22
    iget p3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_2b

    .line 1970
    iget-object p3, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1972
    :cond_2b
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method private blacklist responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1926
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1927
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1928
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1930
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 1931
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1933
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private blacklist responseIntArrayList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1942
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1943
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1944
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1946
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 1947
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1949
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public static varargs blacklist responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 7

    .line 1915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1916
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_15

    .line 1917
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1919
    :cond_15
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .registers 6

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1891
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 1892
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1894
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V
    .registers 6

    .line 1899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1900
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 1901
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1903
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 6

    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2200
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 2201
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 2202
    iget-object p2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 2203
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1e

    .line 2204
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2206
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method private blacklist responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6

    .line 2058
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2060
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "not supported on IRadio < 1.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 2061
    iput v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 2062
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method private blacklist responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2332
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 2333
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 2334
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 2335
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v7}, Lcom/android/internal/telephony/RILUtils;->convertHalOperatorStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2337
    :cond_43
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_4c

    .line 2338
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2340
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_51
    return-void
.end method

.method private blacklist responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 5

    .line 2568
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2571
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 2572
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_17

    .line 2573
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2575
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method private blacklist responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V
    .registers 9

    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2350
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3f

    if-eqz p2, :cond_3f

    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    if-eqz p2, :cond_3f

    array-length v2, p2

    if-lez v2, :cond_3f

    aget-object p2, p2, v4

    instance-of p2, p2, Landroid/telephony/NetworkScanRequest;

    if-eqz p2, :cond_3f

    .line 2355
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result p2

    .line 2356
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v1

    .line 2357
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, Landroid/telephony/NetworkScanRequest;

    .line 2359
    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v4, v4, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v5, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, v2, v1}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2364
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_3f
    if-nez v1, :cond_4d

    .line 2370
    new-instance p2, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v1, 0x1

    invoke-direct {p2, v1, v4, v3}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 2372
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v3, p2

    .line 2374
    :cond_4d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2270
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 2271
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2272
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2274
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSetupDataCall_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2284
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 2285
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2286
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2288
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 5

    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2216
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2217
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2218
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2220
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 5

    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2230
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2231
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2232
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2234
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 11

    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2242
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    .line 2243
    new-instance v2, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 2244
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_22

    .line 2245
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2247
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method private blacklist responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 11

    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2256
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    .line 2257
    new-instance v2, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 2258
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_22

    .line 2259
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2261
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public static blacklist responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 2129
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2132
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v0, :cond_f

    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2135
    :cond_f
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method private blacklist responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2113
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 2114
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2116
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private static blacklist responseStringArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2181
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2184
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2185
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 2186
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2188
    :cond_1e
    iget p3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_27

    .line 2189
    iget-object p3, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2191
    :cond_27
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2168
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2169
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 2170
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2172
    :cond_1e
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_27

    .line 2173
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2175
    :cond_27
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public static varargs blacklist responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .registers 7

    .line 2156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2157
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_11

    .line 2158
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2160
    :cond_11
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .registers 6

    .line 2140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2141
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 2142
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2144
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static blacklist responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 5

    .line 2098
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2102
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2105
    :cond_10
    invoke-virtual {p1, p0, p2, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private blacklist responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5

    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2071
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 2072
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2074
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private blacklist responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 5

    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2083
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 2084
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2086
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 84
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 711
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 704
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist allocatePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 6

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2727
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2728
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2730
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6

    .line 2621
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2624
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2625
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2627
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist cancelHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2752
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 179
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 171
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 718
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 235
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1886
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2612
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 966
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 4

    .line 1636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .registers 8

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    if-ne p3, v1, :cond_e

    move p3, v1

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 1658
    :goto_f
    iget-boolean v2, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    xor-int/2addr v1, v2

    .line 1662
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v2

    iget-object v3, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 1663
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v2

    iget-object p2, p2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 1665
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 1667
    invoke-virtual {p2, v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 1668
    invoke-virtual {p2, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 1669
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    .line 1671
    iget p3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p3, :cond_3f

    .line 1672
    iget-object p3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1674
    :cond_3f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 4

    .line 617
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 619
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 782
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2707
    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 2708
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 2709
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2b

    .line 2710
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2712
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2715
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 838
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1198
    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 4

    .line 690
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1169
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1040
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1269
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1326
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1335
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 868
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4

    .line 651
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/Call;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .registers 3

    .line 414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .registers 3

    .line 424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V
    .registers 5

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 437
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 438
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 440
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 8

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 456
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v4, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_28
    if-nez v1, :cond_2f

    .line 469
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 471
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 485
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 486
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 488
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1225
    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 728
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_5

    :cond_4
    const/4 p3, 0x2

    .line 1379
    :goto_5
    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 1377
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    return-void
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 3

    .line 1572
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    return-void
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6

    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2594
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2595
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2597
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 3

    .line 860
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 1011
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 3

    .line 751
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 500
    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 4

    .line 1000
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 1002
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 989
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 3

    .line 1071
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 1527
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 1531
    :cond_16
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    const/4 v1, 0x0

    .line 1532
    iput v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1534
    :cond_1f
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_28

    .line 1535
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1537
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 3

    .line 302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 3

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 3

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 3

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V

    return-void
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/PhonebookCapacity;)V
    .registers 3

    .line 1822
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookCapacity(Landroid/hardware/radio/V1_6/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p2

    .line 1823
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseAdnCapacity(Landroid/hardware/radio/V1_6/RadioResponseInfo;Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    return-void
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1812
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getSlicingConfigResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SlicingConfig;)V
    .registers 5

    .line 2761
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2764
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlicingConfig(Landroid/hardware/radio/V1_6/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p2

    .line 2765
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2766
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2768
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public blacklist getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2685
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_24

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    .line 2686
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessSpecifier(Landroid/hardware/radio/V1_5/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2688
    :cond_24
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelectionChannelsResponse: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2689
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_43

    .line 2690
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2692
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_48
    return-void
.end method

.method public blacklist getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1055
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1303
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .registers 3

    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 353
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 354
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 356
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 372
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    .line 375
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v2

    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v4, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_28
    if-nez v1, :cond_2f

    .line 385
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 387
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 400
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 401
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 403
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 959
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1419
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1409
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 1410
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 1412
    :cond_27
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1396
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1428
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V
    .registers 6

    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1586
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 1587
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1589
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1436
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1443
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 3

    .line 1563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist releasePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2738
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 8

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1491
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    .line 1492
    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p2, 0x0

    goto :goto_1e

    :cond_18
    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_1e
    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 1493
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2a

    .line 1494
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1496
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1279
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1085
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1093
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1681
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 515
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 945
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1295
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1387
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 952
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 845
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1608
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1618
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedCarriersResponse_1_4 - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1620
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2f

    .line 1622
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_30

    :cond_2f
    const/4 v2, 0x2

    .line 1624
    :goto_30
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 611
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 927
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 743
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 675
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1688
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 658
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataThrottlingResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 736
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1702
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1737
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 852
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 758
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 765
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 772
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityStateResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 981
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 973
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 3

    .line 1543
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    return-void
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 508
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    return-void
.end method

.method public blacklist setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2636
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_19

    if-eqz p1, :cond_19

    .line 2638
    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b31"

    .line 2639
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Radio power failure"

    .line 2638
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public blacklist setRadioPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2648
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 2649
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    const/16 p0, 0x46

    if-ne p1, p0, :cond_19

    .line 2651
    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b32"

    .line 2652
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "RF HW damaged"

    .line 2651
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void

    :cond_19
    const/16 p0, 0x47

    if-ne p1, p0, :cond_29

    .line 2655
    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b33"

    .line 2656
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "No RF calibration data"

    .line 2655
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void

    :cond_29
    const/4 p0, 0x1

    if-eq p1, p0, :cond_39

    if-eqz p1, :cond_39

    .line 2660
    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b31"

    .line 2661
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Radio power failure"

    .line 2660
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1716
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1723
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1709
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 605
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 905
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2605
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1047
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1464
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .registers 3

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .registers 3

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V
    .registers 3

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SetupDataCallResult;)V
    .registers 3

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 823
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2745
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 7

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1759
    :try_start_a
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    const/4 p2, 0x6

    if-eq v2, p2, :cond_26

    const/16 p2, 0x2a

    if-eq v2, p2, :cond_1f

    .line 1780
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    :catchall_1d
    move-exception p2

    goto :goto_4f

    .line 1777
    :cond_1f
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v2, 0x2

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    .line 1774
    :cond_26
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    .line 1761
    :cond_2c
    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalKeepaliveStatusCode(I)I

    move-result v2

    if-gez v2, :cond_3b

    .line 1764
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    move-object v1, p2

    goto :goto_43

    .line 1766
    :cond_3b
    new-instance v3, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-direct {v3, p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    move-object v1, v3

    .line 1771
    :goto_43
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_1d

    move-object p2, v1

    .line 1785
    :goto_49
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_4f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1786
    throw p2
.end method

.method public blacklist startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 3

    .line 1551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 790
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 800
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    .line 809
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 830
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5

    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1797
    :try_start_a
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_16

    .line 1798
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v2

    goto :goto_1c

    .line 1803
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1804
    throw v2
.end method

.method public blacklist stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 3

    .line 1559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseNotSupported(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 816
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 155
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 139
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 163
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 147
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 188
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4

    .line 200
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 271
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 3

    .line 1833
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 1206
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3

    .line 913
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
