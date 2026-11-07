.class public Lcom/android/internal/telephony/metrics/DataCallSessionStats;
.super Ljava/lang/Object;
.source "DataCallSessionStats.java"


# static fields
.field private static final blacklist RANDOM:Ljava/util/Random;

.field public static final blacklist SIZE_LIMIT_HANDOVER_FAILURES:I = 0xf

.field private static final blacklist TAG:Ljava/lang/String; = "DataCallSessionStats"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private blacklist mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

.field private final blacklist mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mStartTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getDefaultNetworkMonitor()Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-void
.end method

.method private static blacklist convertMillisToMinutes(J)J
    .registers 4

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    .line 281
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 4

    .line 285
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    .line 286
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    .line 287
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    .line 288
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    .line 289
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    .line 290
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    .line 291
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    .line 292
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    .line 293
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    .line 294
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 295
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    .line 296
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    .line 297
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    .line 298
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    .line 299
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    .line 300
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    .line 301
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 302
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    .line 303
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 308
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    .line 309
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 310
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    .line 311
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    .line 312
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    .line 313
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    return-object v0
.end method

.method private blacklist endDataCallSession()V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getIsOos()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 265
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    const/16 v2, 0x11

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3d

    if-eqz v0, :cond_3d

    .line 269
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    .line 275
    :cond_3d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->unregisterOngoingDataCallStat(Lcom/android/internal/telephony/metrics/DataCallSessionStats;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addDataCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-void
.end method

.method private blacklist getDefaultProto(IZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 7

    .line 320
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    .line 321
    sget-object v1, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    .line 324
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    .line 325
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getIsRoaming()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    const-wide/16 v1, 0x0

    .line 328
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getIsOpportunistic()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    .line 330
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    .line 331
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    .line 332
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    .line 333
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    .line 334
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    .line 335
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    const/4 v1, 0x1

    .line 336
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    .line 337
    new-array v1, p1, [I

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 338
    new-array v1, p1, [I

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 339
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    .line 340
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz v1, :cond_6e

    .line 342
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInSatelliteModeForCarrierRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    .line 343
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    goto :goto_72

    .line 345
    :cond_6e
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    .line 346
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    .line 348
    :goto_72
    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getIsProvisioningProfile()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    return-object v0
.end method

.method private blacklist getIsOos()Z
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_18

    .line 382
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getIsOpportunistic()Z
    .registers 2

    .line 361
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getIsProvisioningProfile()Z
    .registers 5

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 368
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    const/4 v1, 0x0

    .line 370
    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    return v0

    :cond_17
    return v1

    :catch_18
    move-exception v0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsProvisioningProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private blacklist getIsRoaming()Z
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const/4 v0, 0x2

    .line 357
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;I)Z

    move-result p0

    return p0
.end method

.method private blacklist isSystemDefaultNetworkMobile()Z
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 78
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method private varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 390
    sget-object v0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs blacklist logi(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 386
    sget-object v0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist conclude()V
    .registers 6

    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v0, :cond_30

    .line 248
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getTimeMillis()J

    move-result-wide v1

    .line 250
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mStartTime:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->convertMillisToMinutes(J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 251
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mStartTime:J

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const/4 v2, 0x0

    .line 253
    new-array v3, v2, [I

    iput-object v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 254
    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addDataCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_32

    .line 257
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2e

    throw v0
.end method

.method protected blacklist getTimeMillis()J
    .registers 3

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist onDataCallDisconnected(I)V
    .registers 7

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v0, :cond_11

    .line 166
    const-string p1, "onDataCallDisconnected: no DataCallSession atom has been initiated."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 167
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_25

    .line 169
    :cond_11
    :try_start_11
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->convertMillisToMinutes(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->endDataCallSession()V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_f

    .line 172
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist onDrsOrRatChanged(I)V
    .registers 10

    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 215
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-eq v1, p1, :cond_26

    .line 216
    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 217
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    if-ne p1, v3, :cond_23

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->isSystemDefaultNetworkMobile()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :catchall_21
    move-exception p1

    goto :goto_35

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 222
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-ne p1, v3, :cond_2b

    goto :goto_31

    .line 225
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    :goto_31
    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_21

    .line 227
    :cond_33
    monitor-exit p0

    return-void

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_21

    throw p1
.end method

.method public declared-synchronized blacklist onHandoverFailure(III)V
    .registers 8

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v0, :cond_46

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v2, v1

    const/16 v3, 0xf

    if-ge v2, v3, :cond_46

    .line 187
    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    const/4 p3, 0x0

    .line 190
    :goto_12
    array-length v2, v1

    if-ge p3, v2, :cond_24

    .line 191
    aget v2, v1, p3

    if-ne v2, p1, :cond_21

    aget v2, v0, p3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1f

    if-ne v2, p2, :cond_21

    .line 193
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    goto :goto_48

    :cond_21
    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    .line 197
    :cond_24
    :try_start_24
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 199
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget-object v2, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v1, v1

    aput p1, v2, v1

    .line 201
    array-length p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 203
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length p3, v0

    aput p2, p1, p3
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_1f

    .line 205
    :cond_46
    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_1f

    throw p1
.end method

.method public declared-synchronized blacklist onSetupDataCall(IZ)V
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getDefaultProto(IZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->getTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mStartTime:J

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerOngoingDataCallStat(Lcom/android/internal/telephony/metrics/DataCallSessionStats;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 87
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V
    .registers 11

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 107
    const-string p1, "onSetupDataCallResponse: no DataCallSession atom has been initiated."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 108
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_58

    :cond_11
    const/4 v2, 0x1

    if-eqz p2, :cond_31

    .line 112
    :try_start_14
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    const/16 v3, 0x12

    if-ne p2, v3, :cond_1c

    move v4, v1

    goto :goto_22

    .line 116
    :cond_1c
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    :goto_22
    iput v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-ne p2, v3, :cond_2f

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->isSystemDefaultNetworkMobile()Z

    move-result p2

    if-eqz p2, :cond_2f

    move v1, v2

    :cond_2f
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 123
    :cond_31
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    if-nez v0, :cond_39

    .line 124
    iput p3, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    .line 127
    :cond_39
    iput p4, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    .line 128
    iput p5, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    if-eqz p1, :cond_56

    .line 131
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide p3

    const-wide/32 v0, 0x7fffffff

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    long-to-int p1, p3

    iput p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    if-eqz p5, :cond_56

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-boolean v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->endDataCallSession()V
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_f

    .line 138
    :cond_56
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_f

    throw p1
.end method

.method public blacklist onUnmeteredUpdate(I)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 235
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v2

    .line 232
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addUnmeteredNetworks(IIJ)V

    return-void
.end method

.method public declared-synchronized blacklist setDeactivateDataCallReason(I)V
    .registers 3

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->mDataCallSession:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v0, :cond_11

    .line 149
    const-string p1, "setDeactivateDataCallReason: no DataCallSession atom has been initiated."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 150
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_17

    :cond_11
    add-int/lit8 p1, p1, 0x4

    .line 153
    :try_start_13
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_f

    .line 154
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_f

    throw p1
.end method
