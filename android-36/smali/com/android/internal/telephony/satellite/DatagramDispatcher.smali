.class public Lcom/android/internal/telephony/satellite/DatagramDispatcher;
.super Landroid/os/Handler;
.source "DatagramDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;,
        Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;
    }
.end annotation


# static fields
.field private static final blacklist TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

.field private static blacklist mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;


# instance fields
.field private blacklist mConnectedStateCounter:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

.field private final blacklist mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

.field private blacklist mDemoTimeoutDuration:J

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHasEnteredConnectedState:Z

.field private blacklist mIsAligned:Z

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyCommunicationEstablished:Z

.field private blacklist mIsMtSmsPollingThrottled:Z

.field private blacklist mLastSendRequestDatagramType:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mModemState:I

.field private final blacklist mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingSmsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private blacklist mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

.field private blacklist mSendingInProgress:Z

.field private final blacklist mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

.field private blacklist mShouldPollMtSms:Z

.field private blacklist mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mSmsTransmissionStartTime:J

.field private blacklist mWaitTimeForDatagramSendingForLastMessageResponse:J

.field private blacklist mWaitTimeForDatagramSendingResponse:J


# direct methods
.method public static synthetic blacklist $r8$lambda$yVNEDUTzdfpOei2ojryNrcANNKY(J)J
    .registers 4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 467
    sget-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->MAX_DATAGRAM_ID:J

    rem-long/2addr p0, v0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/DatagramDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V
    .registers 9

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 93
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 94
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 99
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    .line 102
    sget-object v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    .line 105
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    .line 115
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 123
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 131
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 138
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    .line 142
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mHasEnteredConnectedState:Z

    .line 144
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    .line 146
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Z

    .line 148
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mConnectedStateCounter:I

    const-wide/16 v2, 0x0

    .line 150
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsTransmissionStartTime:J

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 197
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 199
    monitor-enter v1

    .line 200
    :try_start_5f
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 201
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6f

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseForLastMessageTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingForLastMessageResponse:J

    return-void

    :catchall_6f
    move-exception p0

    .line 201
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method private blacklist abortSendingPendingDatagrams(II)V
    .registers 3

    .line 692
    const-string p1, "abortSendingPendingDatagrams()"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 693
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V

    .line 694
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V

    .line 695
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingSms(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method private blacklist allowCheckMessageInNotConnected()Z
    .registers 2

    .line 1426
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110226

    .line 1427
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist allowMtSmsPolling()Z
    .registers 8

    .line 1385
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v1

    .line 1388
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isP2PSmsDisallowedOnCarrierRoamingNtn(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowMtSmsPolling: P2P SMS disallowed, subId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    .line 1397
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_27
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Z

    .line 1399
    iget-boolean v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 1400
    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eq v4, v5, :cond_37

    const/4 v5, 0x2

    if-ne v4, v5, :cond_35

    goto :goto_37

    :cond_35
    move v4, v2

    goto :goto_38

    :cond_37
    :goto_37
    move v4, v6

    .line 1403
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_5d

    if-eqz v1, :cond_41

    .line 1406
    const-string v0, "allowMtSmsPolling: polling is throttled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    :cond_41
    if-nez v3, :cond_49

    .line 1411
    const-string v0, "allowMtSmsPolling: not aligned"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    :cond_49
    if-nez v4, :cond_57

    .line 1415
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowCheckMessageInNotConnected()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1416
    const-string v0, "allowMtSmsPolling: not in service and allow_check_message_in_not_connected is disabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    .line 1421
    :cond_57
    const-string v0, "allowMtSmsPolling: return true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v6

    :catchall_5d
    move-exception p0

    .line 1403
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method private blacklist cleanUpResources()V
    .registers 9

    .line 866
    const-string v0, "cleanUpResources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 867
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 868
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    .line 870
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v3

    .line 871
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v1

    if-lez v1, :cond_26

    .line 872
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0xf

    const/4 v5, 0x3

    .line 872
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 877
    :cond_26
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v1, 0xf

    .line 881
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 884
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopSatelliteAlignedTimer()V

    .line 885
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopDatagramWaitForConnectedStateTimer()V

    .line 886
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForDatagramSendingResponseTimer()V

    .line 887
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForSimulatedPollDatagramsDelayTimer()V

    .line 888
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    const/4 v1, 0x0

    .line 889
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 890
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 891
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    const/4 v1, -0x1

    .line 892
    iput v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    .line 893
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mHasEnteredConnectedState:Z

    .line 894
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    .line 895
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mConnectedStateCounter:I

    .line 896
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopMtSmsPollingThrottle()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;
    .registers 1

    .line 173
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    if-nez v0, :cond_9

    .line 174
    const-string v0, "DatagramDispatcher was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->loge(Ljava/lang/String;)V

    .line 176
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-object v0
.end method

.method private blacklist getMtSmsPollingThrottleMillis()J
    .registers 3

    .line 1321
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00dc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getWaitForDatagramSendingResponseForLastMessageTimeoutMillis()J
    .registers 3

    .line 1001
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e015d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getWaitForDatagramSendingResponseTimeoutMillis()J
    .registers 3

    .line 996
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e015e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist handleCmdSendMtSmsPollingMessage()V
    .registers 4

    .line 1333
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    if-nez v1, :cond_21

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMtSmsPollingMessage: mShouldPollMtSms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1336
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_77

    .line 1339
    :cond_21
    const-string v1, "sendMtSmsPollingMessage"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1340
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowCheckMessageInNotConnected()Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    .line 1341
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    .line 1344
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1346
    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v2, :cond_39

    .line 1347
    const-string v1, "sendMtSmsPollingMessage: mPendingSmsMap already has the polling message."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1349
    monitor-exit v0

    return-void

    .line 1352
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_1f

    .line 1354
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_67

    .line 1356
    const-string v0, "sendMtSmsPollingMessage: satellitePhone is null."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 1361
    :cond_67
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v0

    if-nez v0, :cond_73

    .line 1363
    const-string v0, "sendMtSmsPollingMessage: smsDispatchersController is null."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 1367
    :cond_73
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMtSmsPollingMessage()V

    return-void

    .line 1352
    :goto_77
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_1f

    throw p0
.end method

.method private blacklist handleEventDatagramWaitForConnectedStateTimedOut(I)V
    .registers 10

    .line 959
    const-string v0, "Timed out to wait for satellite connected before sending datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 961
    :try_start_8
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v3

    .line 963
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0x12

    const/4 v5, 0x3

    move v4, p1

    .line 963
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 968
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 p1, 0x12

    .line 972
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 974
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2c

    throw p0
.end method

.method private blacklist handleEventSatelliteAligned()V
    .registers 4

    .line 550
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopSatelliteAlignedTimer()V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    if-nez v0, :cond_13

    .line 554
    const-string v0, "handleEventSatelliteAligned: mSendSatelliteDatagramRequest is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 556
    :cond_13
    iget-object v1, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    const/4 v2, 0x1

    .line 558
    iput-boolean v2, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->skipCheckingSatelliteAligned:Z

    const/4 v1, 0x2

    .line 559
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 561
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 562
    invoke-static {v0, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 563
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    const-string v0, "handleEventSatelliteAligned: EVENT_SEND_SATELLITE_DATAGRAM_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private blacklist handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .registers 5

    .line 571
    const-string v0, "handleEventSatelliteAlignedTimeout"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 573
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    const/4 v2, 0x2

    .line 576
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 577
    invoke-static {p0, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 578
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist handleEventSendSmsDone(IJZ)V
    .registers 16

    .line 1273
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1274
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    if-nez v0, :cond_2b

    .line 1277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleEventSendSmsDone there is no pendingSms for messageId="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1278
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a0

    :cond_2b
    const/4 v2, 0x0

    .line 1281
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1282
    iget-boolean v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_35

    move v7, v4

    goto :goto_37

    :cond_35
    const/4 v3, 0x6

    move v7, v3

    .line 1285
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventSendSmsDone subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " messageId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " success="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " datagramType="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    if-eqz p4, :cond_7c

    .line 1290
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v8, 0x2

    move v6, p1

    .line 1290
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1293
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    if-ne v7, v4, :cond_8c

    .line 1295
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startMtSmsPollingThrottle()V

    .line 1296
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    goto :goto_8c

    :cond_7c
    move v6, p1

    .line 1300
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1302
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v10, 0x5

    const/4 v8, 0x3

    .line 1300
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/4 p1, 0x5

    .line 1303
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    .line 1306
    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result p1

    if-lez p1, :cond_96

    .line 1307
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_9e

    .line 1309
    :cond_96
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1313
    :goto_9e
    monitor-exit v1

    return-void

    :goto_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_27

    throw p0
.end method

.method private blacklist handleEventWaitForDatagramSendingResponseTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .registers 16

    .line 1018
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1019
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out to wait for the response of the request to send the datagram "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v0

    const/4 v2, 0x6

    .line 1024
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1023
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->abortSendingSatelliteDatagrams(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1025
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1028
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0x18

    const/4 v5, 0x3

    .line 1028
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1031
    iget-object v8, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v9, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v10, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1037
    iget-object v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1040
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 1042
    iget v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :catchall_66
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    .line 1045
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :goto_74
    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 1050
    monitor-exit v1

    return-void

    :goto_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_66

    throw p0
.end method

.method private blacklist handleEventWaitForSimulatedPollDatagramsDelayTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .registers 5

    .line 1097
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v0, :cond_1f

    .line 1098
    const-string v0, "handleEventWaitForSimulatedPollDatagramsDelayTimedOut"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-object v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/DatagramController;->pushDemoModeDatagram(ILandroid/telephony/satellite/SatelliteDatagram;)V

    .line 1100
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;-><init>(Lcom/android/internal/telephony/satellite/DatagramDispatcher;)V

    .line 1106
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/satellite/DatagramController;->pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V

    return-void

    .line 1108
    :cond_1f
    const-string p1, "Unexpected EVENT_WAIT_FOR_SIMULATED_POLL_DATAGRAMS_DELAY_TIMED_OUT in non-demo mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isEnabledMtSmsPolling()Z
    .registers 2

    .line 1317
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isFirstConnected()Z
    .registers 2

    .line 861
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mConnectedStateCounter:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSatelliteAlignedTimerStarted()Z
    .registers 2

    const/4 v0, 0x3

    .line 582
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1431
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1435
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)Lcom/android/internal/telephony/satellite/DatagramDispatcher;
    .registers 5

    .line 163
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    if-nez v0, :cond_b

    .line 164
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    .line 166
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 1441
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 1443
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 1455
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 1457
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist plogw(Ljava/lang/String;)V
    .registers 3

    .line 1448
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 1450
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V
    .registers 8

    .line 781
    iget-wide v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    sub-long v2, v0, v2

    .line 783
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;-><init>()V

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 785
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 786
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 787
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->getDatagramRoundedSizeBytes()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 790
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 791
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 792
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteCarrierId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 793
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isNtnOnlyCarrier()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;

    move-result-object v1

    .line 783
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteOutgoingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;)V

    if-nez p2, :cond_67

    .line 796
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    iget v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramSuccessCount(IZ)V

    .line 798
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfSuccessfulOutgoingDatagram(IJ)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void

    .line 801
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramFailCount(IZ)V

    .line 803
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfFailedOutgoingDatagram(II)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void
.end method

.method private blacklist reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V
    .registers 8

    .line 764
    iget-boolean p1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    goto :goto_7

    :cond_6
    const/4 p1, 0x6

    :goto_7
    const/4 v0, 0x0

    if-nez p2, :cond_25

    .line 767
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsTransmissionStartTime:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1a

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsTransmissionStartTime:J

    sub-long v3, v1, v3

    .line 769
    :cond_1a
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramSuccessCount(IZ)V

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfSuccessfulOutgoingDatagram(IJ)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void

    .line 773
    :cond_25
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramFailCount(IZ)V

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfFailedOutgoingDatagram(II)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void
.end method

.method private blacklist sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;I)V"
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 669
    :cond_7
    const-string v0, "sendErrorCodeAndCleanupPendingDatagrams: cleaning up resources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 674
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 675
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 676
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_14

    .line 680
    :cond_33
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private blacklist sendErrorCodeAndCleanupPendingSms(Ljava/util/LinkedHashMap;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;I)V"
        }
    .end annotation

    .line 1238
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 1239
    const-string p1, "sendErrorCodeAndCleanupPendingSms: pendingSmsMap is empty."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 1242
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendErrorCodeAndCleanupPendingSms: cleaning up resources. pendingSmsMap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_37

    .line 1247
    const-string p2, "sendErrorCodeAndCleanupPendingSms: satellitePhone is null."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    .line 1253
    :cond_37
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v0

    if-nez v0, :cond_46

    .line 1255
    const-string p2, "sendErrorCodeAndCleanupPendingSms: smsDispatchersController is null."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    .line 1261
    :cond_46
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1263
    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->onSendCarrierRoamingNbIotNtnTextError(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    .line 1265
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    goto :goto_4e

    .line 1269
    :cond_67
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private blacklist sendPendingDatagrams()V
    .registers 10

    .line 612
    const-string v0, "sendPendingDatagrams()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-nez v0, :cond_13

    .line 615
    const-string v0, "sendPendingDatagrams: modem is receiving datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 619
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 620
    const-string v0, "sendPendingDatagrams: no pending datagrams to send"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 626
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 627
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_4a

    .line 628
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    if-eqz v1, :cond_a0

    .line 632
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 634
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 635
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 636
    const-string v0, "sendPendingDatagrams: wait for satellite connected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v4, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/4 v7, 0x0

    const/16 v5, 0x8

    .line 637
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 642
    iget v0, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    return-void

    :cond_8b
    const/4 v2, 0x1

    .line 647
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 649
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 649
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 652
    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    :cond_a0
    return-void
.end method

.method private blacklist sendPendingMessages()V
    .registers 2

    .line 591
    const-string v0, "sendPendingMessages"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 595
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingDatagrams()V

    return-void

    .line 600
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingSms()V

    :cond_18
    return-void
.end method

.method private blacklist sendPendingSms()V
    .registers 8

    .line 1180
    const-string v0, "sendPendingSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1183
    const-string v0, "sendPendingSms: modem is receiving datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 1187
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 1189
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v0, :cond_26

    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_82

    .line 1193
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1194
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1195
    iget-boolean v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_4a

    const/4 v1, 0x7

    goto :goto_4b

    :cond_4a
    move v1, v3

    .line 1197
    :goto_4b
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1198
    const-string v0, "sendPendingSms: wait for satellite connected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    move v3, v1

    .line 1199
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 1199
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1204
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    return-void

    :cond_69
    move v3, v1

    const/4 v1, 0x1

    .line 1208
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1209
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1209
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v1, 0x8

    .line 1213
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1215
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPendingSms: mSendingInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pendingSmsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 756
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    .line 758
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist shouldPollMtSms()Z
    .registers 3

    .line 1326
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1328
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isEnabledMtSmsPolling()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1329
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldProcessEventSendSatelliteDatagramDone(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)Z
    .registers 5

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_3
    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1009
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_29

    .line 1011
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1013
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_19

    throw p0
.end method

.method private blacklist shouldSendDatagramToModemInDemoMode()Z
    .registers 4

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    .line 979
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 983
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 984
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 986
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception v0

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldSendDatagramToModemInDemoMode: id= 17891887, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startDatagramWaitForConnectedStateTimer(I)V
    .registers 5

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 909
    const-string p1, "DatagramWaitForConnectedStateTimer is already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 913
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 912
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 915
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isLastSosMessage(I)Z

    move-result p1

    .line 914
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitTimeForConnectedState(Z)J

    move-result-wide v1

    .line 912
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startMtSmsPollingThrottle()V
    .registers 4

    .line 1372
    const-string v0, "startMtSmsPollingThrottle"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1373
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Z

    const/16 v0, 0xa

    .line 1374
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1375
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getMtSmsPollingThrottleMillis()J

    move-result-wide v1

    .line 1374
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .registers 4

    .line 534
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    const-string p1, "Satellite aligned timer was already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 538
    :cond_c
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    const/4 v0, 0x3

    .line 540
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    .line 539
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startWaitForDatagramSendingResponseTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .registers 7

    const/4 v0, 0x5

    .line 940
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 941
    const-string p1, "WaitForDatagramSendingResponseTimer was already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 944
    :cond_d
    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isLastSosMessage(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 945
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingForLastMessageResponse:J

    goto :goto_1a

    .line 946
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    .line 947
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWaitForDatagramSendingResponseTimer: datagramType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", waitTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->logd(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startWaitForSimulatedPollDatagramsDelayTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .registers 4

    .line 1081
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v0, :cond_16

    .line 1082
    const-string v0, "startWaitForSimulatedPollDatagramsDelayTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1084
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1085
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getDemoTimeoutDuration()J

    move-result-wide v0

    .line 1083
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1087
    :cond_16
    const-string p1, "Should not start WaitForSimulatedPollDatagramsDelayTimer in non-demo mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist stopDatagramWaitForConnectedStateTimer()V
    .registers 2

    const/4 v0, 0x4

    .line 919
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopMtSmsPollingThrottle()V
    .registers 2

    const/4 v0, 0x0

    .line 1380
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Z

    const/16 v0, 0xa

    .line 1381
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopSatelliteAlignedTimer()V
    .registers 2

    const/4 v0, 0x3

    .line 586
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopWaitForDatagramSendingResponseTimer()V
    .registers 2

    const/4 v0, 0x5

    .line 954
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopWaitForSimulatedPollDatagramsDelayTimer()V
    .registers 2

    const/4 v0, 0x7

    .line 1092
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 1

    const/4 p0, 0x0

    .line 813
    sput-object p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-void
.end method

.method blacklist getDemoTimeoutDuration()J
    .registers 3

    .line 1114
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    return-wide v0
.end method

.method public blacklist getPendingDatagramCount()I
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 719
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist getPendingMessagesCount()I
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_e
    move-exception p0

    .line 709
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public blacklist getPendingSmsCount()I
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 729
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public blacklist getPendingUserMessagesCount()I
    .registers 6

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 738
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 739
    iget v3, v3, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_28
    move-exception p0

    goto :goto_33

    .line 743
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    add-int/2addr v2, p0

    .line 744
    monitor-exit v0

    return v2

    .line 745
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_28

    throw p0
.end method

.method protected blacklist getSatelliteAlignedTimeoutDuration()J
    .registers 3

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 267
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_21e

    .line 440
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DatagramDispatcherHandler: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    return-void

    .line 434
    :pswitch_21
    const-string v1, "CMD_SEND_MT_SMS_POLLING_MESSAGE"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 435
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleCmdSendMtSmsPollingMessage()V

    return-void

    .line 424
    :pswitch_2a
    iget-object v2, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_2d
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Z

    .line 426
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    .line 427
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v1, 0xb

    .line 428
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return-void

    :catchall_40
    move-exception v0

    .line 426
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 411
    :pswitch_43
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SomeArgs;

    .line 412
    iget-object v2, v1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 413
    iget-object v3, v1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 414
    iget-object v5, v1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 416
    :try_start_5f
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSendSmsDone(IJZ)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    .line 418
    invoke-virtual {v1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_66
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 419
    throw v0

    .line 391
    :pswitch_6b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 392
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_7f

    .line 394
    const-string v1, "CMD_SEND_SMS: satellitePhone is null."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 399
    :cond_7f
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v2

    if-nez v2, :cond_8b

    .line 401
    const-string v1, "CMD_SEND_SMS: smsDispatchersController is null."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_8b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsTransmissionStartTime:J

    .line 406
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendCarrierRoamingNbIotNtnText(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 385
    :pswitch_95
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 386
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventWaitForSimulatedPollDatagramsDelayTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    return-void

    .line 371
    :pswitch_a1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventWaitForDatagramSendingResponseTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    return-void

    .line 381
    :pswitch_a9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventDatagramWaitForConnectedStateTimedOut(I)V

    return-void

    .line 376
    :pswitch_b5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    return-void

    .line 293
    :pswitch_bd
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 294
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 295
    const-string v4, "sendDatagram"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I

    move-result v10

    .line 296
    iget-object v1, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 299
    iget-object v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 300
    :try_start_d2
    iget-boolean v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v5, :cond_f9

    if-nez v10, :cond_f9

    .line 301
    iget-boolean v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->skipCheckingSatelliteAligned:Z

    if-eqz v5, :cond_e5

    .line 302
    const-string v5, "Satellite was already aligned. No need to check alignment again"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    goto :goto_f9

    :catchall_e2
    move-exception v0

    goto/16 :goto_1b3

    .line 304
    :cond_e5
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget-boolean v6, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/satellite/DatagramController;->waitForAligningToSatellite(Z)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 305
    const-string v1, "Satellite is not aligned in demo mode, wait for the alignment."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 306
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    .line 307
    monitor-exit v4

    return-void

    .line 310
    :cond_f9
    :goto_f9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SEND_SATELLITE_DATAGRAM_DONE error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mIsDemoMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 320
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldProcessEventSendSatelliteDatagramDone(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)Z

    move-result v5

    if-nez v5, :cond_13a

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " was already processed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 322
    monitor-exit v4

    return-void

    .line 325
    :cond_13a
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForDatagramSendingResponseTimer()V

    .line 326
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 329
    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 331
    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 332
    iget-object v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_166

    const/4 v3, 0x1

    .line 334
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    goto :goto_166

    .line 337
    :cond_15b
    iget-object v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_166
    :goto_166
    if-nez v10, :cond_17a

    .line 342
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v6, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v7, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v8, 0x2

    .line 342
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 345
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startWaitForSimulatedPollDatagramsDelayTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    goto :goto_188

    .line 348
    :cond_17a
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v6, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v7, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v8, 0x3

    .line 348
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 353
    :goto_188
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v2

    if-lez v2, :cond_19b

    .line 355
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 357
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_1b1

    .line 359
    :cond_19b
    iget-object v11, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v12, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v13, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 364
    iget-object v0, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 366
    :goto_1b1
    monitor-exit v4

    return-void

    :goto_1b3
    monitor-exit v4
    :try_end_1b4
    .catchall {:try_start_d2 .. :try_end_1b4} :catchall_e2

    throw v0

    .line 269
    :pswitch_1b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_SEND_SATELLITE_DATAGRAM mIsDemoMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", shouldSendDatagramToModemInDemoMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldSendDatagramToModemInDemoMode()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 272
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 273
    iget-object v2, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 275
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->setDatagramStartTime()V

    const/4 v4, 0x2

    .line 276
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 278
    iget-object v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_1ea
    iget-boolean v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v5, :cond_206

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldSendDatagramToModemInDemoMode()Z

    move-result v5

    if-nez v5, :cond_206

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 281
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getDemoTimeoutDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_21a

    :catchall_204
    move-exception v0

    goto :goto_21c

    .line 283
    :cond_206
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    iget v6, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 285
    invoke-static {v6}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->needFullScreenPointingUI:Z

    .line 283
    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;ZZLandroid/os/Message;)V

    .line 287
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startWaitForDatagramSendingResponseTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    .line 289
    :goto_21a
    monitor-exit v4

    return-void

    :goto_21c
    monitor-exit v4
    :try_end_21d
    .catchall {:try_start_1ea .. :try_end_21d} :catchall_204

    throw v0

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_1b5
        :pswitch_bd
        :pswitch_b5
        :pswitch_a9
        :pswitch_a1
        :pswitch_a
        :pswitch_95
        :pswitch_6b
        :pswitch_43
        :pswitch_2a
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist isDatagramWaitForConnectedStateTimerStarted()Z
    .registers 2

    const/4 v0, 0x4

    .line 924
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencyCommunicationEstablished()Z
    .registers 2

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 903
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_14

    const/4 v1, 0x5

    if-ne p1, v1, :cond_c

    goto :goto_14

    :cond_c
    if-nez p1, :cond_1c

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_1c

    :catchall_12
    move-exception p0

    goto :goto_60

    .line 827
    :cond_14
    :goto_14
    const-string v1, "onSatelliteModemStateChanged: cleaning up resources"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->cleanUpResources()V

    :cond_1c
    :goto_1c
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3f

    const/4 v1, 0x1

    .line 834
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mHasEnteredConnectedState:Z

    .line 836
    iget v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mConnectedStateCounter:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mConnectedStateCounter:I

    .line 837
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isFirstConnected()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 838
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldPollMtSms()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    .line 841
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 842
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopDatagramWaitForConnectedStateTimer()V

    .line 843
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    :cond_3f
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4f

    .line 848
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mHasEnteredConnectedState:Z

    if-eqz p1, :cond_4f

    const/4 p1, 0x0

    .line 849
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mHasEnteredConnectedState:Z

    .line 850
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldPollMtSms()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Z

    .line 853
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_12

    .line 854
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result p1

    if-eqz p1, :cond_5f

    const/16 p1, 0xb

    .line 855
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5f
    return-void

    .line 853
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_12

    throw p0
.end method

.method public blacklist onSendSmsDone(IJZ)V
    .registers 6

    .line 1227
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1229
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1230
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 1231
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist retrySendingDatagrams()V
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    .line 505
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public blacklist sendSatelliteDatagram(IILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 466
    sget-object v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v3

    .line 468
    new-instance v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    move v2, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;-><init>(IJILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V

    move-object v7, v1

    move-wide v1, v3

    .line 471
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 473
    iget-object v8, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 475
    :try_start_21
    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_31
    move-exception v0

    goto/16 :goto_a4

    .line 478
    :cond_34
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_3d
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 482
    const-string v1, "sendDatagram: wait for satellite connected"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    move v2, p1

    move v3, p2

    .line 483
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 486
    iget v1, v7, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    goto :goto_a2

    .line 487
    :cond_5e
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_7e

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v10, 0x1

    .line 490
    iput-boolean v10, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move v2, p1

    move v3, p2

    .line 491
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 494
    invoke-direct {p0, v10, v7, v9}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    goto :goto_a2

    .line 496
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDatagram: mSendingInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPollingInIdleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 497
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 499
    :goto_a2
    monitor-exit v8

    return-void

    :goto_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_21 .. :try_end_a5} :catchall_31

    throw v0
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 10

    .line 1145
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->startPointingUI()V

    .line 1147
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 1148
    iget-wide v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1151
    iget-object v7, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1153
    :try_start_30
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-boolean v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v0, :cond_40

    const/4 v0, 0x7

    :goto_3e
    move v3, v0

    goto :goto_42

    :cond_40
    const/4 v0, 0x6

    goto :goto_3e

    .line 1156
    :goto_42
    iput v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1159
    const-string p1, "sendSms: wait for satellite connected"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1162
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 1160
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1163
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    goto :goto_ac

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto :goto_ae

    .line 1164
    :cond_64
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x1

    .line 1165
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1166
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1168
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1166
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v0, 0x8

    .line 1170
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ac

    .line 1172
    :cond_88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSms: mSendingInProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPollingInIdleState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1173
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1172
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1175
    :goto_ac
    monitor-exit v7

    return-void

    :goto_ae
    monitor-exit v7
    :try_end_af
    .catchall {:try_start_30 .. :try_end_af} :catchall_61

    throw p0
.end method

.method protected blacklist setDemoMode(Z)V
    .registers 3

    .line 514
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDemoMode: mIsDemoMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceAlignedWithSatellite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 526
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz p1, :cond_27

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSatelliteAligned()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_38

    .line 527
    :cond_27
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_25

    .line 528
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result p1

    if-eqz p1, :cond_37

    const/16 p1, 0xb

    .line 529
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_37
    return-void

    .line 527
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_25

    throw p0
.end method

.method protected blacklist setShouldSendDatagramToModemInDemoMode(Ljava/lang/Boolean;)V
    .registers 4

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShouldSendDatagramToModemInDemoMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_f

    .line 1065
    const-string v1, "null"

    goto :goto_10

    :cond_f
    move-object v1, p1

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    if-nez p1, :cond_25

    const/4 p1, 0x0

    .line 1068
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 1070
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_35

    .line 1071
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1072
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 1074
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method blacklist setTimeoutDatagramDelayInDemoMode(ZJ)V
    .registers 6

    .line 1121
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_10

    .line 1125
    sget-object p2, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    goto :goto_12

    .line 1127
    :cond_10
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    .line 1129
    :goto_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTimeoutDatagramDelayInDemoMode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " reset="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setWaitTimeForDatagramSendingResponse(ZJ)V
    .registers 4

    if-eqz p1, :cond_9

    .line 932
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    return-void

    .line 934
    :cond_9
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    return-void
.end method

.method public blacklist updateSessionStatsWithPendingUserMsgCount(Landroid/telephony/satellite/SatelliteSessionStats;)V
    .registers 8

    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingEmergencyDatagramsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 1465
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingNonEmergencyDatagramsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 1467
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1466
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingSmsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    .line 1469
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 1473
    const-string v3, "SessionMetricsStats1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataGramType1 =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget v2, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p1, v2}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_61

    :catchall_91
    move-exception p0

    goto/16 :goto_10d

    .line 1478
    :cond_94
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1479
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 1480
    const-string v3, "SessionMetricsStats1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataGramType2 =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget v2, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p1, v2}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_9e

    .line 1484
    :cond_ce
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1486
    iget-boolean v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v1, :cond_f0

    const/4 v1, 0x7

    goto :goto_f1

    :cond_f0
    const/4 v1, 0x6

    .line 1488
    :goto_f1
    const-string v2, "SessionMetricsStats1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataGramType3 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-virtual {p1, v1}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_d8

    .line 1491
    :cond_10b
    monitor-exit v0

    return-void

    :goto_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_3 .. :try_end_10e} :catchall_91

    throw p0
.end method
