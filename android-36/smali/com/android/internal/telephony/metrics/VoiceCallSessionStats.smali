.class public Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;
.super Ljava/lang/Object;
.source "VoiceCallSessionStats.java"


# static fields
.field private static final blacklist CALL_DURATION_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

.field private static final blacklist CS_CODEC_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist IMS_CODEC_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist TAG:Ljava/lang/String; = "VoiceCallSessionStats"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mCallProtos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneId:I

.field private final blacklist mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final blacklist mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$4tDijKUl-WOslq2fJCCgBnps8FQ(Lcom/android/internal/telephony/Connection;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildGsmCdmaCodecMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CS_CODEC_MAP:Landroid/util/SparseIntArray;

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildImsCodecMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->IMS_CODEC_MAP:Landroid/util/SparseIntArray;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildCallDurationMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CALL_DURATION_MAP:Landroid/util/SparseIntArray;

    .line 147
    const-string v0, "76780b5a-623e-48a4-be3f-925e05177c9c"

    .line 148
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getDeviceStateHelper()Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getVonrHelper()Lcom/android/internal/telephony/metrics/VonrHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    .line 189
    iput p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 192
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getInstance(I)Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->start(Lcom/android/internal/telephony/Phone;)V

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-void
.end method

.method private blacklist acceptCall(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 451
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "acceptCall: resetting setup info, connectionId=%d"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    return-void

    .line 457
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "acceptCall: untracked connection, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist addCall(Lcom/android/internal/telephony/Connection;)V
    .registers 13

    .line 468
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 470
    const-string p1, "addCall: already tracked connection, connectionId=%d, connectionInfo=%s"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 475
    :cond_1a
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v2, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v3

    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    .line 479
    new-instance v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v5}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    .line 481
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-virtual {v6}, Lcom/android/internal/telephony/metrics/VonrHelper;->updateVonrEnabledState()V

    .line 483
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    .line 484
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 485
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getDirection(Lcom/android/internal/telephony/Connection;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    const/4 v6, 0x1

    .line 486
    iput-boolean v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 487
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 490
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    const/4 v7, 0x0

    .line 491
    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 492
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    const-wide/16 v8, 0x0

    .line 493
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 494
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    .line 495
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 496
    iget v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    iput v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    .line 498
    iget v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    invoke-static {v10}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    .line 499
    iget-object v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 500
    iput-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 501
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    .line 502
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    .line 503
    iput-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v10

    if-nez v10, :cond_95

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isNetworkIdentifiedEmergencyCall()Z

    move-result v10

    if-eqz v10, :cond_93

    goto :goto_95

    :cond_93
    move v10, v7

    goto :goto_96

    :cond_95
    :goto_95
    move v10, v6

    :goto_96
    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    .line 505
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    .line 507
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    if-eqz v4, :cond_a9

    goto :goto_aa

    :cond_a9
    move v6, v7

    .line 508
    :goto_aa
    iput-boolean v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    .line 509
    iget-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isHandoverInProgress(IZ)Z

    move-result v3

    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    .line 511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    .line 512
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    .line 513
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    .line 514
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    .line 517
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getDirection(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c8

    .line 519
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    goto :goto_ce

    .line 521
    :cond_c8
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 525
    :goto_ce
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAudioCodec()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->audioQualityToCodec(II)I

    move-result p1

    if-eqz p1, :cond_dd

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    .line 527
    iput-wide v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 530
    :cond_dd
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    const/4 v1, 0x3

    if-le p1, v1, :cond_ef

    .line 532
    sget-object p1, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

    const-string v1, "Anomalous number of concurrent calls"

    invoke-static {p1, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 535
    :cond_ef
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 538
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatTracker(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private static blacklist audioQualityToCodec(II)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    .line 917
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "audioQualityToCodec: unknown bearer %d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 915
    :cond_15
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->IMS_CODEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0

    .line 913
    :cond_1c
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CS_CODEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private static blacklist buildCallDurationMap()Landroid/util/SparseIntArray;
    .registers 3

    .line 1046
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const v1, 0xea60

    const/4 v2, 0x1

    .line 1048
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x493e0

    const/4 v2, 0x2

    .line 1051
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x927c0

    const/4 v2, 0x3

    .line 1054
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x1b7740

    const/4 v2, 0x4

    .line 1057
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x36ee80

    const/4 v2, 0x5

    .line 1060
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private static blacklist buildGsmCdmaCodecMap()Landroid/util/SparseIntArray;
    .registers 6

    .line 1007
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x1

    .line 1008
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 1009
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0x8

    .line 1010
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const/16 v3, 0x9

    .line 1011
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xa

    const/4 v5, 0x5

    .line 1012
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x6

    .line 1013
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    .line 1014
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private static blacklist buildImsCodecMap()Landroid/util/SparseIntArray;
    .registers 2

    .line 1021
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 1023
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    .line 1024
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    .line 1025
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x5

    .line 1026
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x6

    .line 1027
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    .line 1028
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x8

    .line 1029
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x9

    .line 1030
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xa

    .line 1031
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xb

    .line 1032
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    .line 1033
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    .line 1034
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xe

    .line 1035
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xf

    .line 1036
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x10

    .line 1037
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x11

    .line 1038
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x12

    .line 1039
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x13

    .line 1040
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    .line 1041
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private blacklist checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .registers 9

    .line 641
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isSetupFinished(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    iget-wide v4, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 644
    iput-wide v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 648
    :cond_28
    iget-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x0

    .line 649
    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v0

    .line 653
    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    .line 657
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->resetCodecList(Lcom/android/internal/telephony/Connection;)V

    :cond_4e
    return-void
.end method

.method private static blacklist classifyCallDuration(J)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 927
    :cond_8
    :goto_8
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CALL_DURATION_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 928
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-gez v2, :cond_1e

    .line 929
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_21
    const/4 p0, 0x6

    return p0
.end method

.method private blacklist convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I
    .registers 2

    .line 1105
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_22

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x9

    return p0

    :pswitch_10
    const/16 p0, 0x8

    return p0

    :pswitch_13
    const/4 p0, 0x7

    return p0

    :pswitch_15
    const/4 p0, 0x6

    return p0

    :pswitch_17
    const/4 p0, 0x4

    return p0

    :pswitch_19
    const/4 p0, 0x3

    return p0

    :pswitch_1b
    const/4 p0, 0x1

    return p0

    :pswitch_1d
    const/4 p0, 0x5

    return p0

    :pswitch_1f
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private blacklist finalizeMainCodecQuality(I)I
    .registers 11

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 835
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p1, 0x5

    .line 843
    new-array p1, p1, [J

    move v2, v1

    move v3, v2

    .line 844
    :goto_27
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_52

    add-int/lit8 v4, v2, 0x1

    .line 845
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 846
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getCodecQuality(I)I

    move-result v2

    .line 847
    aget-wide v7, p1, v2

    add-long/2addr v7, v5

    aput-wide v7, p1, v2

    int-to-long v2, v3

    add-long/2addr v2, v5

    long-to-int v3, v2

    move v2, v4

    goto :goto_27

    .line 850
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Time per codec quality = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v3, v3, 0x46

    .line 856
    div-int/lit8 v3, v3, 0x64

    int-to-long v2, v3

    const-wide/16 v4, 0x0

    const/4 p0, 0x4

    :goto_74
    if-ltz p0, :cond_81

    .line 858
    aget-wide v6, p1, p0

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7e

    return p0

    :cond_7e
    add-int/lit8 p0, p0, -0x1

    goto :goto_74

    :cond_81
    return v1
.end method

.method private blacklist finishCall(I)V
    .registers 10

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_18

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "finishCall: could not find call to be removed, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 550
    :cond_18
    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3a

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3a

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-nez v1, :cond_3a

    .line 551
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 555
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    .line 559
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrength(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finalizeMainCodecQuality(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    .line 565
    iput-wide v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 568
    iget-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    if-nez p1, :cond_5f

    .line 569
    const-string p1, ""

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 573
    :cond_5f
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-gtz p1, :cond_6b

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 578
    :cond_6b
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->getFoldState()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/VonrHelper;->getVonrEnabled(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isBusinessCallSupported()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getCallComposerStatusForPhone()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    .line 589
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz p1, :cond_a9

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInSatelliteModeForCarrierRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    goto :goto_aa

    :cond_a9
    const/4 p1, 0x0

    :goto_aa
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    .line 592
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addVoiceCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 595
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result p1

    if-nez p1, :cond_cc

    .line 596
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->conclude(J)V

    .line 597
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addVoiceCallRatUsage(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V

    .line 598
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    :cond_cc
    return-void
.end method

.method private blacklist finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V
    .registers 12

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/4 v1, 0x2

    .line 696
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 697
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 698
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 699
    iget-object p2, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/ImsStats;->filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 700
    invoke-static {p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->classifyCallDuration(J)I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 701
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p2, :cond_47

    .line 702
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 704
    invoke-virtual {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getCallAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 706
    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 708
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p3

    iget p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 707
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    const/4 v3, 0x1

    .line 706
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;->onCallTerminated(ZZIII)V

    .line 713
    :cond_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishCall(I)V

    return-void
.end method

.method private static blacklist getBearer(Lcom/android/internal/telephony/Connection;)I
    .registers 3

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    .line 736
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getBearer: unknown phoneType=%d"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v1

    :cond_1d
    return v0
.end method

.method private blacklist getCallComposerStatusForPhone()I
    .registers 3

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 965
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 969
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 970
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result p0

    return p0
.end method

.method private blacklist getCodecQuality(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_e

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist getConnectionId(Lcom/android/internal/telephony/Connection;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 945
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private blacklist getConnectionIds()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 619
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return-object v0
.end method

.method private static blacklist getDirection(Lcom/android/internal/telephony/Connection;)I
    .registers 1

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getImsConnectionIds()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 627
    :goto_c
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_31
    return-object v0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSignalStrength(I)I
    .registers 3

    const/16 v0, 0x12

    if-ne p1, v0, :cond_9

    .line 744
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrengthWifi()I

    move-result p0

    return p0

    .line 746
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrengthCellular()I

    move-result p0

    return p0
.end method

.method private blacklist getSignalStrengthCellular()I
    .registers 1

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method private blacklist getSignalStrengthWifi()I
    .registers 6

    .line 752
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 754
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 757
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v0

    .line 758
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result p0

    mul-int/lit8 v2, v0, 0x4

    .line 760
    div-int/2addr v2, p0

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_50
    return v1
.end method

.method private static blacklist getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 792
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 794
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/ImsStats;->getImsVoiceRadioTech()I

    move-result v0

    const/4 v2, 0x2

    .line 796
    invoke-static {p1, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v2

    if-eqz v0, :cond_3e

    const/16 v3, 0x12

    if-eq v0, v3, :cond_24

    if-eqz v2, :cond_3e

    .line 805
    :cond_24
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result p0

    if-ne v0, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 808
    :goto_2c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getVoiceRatWithVoNRFix: oldRat=%d, newRat=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 814
    :cond_3e
    invoke-static {p1, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method private blacklist hasCalls()Z
    .registers 1

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isBusinessCallSupported()Z
    .registers 5

    .line 974
    const-string v0, "supports_business_call_composer_bool"

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 975
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    .line 979
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 982
    :try_start_1a
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_2b

    .line 985
    :catch_23
    const-string p0, "CarrierConfigLoader is not available."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_2b
    if-eqz p0, :cond_39

    .line 987
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_39

    .line 990
    :cond_34
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_39
    :goto_39
    return v2
.end method

.method private blacklist isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z
    .registers 2

    .line 949
    instance-of p0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p0, :cond_b

    .line 950
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isCrossSimCall()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCrossSimCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 956
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 957
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method private blacklist isHandoverInProgress(IZ)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    return v1

    :cond_5
    if-eqz p2, :cond_a

    const/16 p1, 0x200

    goto :goto_c

    :cond_a
    const/16 p1, 0x40

    .line 779
    :goto_c
    iget p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getInstance(I)Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getDataState(I)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method private static blacklist isSetupFinished(Lcom/android/internal/telephony/Call;)Z
    .registers 3

    if-eqz p0, :cond_16

    .line 900
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v1, 0x2

    if-eq p0, v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs blacklist logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 999
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1003
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetCodecList(Lcom/android/internal/telephony/Connection;)V
    .registers 6

    .line 819
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2e

    .line 822
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 823
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 825
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method private blacklist setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 5

    .line 603
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 604
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez p0, :cond_1c

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onRttStarted: untracked connection, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 610
    :cond_1c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    if-ne v1, v2, :cond_2c

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    if-eq v1, p1, :cond_39

    .line 611
    :cond_2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onRttStarted: connection bearer mismatch but proceeding, connectionId=%d"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    const/4 p1, 0x1

    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    return-void
.end method

.method private blacklist updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    .registers 3

    const/4 p0, 0x5

    if-eq p2, p0, :cond_7

    const/4 p0, 0x0

    .line 1100
    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    return-void

    :cond_7
    const/4 p0, 0x1

    .line 1096
    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    return-void
.end method

.method private blacklist updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    .registers 7

    .line 681
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eq v0, p2, :cond_1a

    .line 682
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 683
    iget-boolean v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-nez v0, :cond_14

    .line 684
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    .line 686
    :cond_14
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz p2, :cond_1a

    .line 688
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    .line 691
    :cond_1a
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    return-void
.end method

.method private blacklist updateRatTracker(Landroid/telephony/ServiceState;)V
    .registers 10

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v4

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionIds()Ljava/util/Set;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->add(IIJLjava/util/Set;)V

    move v0, v1

    .line 669
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 671
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v3, p1, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v3

    .line 672
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3c

    move v3, v1

    goto :goto_40

    .line 675
    :cond_3c
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Landroid/telephony/ServiceState;)I

    move-result v3

    :goto_40
    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_45
    return-void
.end method

.method private blacklist updateVoiceCallSessionBearerState(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 8

    .line 1069
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_49

    .line 1074
    :cond_7
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_14

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_14

    goto :goto_49

    :cond_14
    const/4 v2, 0x0

    .line 1080
    :goto_15
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 1081
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1082
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    .line 1083
    iget-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-nez v4, :cond_37

    if-eqz v1, :cond_37

    .line 1084
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    .line 1086
    :cond_37
    iget-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v4, :cond_46

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_46

    .line 1087
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method protected blacklist getTimeMillis()J
    .registers 3

    .line 995
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V
    .registers 8

    monitor-enter p0

    .line 323
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_20

    .line 326
    const-string p2, "onAudioCodecChanged: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 327
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_61

    .line 329
    :cond_20
    :try_start_20
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->audioQualityToCodec(II)I

    move-result p2

    .line 330
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_5f

    .line 335
    :cond_4a
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 337
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_20 .. :try_end_5f} :catchall_1e

    .line 339
    :goto_5f
    monitor-exit p0

    return-void

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_1e

    throw p1
.end method

.method public declared-synchronized blacklist onCallStateChanged(Lcom/android/internal/telephony/Call;)V
    .registers 7

    monitor-enter p0

    .line 377
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_36

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 378
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    .line 379
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v4, :cond_28

    .line 381
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    goto :goto_a

    :catchall_26
    move-exception p1

    goto :goto_38

    .line 383
    :cond_28
    const-string v2, "onCallStateChanged: untracked connection, connectionId=%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_26

    goto :goto_a

    .line 386
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_26

    throw p1
.end method

.method public declared-synchronized blacklist onImsAcceptCall(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->acceptCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 282
    :cond_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist onImsCallReceived(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_12

    .line 275
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist onImsCallStartFailed(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    monitor-enter p0

    .line 287
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 288
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_3a

    .line 294
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getImsConnectionIds()Ljava/util/List;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 296
    const-string v0, "onImsCallTerminated: ending IMS call w/ conn=null"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V

    goto :goto_65

    :catchall_26
    move-exception p1

    goto :goto_67

    .line 299
    :cond_28
    const-string p2, "onImsCallTerminated: %d IMS calls w/ conn=null"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    .line 302
    :cond_3a
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 304
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V

    goto :goto_65

    .line 306
    :cond_4e
    const-string v1, "onImsCallTerminated: untracked connection, connectionId=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_26

    .line 312
    :goto_65
    monitor-exit p0

    return-void

    :goto_67
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_26

    throw p1
.end method

.method public declared-synchronized blacklist onImsDial(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    monitor-enter p0

    .line 263
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_12

    .line 267
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist onMultipartyChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .registers 6

    monitor-enter p0

    .line 358
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_20

    .line 361
    const-string p2, "onMultipartyChange: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 362
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_38

    .line 364
    :cond_20
    :try_start_20
    const-string v1, "onMultipartyChange: isMultiparty=%b, connectionId=%d"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_36

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1e

    .line 368
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_1e

    throw p1
.end method

.method public declared-synchronized blacklist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    monitor-enter p0

    .line 442
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateVoiceCallSessionBearerState(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 445
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist onRilAcceptCall(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->acceptCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 203
    :cond_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist onRilCallListChanged(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 215
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v2

    if-nez v2, :cond_35

    .line 219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    goto :goto_5

    :catchall_32
    move-exception v0

    move-object p1, v0

    goto :goto_a3

    .line 222
    :cond_35
    const-string v0, "onRilCallListChanged: skip adding disconnected connection, connectionId=%d"

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 228
    :cond_43
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 230
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->classifyCallDuration(J)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9c

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getCallAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    move-result-object v3

    if-eqz v3, :cond_9c

    .line 243
    iget-boolean v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 245
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v6

    iget v7, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    iget v8, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    const/4 v5, 0x0

    .line 243
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;->onCallTerminated(ZZIII)V

    .line 251
    :cond_9c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishCall(I)V
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_32

    goto/16 :goto_5

    .line 257
    :cond_a1
    monitor-exit p0

    return-void

    :goto_a3
    :try_start_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_32

    throw p1
.end method

.method public declared-synchronized blacklist onRilDial(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    monitor-enter p0

    .line 207
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 208
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist onRilSrvccStateChanged(I)V
    .registers 8

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_20

    :catchall_14
    move-exception p1

    goto/16 :goto_d2

    .line 394
    :cond_17
    const-string v0, "onRilSrvccStateChanged: ImsPhone is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_38

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getImsConnectionIds()Ljava/util/List;

    move-result-object v0

    .line 399
    const-string v1, "onRilSrvccStateChanged: ImsPhone has no handover, we have %d"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f

    .line 402
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$$ExternalSyntheticLambda0;-><init>()V

    .line 403
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 404
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_4f
    const/4 v1, 0x1

    if-eq p1, v1, :cond_a0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    if-eq p1, v1, :cond_7e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5c

    goto/16 :goto_d0

    .line 424
    :cond_5c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    goto :goto_60

    .line 419
    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    goto :goto_82

    .line 409
    :cond_a0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 411
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 412
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 415
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 414
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    :try_end_cf
    .catchall {:try_start_1 .. :try_end_cf} :catchall_14

    goto :goto_a4

    .line 430
    :cond_d0
    :goto_d0
    monitor-exit p0

    return-void

    :goto_d2
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_14

    throw p1
.end method

.method public declared-synchronized blacklist onRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 2

    monitor-enter p0

    .line 316
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 317
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    monitor-enter p0

    .line 434
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatTracker(Landroid/telephony/ServiceState;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 437
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist onVideoStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .registers 6

    monitor-enter p0

    .line 344
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_20

    .line 347
    const-string p2, "onVideoStateChange: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 348
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_38

    .line 350
    :cond_20
    :try_start_20
    const-string v1, "onVideoStateChange: video state=%d, connectionId=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_36

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1e

    .line 354
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_1e

    throw p1
.end method
