.class public Lcom/android/internal/telephony/satellite/DatagramReceiver;
.super Landroid/os/Handler;
.source "DatagramReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;,
        Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;
    }
.end annotation


# static fields
.field private static blacklist mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

.field private final blacklist mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

.field private blacklist mDatagramTransferStartTime:J

.field private blacklist mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsAligned:Z

.field private blacklist mIsDemoMode:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mPendingAckCountHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

.field private blacklist mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/ContentResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Lcom/android/internal/telephony/satellite/DatagramController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingAckCountHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/SharedPreferences;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;Landroid/content/SharedPreferences;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpollPendingSatelliteDatagramsInternal(Lcom/android/internal/telephony/satellite/DatagramReceiver;ILjava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->pollPendingSatelliteDatagramsInternal(ILjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportMetrics(Lcom/android/internal/telephony/satellite/DatagramReceiver;Landroid/telephony/satellite/SatelliteDatagram;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->reportMetrics(Landroid/telephony/satellite/SatelliteDatagram;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmNextDatagramId()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V
    .registers 8

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    .line 90
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramTransferStartTime:J

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsAligned:Z

    .line 94
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 96
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 98
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    .line 99
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingAckCountHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLooper:Landroid/os/Looper;

    .line 149
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 151
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 154
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 156
    :try_start_4a
    const-string p2, "satellite_shared_pref"

    .line 157
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get default shared preferences: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cleanUpResources()V
    .registers 8

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 693
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    if-eqz v0, :cond_1b

    .line 694
    iget-object v0, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    const/16 v2, 0xf

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    goto :goto_1b

    :catchall_18
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 699
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->stopDatagramWaitForConnectedStateTimer()V

    .line 700
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_18

    .line 702
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isReceivingDatagrams()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 707
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v5

    const/16 v6, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x7

    .line 704
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 710
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->cleanupDemoModeResources()V

    return-void

    .line 700
    :goto_49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_18

    throw p0
.end method

.method private blacklist cleanupDemoModeResources()V
    .registers 3

    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 675
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->stopSatelliteAlignedTimer()V

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    if-nez v0, :cond_13

    .line 677
    const-string v0, "Satellite aligned timer was started but mDemoPollPendingSatelliteDatagramsRequest is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->ploge(Ljava/lang/String;)V

    goto :goto_20

    .line 680
    :cond_13
    iget-object v0, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    const/16 v1, 0xf

    .line 682
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    :goto_20
    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    const/4 v1, 0x0

    .line 686
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 687
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsAligned:Z

    return-void
.end method

.method private blacklist handleEventDatagramWaitForConnectedStateTimedOut()V
    .registers 15

    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    if-nez v0, :cond_11

    .line 859
    const-string v0, "handleEventDatagramWaitForConnectedStateTimedOut: mPendingPollSatelliteDatagramsRequest is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogw(Ljava/lang/String;)V

    .line 861
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    .line 864
    :cond_11
    const-string v0, "Timed out to wait for satellite connected before polling datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogw(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    iget v3, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    .line 868
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v6

    const/16 v7, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 865
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 871
    iget-object v8, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    iget v9, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    .line 874
    invoke-virtual {v8}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 871
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    const/16 v0, 0x12

    const/4 v2, 0x0

    .line 877
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->reportMetrics(Landroid/telephony/satellite/SatelliteDatagram;I)V

    .line 879
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    iget-object v3, v3, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/Consumer;

    .line 881
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 882
    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 883
    monitor-exit v1

    return-void

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_e

    throw p0
.end method

.method private blacklist handleEventSatelliteAligned()V
    .registers 3

    .line 803
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 804
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->stopSatelliteAlignedTimer()V

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    if-nez v0, :cond_13

    .line 807
    const-string v0, "handleSatelliteAlignedTimer: mDemoPollPendingSatelliteDatagramsRequest is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->ploge(Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v1, 0x2

    .line 810
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 813
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 814
    invoke-static {v0, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 815
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void
.end method

.method private blacklist handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;)V
    .registers 4

    .line 821
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    const/4 v1, 0x2

    .line 824
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x0

    .line 825
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 826
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist handleSatelliteConnectedEvent()V
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 586
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->stopDatagramWaitForConnectedStateTimer()V

    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    if-nez v1, :cond_19

    .line 588
    const-string v1, "handleSatelliteConnectedEvent: mPendingPollSatelliteDatagramsRequest is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->ploge(Ljava/lang/String;)V

    .line 590
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_27

    .line 593
    :cond_19
    iget-object v2, v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Consumer;

    .line 595
    iget v1, v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->pollPendingSatelliteDatagramsInternal(ILjava/util/function/Consumer;)V

    const/4 v1, 0x0

    .line 597
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 599
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_17

    throw p0
.end method

.method private blacklist isSatelliteAlignedTimerStarted()Z
    .registers 2

    const/4 v0, 0x3

    .line 830
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 895
    const-string v0, "DatagramReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 899
    const-string v0, "DatagramReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)Lcom/android/internal/telephony/satellite/DatagramReceiver;
    .registers 5

    .line 127
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramReceiver;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    .line 130
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 907
    const-string v0, "DatagramReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 909
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 921
    const-string v0, "DatagramReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 923
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist plogw(Ljava/lang/String;)V
    .registers 3

    .line 914
    const-string v0, "DatagramReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 916
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist pollPendingSatelliteDatagramsInternal(ILjava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v0

    if-nez v0, :cond_17

    .line 606
    const-string p1, "pollPendingSatelliteDatagramsInternal: satellite modem is busy sending datagrams."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    const/16 p0, 0x16

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 612
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 614
    const-string v0, "pollPendingSatelliteDatagramsInternal: wait for satellite connected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_28
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 617
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-direct {v0, p2, v2, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mPendingPollSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 618
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 621
    invoke-virtual {v3}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    move v4, p1

    .line 618
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 623
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->startDatagramWaitForConnectedStateTimer()V

    .line 624
    monitor-exit v1

    return-void

    :catchall_46
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_46

    throw p0

    :cond_4a
    move v3, p1

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 631
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    .line 628
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramTransferStartTime:J

    .line 634
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 636
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    if-eqz v0, :cond_8e

    .line 637
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    invoke-direct {v0, p2, p1, v3}, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;I)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_6d
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsAligned:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->waitForAligningToSatellite(Z)Z

    move-result p1

    if-nez p1, :cond_87

    const/4 p1, 0x2

    .line 641
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x0

    .line 643
    invoke-static {p0, p1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 644
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8a

    :catchall_84
    move-exception v0

    move-object p0, v0

    goto :goto_8c

    .line 646
    :cond_87
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;)V

    .line 648
    :goto_8a
    monitor-exit v1

    return-void

    :goto_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_84

    throw p0

    :cond_8e
    const/4 v0, 0x1

    .line 650
    invoke-direct {p0, v0, p2, p1, v3}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method private blacklist reportMetrics(Landroid/telephony/satellite/SatelliteDatagram;I)V
    .registers 10

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_24

    .line 740
    invoke-virtual {p1}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 741
    invoke-virtual {p1}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object p1

    array-length p1, p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    .line 744
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    long-to-int v0, v3

    .line 746
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramTransferStartTime:J

    sub-long/2addr v3, v5

    goto :goto_25

    :cond_24
    move-wide v3, v1

    .line 748
    :goto_25
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramTransferStartTime:J

    .line 750
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;-><init>()V

    .line 752
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v1

    .line 753
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v0

    .line 754
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    .line 755
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v0

    .line 756
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteCarrierId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v0

    .line 757
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isNtnOnlyCarrier()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;

    move-result-object v0

    .line 750
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteIncomingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;)V

    .line 760
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportIncomingDatagramCount(IZ)V

    if-nez p2, :cond_70

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfSuccessfulIncomingDatagram()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void

    .line 764
    :cond_70
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfFailedIncomingDatagram()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void
.end method

.method private blacklist sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;I)V
    .registers 6

    .line 727
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;I)V

    .line 729
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 730
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist startDatagramWaitForConnectedStateTimer()V
    .registers 4

    .line 838
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 839
    const-string v0, "DatagramWaitForConnectedStateTimer is already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x4

    .line 842
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v2, 0x0

    .line 844
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitTimeForConnectedState(Z)J

    move-result-wide v1

    .line 842
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;)V
    .registers 4

    .line 787
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 788
    const-string p1, "Satellite aligned timer was already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    return-void

    .line 791
    :cond_c
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDemoPollPendingSatelliteDatagramsRequest:Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    const/4 v0, 0x3

    .line 793
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    .line 792
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist stopDatagramWaitForConnectedStateTimer()V
    .registers 2

    const/4 v0, 0x4

    .line 848
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopSatelliteAlignedTimer()V
    .registers 2

    const/4 v0, 0x3

    .line 834
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 1

    const/4 p0, 0x0

    .line 891
    sput-object p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->sInstance:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    return-void
.end method

.method protected blacklist getSatelliteAlignedTimeoutDuration()J
    .registers 3

    .line 799
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 440
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_bb

    if-eq v2, v3, :cond_35

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x4

    if-eq v2, v3, :cond_29

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DatagramDispatcherHandler: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogw(Ljava/lang/String;)V

    return-void

    .line 498
    :cond_29
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->handleEventDatagramWaitForConnectedStateTimedOut()V

    return-void

    .line 493
    :cond_2d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;)V

    return-void

    .line 450
    :cond_35
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 451
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 452
    const-string v3, "pollPendingSatelliteDatagrams"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I

    move-result v1

    .line 455
    iget-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_79

    if-nez v1, :cond_79

    .line 456
    iget-object v3, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/satellite/DatagramController;->popDemoModeDatagram()Landroid/telephony/satellite/SatelliteDatagram;

    move-result-object v3

    .line 458
    iget-object v6, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v7, 0x7fffffff

    .line 459
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    if-eqz v6, :cond_78

    .line 461
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v5, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 463
    invoke-virtual {v6, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 466
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_79

    :cond_78
    const/4 v1, 0x6

    :cond_79
    :goto_79
    move v11, v1

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_PENDING_SATELLITE_DATAGRAMS_DONE error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    if-eqz v11, :cond_af

    .line 474
    iget-object v6, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v7, v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    const/4 v9, 0x7

    .line 477
    invoke-virtual {v6}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v10

    const/4 v8, 0x1

    .line 474
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 479
    iget-object v12, v0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v13, v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    .line 482
    invoke-virtual {v12}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v16

    const/16 v17, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 479
    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 485
    invoke-direct {v0, v5, v11}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->reportMetrics(Landroid/telephony/satellite/SatelliteDatagram;I)V

    .line 488
    :cond_af
    iget-object v0, v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 442
    :cond_bb
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;

    .line 444
    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 445
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->pollPendingSatelliteDatagrams(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isDatagramWaitForConnectedStateTimerStarted()Z
    .registers 2

    const/4 v0, 0x4

    .line 853
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_13

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    goto :goto_13

    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1b

    .line 667
    :try_start_d
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->handleSatelliteConnectedEvent()V

    goto :goto_1b

    :catchall_11
    move-exception p0

    goto :goto_1d

    .line 664
    :cond_13
    :goto_13
    const-string p1, "onSatelliteModemStateChanged: cleaning up resources"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->cleanUpResources()V

    .line 669
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_11

    throw p0
.end method

.method public blacklist pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result p1

    if-nez p1, :cond_17

    .line 575
    const-string p1, "pollPendingSatelliteDatagrams: satellite modem is busy receiving datagrams."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    const/16 p0, 0x16

    .line 576
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_17
    const p1, 0x7fffffff

    .line 579
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->pollPendingSatelliteDatagramsInternal(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist registerForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)I
    .registers 7

    .line 517
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteSupportedViaOem()Z

    move-result p1

    if-nez p1, :cond_d

    const/16 p0, 0x14

    return p0

    .line 522
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v0, 0x7fffffff

    .line 523
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    if-nez p1, :cond_2e

    .line 525
    new-instance p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, v1, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;-><init>(Landroid/os/Looper;I)V

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->registerForSatelliteDatagramsReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 532
    :cond_2e
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->addListener(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist setDemoMode(Z)V
    .registers 2

    .line 774
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsAligned:Z

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceAlignedWithSatellite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsAligned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 782
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mIsDemoMode:Z

    if-eqz p1, :cond_27

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->handleEventSatelliteAligned()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 783
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public blacklist unregisterForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 4

    .line 548
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v0, 0x7fffffff

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    if-eqz p1, :cond_26

    .line 551
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->removeListener(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 553
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->hasListeners()Z

    move-result p2

    if-nez p2, :cond_26

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver;->mSatelliteDatagramListenerHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unregisterForSatelliteDatagramsReceived(Landroid/os/Handler;)V

    :cond_26
    return-void
.end method
