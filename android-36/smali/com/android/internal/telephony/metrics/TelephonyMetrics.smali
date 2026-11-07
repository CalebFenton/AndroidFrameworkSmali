.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyMetrics"

.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final blacklist mBwEstStatsMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastActiveSubscriptionInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastCarrierId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEnabledModemBitmap:I

.field private final blacklist mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastRadioState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastRilDataCallEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastSimState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartElapsedTimeMs:J

.field private blacklist mStartSystemTimeMs:J

.field private final blacklist mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTelephonyEventsDropped:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-nOcMNWHTbpKOqbygtGzZp5k7ho(I)[Ljava/lang/String;
    .registers 1

    .line 1608
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$04hZaTPRjbKKFrmdEy--pzWMyZo(ILjava/lang/Integer;)Z
    .registers 2

    .line 847
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$L9JglyIZGNs9muKcxrTOs8uK5Oo(I)[Ljava/lang/String;
    .registers 1

    .line 2670
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRadioState:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 217
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 220
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;

    .line 227
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    aput-object v3, v2, v1

    .line 232
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    .line 241
    iput-boolean v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    return-void
.end method

.method private declared-synchronized blacklist addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    .registers 4

    monitor-enter p0

    .line 1198
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_16

    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1200
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_1d

    .line 1202
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 1203
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw p1
.end method

.method private declared-synchronized blacklist annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .registers 6

    monitor-enter p0

    .line 1033
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-eqz p3, :cond_11

    .line 1035
    invoke-virtual {p3, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 1037
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method private declared-synchronized blacklist annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .registers 6

    monitor-enter p0

    .line 1048
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-eqz p3, :cond_11

    .line 1050
    invoke-virtual {p3, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 1052
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method private blacklist buildBandwidthEstimatorStats()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 5

    .line 2982
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    .line 2984
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeBandwidthEstimatorStatsRatList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 2985
    new-array v3, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    .line 2986
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeBandwidthEstimatorStatsRatList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 2987
    new-array v1, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    iput-object p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    return-object v0
.end method

.method private declared-synchronized blacklist buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 8

    monitor-enter p0

    .line 759
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 762
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 763
    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 767
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 771
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 774
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    const/4 v2, 0x0

    move v3, v2

    .line 776
    :goto_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9a

    .line 777
    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    new-instance v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v5}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v5, v4, v3

    .line 778
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 779
    iget-object v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v5, v5, v3

    .line 781
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 782
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 783
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 784
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 785
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 786
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 787
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 788
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 789
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v4

    iput-object v4, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :catchall_97
    move-exception v0

    goto/16 :goto_120

    .line 793
    :cond_9a
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a0

    const/4 v1, 0x0

    goto :goto_a8

    .line 794
    :cond_a0
    const-string v3, "batterystats"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsManager;

    .line 795
    :goto_a8
    new-instance v3, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>(Landroid/os/BatteryStatsManager;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 798
    const-string v1, "ro.boot.revision"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 801
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 802
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 803
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 805
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 807
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 810
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 811
    new-array v3, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move v4, v2

    .line 813
    :goto_ec
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_107

    .line 814
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 815
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    :cond_107
    :goto_107
    if-ge v2, v1, :cond_116

    .line 818
    aget-object v4, v3, v2

    if-nez v4, :cond_113

    .line 819
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_113
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 822
    :cond_116
    iput-object v3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 823
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildBandwidthEstimatorStats()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    :try_end_11e
    .catchall {:try_start_1 .. :try_end_11e} :catchall_97

    .line 824
    monitor-exit p0

    return-object v0

    :goto_120
    :try_start_120
    monitor-exit p0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_97

    throw v0
.end method

.method private static blacklist callQualityLevelToProtoEnum(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x2

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x3

    if-ne p0, v1, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x4

    if-ne p0, v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x5

    if-ne p0, v1, :cond_14

    return v0

    :cond_14
    if-ne p0, v0, :cond_18

    const/4 p0, 0x6

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist callSessionEventToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_4e

    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :pswitch_8
    const-string p0, "AUDIO_CODEC"

    return-object p0

    .line 406
    :pswitch_b
    const-string p0, "NITZ_TIME"

    return-object p0

    .line 404
    :pswitch_e
    const-string p0, "PHONE_STATE_CHANGED"

    return-object p0

    .line 402
    :pswitch_11
    const-string p0, "IMS_CALL_HANDOVER_FAILED"

    return-object p0

    .line 400
    :pswitch_14
    const-string p0, "IMS_CALL_HANDOVER"

    return-object p0

    .line 398
    :pswitch_17
    const-string p0, "IMS_CALL_TERMINATED"

    return-object p0

    .line 396
    :pswitch_1a
    const-string p0, "IMS_CALL_STATE_CHANGED"

    return-object p0

    .line 394
    :pswitch_1d
    const-string p0, "IMS_CALL_RECEIVE"

    return-object p0

    .line 392
    :pswitch_20
    const-string p0, "IMS_COMMAND_COMPLETE"

    return-object p0

    .line 390
    :pswitch_23
    const-string p0, "IMS_COMMAND_FAILED"

    return-object p0

    .line 388
    :pswitch_26
    const-string p0, "IMS_COMMAND_RECEIVED"

    return-object p0

    .line 386
    :pswitch_29
    const-string p0, "IMS_COMMAND"

    return-object p0

    .line 384
    :pswitch_2c
    const-string p0, "RIL_CALL_LIST_CHANGED"

    return-object p0

    .line 382
    :pswitch_2f
    const-string p0, "RIL_CALL_SRVCC"

    return-object p0

    .line 380
    :pswitch_32
    const-string p0, "RIL_CALL_RING"

    return-object p0

    .line 378
    :pswitch_35
    const-string p0, "RIL_RESPONSE"

    return-object p0

    .line 376
    :pswitch_38
    const-string p0, "RIL_REQUEST"

    return-object p0

    .line 374
    :pswitch_3b
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    .line 372
    :pswitch_3e
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    .line 370
    :pswitch_41
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    .line 368
    :pswitch_44
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    .line 366
    :pswitch_47
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    .line 364
    :pswitch_4a
    const-string p0, "EVENT_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist cloneCurrentTelephonySettings(I)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 3

    .line 1259
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    .line 1260
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz p0, :cond_23

    .line 1263
    iget p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1264
    iget-boolean p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 1265
    iget-boolean p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 1266
    iget-boolean p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1267
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    :cond_23
    return-object v0
.end method

.method private blacklist convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;Ljava/lang/String;)V
    .registers 9

    .line 1616
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    .line 1617
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    goto :goto_d

    .line 1619
    :cond_b
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    .line 1621
    :goto_d
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_9a

    const/4 v0, 0x0

    .line 1650
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_20
    const/16 v0, 0x9

    .line 1647
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_25
    const/16 v0, 0x8

    .line 1644
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_2a
    const/4 v0, 0x7

    .line 1641
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_2e
    const/4 v0, 0x6

    .line 1638
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_32
    const/4 v0, 0x5

    .line 1635
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_36
    const/4 v0, 0x4

    .line 1632
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    :pswitch_3a
    const/4 v0, 0x3

    .line 1629
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    .line 1626
    :pswitch_3e
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_43

    .line 1623
    :pswitch_41
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1653
    :goto_43
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    .line 1654
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    .line 1655
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getPreciseDisconnectCause()I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    .line 1658
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v0

    if-eqz v0, :cond_99

    .line 1659
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 1661
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    .line 1662
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getSamplePercentageForEmergencyCall(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double p3, v0, v2

    if-gez p3, :cond_99

    .line 1663
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result p3

    iput-boolean p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isEmergencyCall:Z

    .line 1665
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p3

    .line 1664
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertEmergencyNumberToEmergencyNumberInfo(Landroid/telephony/emergency/EmergencyNumber;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    move-result-object p0

    iput-object p0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 1666
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    if-eqz p0, :cond_96

    .line 1668
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result p0

    goto :goto_97

    :cond_96
    const/4 p0, -0x1

    .line 1669
    :goto_97
    iput p0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberDatabaseVersion:I

    :cond_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist convertConnectionsToRilCalls(Ljava/util/ArrayList;Ljava/lang/String;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;"
        }
    .end annotation

    .line 1593
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    const/4 v1, 0x0

    .line 1594
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1595
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v0, v1

    .line 1596
    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1597
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    return-object v0
.end method

.method private blacklist convertEmergencyNumberToEmergencyNumberInfo(Landroid/telephony/emergency/EmergencyNumber;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 4

    .line 1603
    new-instance p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    .line 1604
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    .line 1605
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    .line 1606
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    .line 1607
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->serviceCategoriesBitmask:I

    .line 1608
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    .line 1609
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->numberSourcesBitmask:I

    .line 1610
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->routing:I

    return-object p0
.end method

.method private blacklist convertGsmCdmaCodec(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_1a

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/16 p0, 0xa

    return p0

    :pswitch_10
    const/16 p0, 0x9

    return p0

    :pswitch_13
    const/16 p0, 0x8

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_18
    const/4 p0, 0x1

    return p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertImsCodec(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_3a

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_8
    const/16 p0, 0x13

    return p0

    :pswitch_b
    const/16 p0, 0x12

    return p0

    :pswitch_e
    const/16 p0, 0x11

    return p0

    :pswitch_11
    const/16 p0, 0x10

    return p0

    :pswitch_14
    const/16 p0, 0xf

    return p0

    :pswitch_17
    const/16 p0, 0xe

    return p0

    :pswitch_1a
    const/16 p0, 0xd

    return p0

    :pswitch_1d
    const/16 p0, 0xc

    return p0

    :pswitch_20
    const/16 p0, 0xb

    return p0

    :pswitch_23
    const/16 p0, 0xa

    return p0

    :pswitch_26
    const/16 p0, 0x9

    return p0

    :pswitch_29
    const/16 p0, 0x8

    return p0

    :pswitch_2c
    const/4 p0, 0x7

    return p0

    :pswitch_2e
    const/4 p0, 0x6

    return p0

    :pswitch_30
    const/4 p0, 0x5

    return p0

    :pswitch_32
    const/4 p0, 0x4

    return p0

    :pswitch_34
    const/4 p0, 0x3

    return p0

    :pswitch_36
    const/4 p0, 0x2

    return p0

    :pswitch_38
    const/4 p0, 0x1

    return p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .registers 2

    .line 659
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 658
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertRadioState(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method

.method private blacklist convertSmsFormat(Ljava/lang/String;)I
    .registers 2

    .line 2744
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p0, "3gpp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "3gpp2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z
    .registers 5

    .line 1585
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_f

    aget-object v2, p1, v1

    .line 1586
    iget v2, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-nez v2, :cond_c

    return v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized blacklist finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .registers 5

    monitor-enter p0

    .line 1149
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 1150
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 1151
    iget-object v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1152
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 1153
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 1154
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 1155
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_35

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_48

    .line 1158
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1160
    const-string p1, "Call session finished"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_33

    .line 1161
    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_33

    throw p1
.end method

.method private declared-synchronized blacklist finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 5

    monitor-enter p0

    .line 1178
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    .line 1179
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 1180
    iget-object v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1181
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 1182
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 1183
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    .line 1185
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_35

    .line 1186
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_3c

    .line 1188
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_33

    .line 1189
    monitor-exit p0

    return-object v0

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_33

    throw p1
.end method

.method private declared-synchronized blacklist finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .registers 3

    monitor-enter p0

    .line 1169
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v0

    if-nez v0, :cond_19

    .line 1170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1173
    const-string p1, "SMS session finished"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_1b

    .line 1175
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_17

    throw p1
.end method

.method private blacklist getCallId(Landroid/telephony/ims/ImsCallSession;)I
    .registers 2

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 2054
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    return p0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v0

    .line 256
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v1, :cond_11

    .line 257
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 260
    :cond_11
    :goto_11
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private blacklist getSamplePercentageForEmergencyCall(Ljava/lang/String;)D
    .registers 2

    .line 2931
    const-string p0, "cn,in"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 2933
    :cond_b
    const-string p0, "us,id,br,pk,ng,bd,ru,mx,jp,et,ph,eg,vn,cd,tr,ir,de"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-wide/high16 p0, 0x4014000000000000L    # 5.0

    return-wide p0

    .line 2935
    :cond_16
    const-string p0, "th,gb,fr,tz,it,za,mm,ke,kr,co,es,ug,ar,ua,dz,sd,iq"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-wide/high16 p0, 0x402e000000000000L    # 15.0

    return-wide p0

    .line 2937
    :cond_21
    const-string p0, "pl,ca,af,ma,sa,pe,uz,ve,my,ao,mz,gh,np,ye,mg,kp,cm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-wide/high16 p0, 0x4039000000000000L    # 25.0

    return-wide p0

    .line 2939
    :cond_2c
    const-string p0, "au,tw,ne,lk,bf,mw,ml,ro,kz,sy,cl,zm,gt,zw,nl,ec,sn"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-wide p0, 0x4041800000000000L    # 35.0

    return-wide p0

    .line 2941
    :cond_3a
    const-string p0, "kh,td,so,gn,ss,rw,bj,tn,bi,be,cu,bo,ht,gr,do,cz,pt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_48

    const-wide p0, 0x4046800000000000L    # 45.0

    return-wide p0

    :cond_48
    const-wide/high16 p0, 0x4049000000000000L    # 50.0

    return-wide p0
.end method

.method private blacklist getSmsTech(IZ)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    if-nez p1, :cond_b

    if-eqz p2, :cond_a

    const/4 p0, 0x2

    :cond_a
    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist lookupEstimationStats(III)Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;
    .registers 6

    .line 2972
    invoke-static {p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(II)Ljava/lang/String;

    move-result-object v0

    .line 2973
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    if-nez v1, :cond_24

    .line 2975
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;-><init>(II)V

    .line 2976
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v1
.end method

.method private static blacklist makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 2

    .line 880
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    .line 881
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    const/4 p0, -0x1

    .line 882
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 883
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    return-object v0
.end method

.method private static blacklist mapSimStateToProto(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x2

    return p0

    :cond_b
    return v0
.end method

.method private declared-synchronized blacklist printAllMetrics(Ljava/io/PrintWriter;)V
    .registers 16

    monitor-enter p0

    .line 452
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 454
    const-string v1, "Telephony metrics proto:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const-string v1, "------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    const-string v1, "Telephony events:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 459
    iget-wide v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 460
    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 462
    const-string v5, "] "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    const-string v5, "T="

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-ne v5, v3, :cond_da

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(Data RAT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Voice RAT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Channel Number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " NR Frequency Range "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " NR State "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    :goto_a1
    iget-object v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget-object v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    array-length v3, v3

    if-ge v4, v3, :cond_e1

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reg info: domain="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget-object v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget-object v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    :catchall_d7
    move-exception p1

    goto/16 :goto_64c

    .line 479
    :cond_da
    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    :cond_e1
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 485
    :cond_e8
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 486
    const-string v1, "Call sessions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 489
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v5, 0xa

    if-eqz v2, :cond_260

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start time in minutes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    iget-boolean v6, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz v6, :cond_14e

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", events dropped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_153

    .line 495
    :cond_14e
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    :goto_153
    const-string v6, "Events: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 500
    iget-object v2, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v6, v2

    move v7, v4

    :goto_15f
    if-ge v7, v6, :cond_25b

    aget-object v8, v2, v7

    .line 501
    iget v9, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 502
    const-string v9, " T="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget v9, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-ne v9, v3, :cond_1c9

    .line 504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(Data RAT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Voice RAT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Channel Number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " NR Frequency Range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " NR State "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v8, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_257

    :cond_1c9
    if-ne v9, v5, :cond_227

    .line 512
    invoke-static {v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 514
    iget-object v8, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v9, v8

    move v10, v4

    :goto_1d9
    if-ge v10, v9, :cond_223

    aget-object v11, v8, v10

    .line 515
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ". Type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " State = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " End Reason "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Precise Disconnect Cause "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " isMultiparty = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v11, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d9

    .line 520
    :cond_223
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_257

    :cond_227
    const/16 v10, 0x16

    if-ne v9, v10, :cond_250

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_257

    .line 525
    :cond_250
    invoke-static {v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_257
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15f

    .line 528
    :cond_25b
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto/16 :goto_f9

    .line 531
    :cond_260
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 532
    const-string v1, "Sms sessions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :goto_272
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_444

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    add-int/2addr v2, v7

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] Start time in minutes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    iget-boolean v8, v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v8, :cond_2cf

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", events dropped: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d4

    .line 544
    :cond_2cf
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    :goto_2d4
    const-string v8, "Events: "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 548
    iget-object v6, v6, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v8, v6

    move v9, v4

    :goto_2e0
    if-ge v9, v8, :cond_43f

    aget-object v10, v6, v9

    .line 549
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 550
    const-string v11, " T="

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-ne v11, v3, :cond_34a

    .line 552
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "(Data RAT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Voice RAT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Channel Number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " NR Frequency Range "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " NR State "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_43b

    :cond_34a
    const/16 v12, 0x8

    if-ne v11, v12, :cond_39b

    .line 560
    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 562
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eq v11, v7, :cond_377

    if-eq v11, v3, :cond_371

    const/4 v12, 0x3

    if-eq v11, v12, :cond_36b

    const/4 v12, 0x4

    if-eq v11, v12, :cond_365

    goto :goto_37c

    .line 573
    :cond_365
    const-string v11, "Type: WAP PUSH"

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37c

    .line 570
    :cond_36b
    const-string v11, "Type: zero"

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37c

    .line 567
    :cond_371
    const-string v11, "Type: Voicemail indication"

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37c

    .line 564
    :cond_377
    const-string v11, "Type: SMS-PP"

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    :goto_37c
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v11, :cond_396

    .line 579
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "E="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    :cond_396
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto/16 :goto_43b

    :cond_39b
    const/4 v12, 0x6

    if-eq v11, v12, :cond_3d6

    const/4 v12, 0x7

    if-ne v11, v12, :cond_3a2

    goto :goto_3d6

    :cond_3a2
    if-ne v11, v5, :cond_43b

    .line 592
    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_43b

    .line 584
    :cond_3d6
    :goto_3d6
    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 586
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ReqId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "E="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RilE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ImsE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    :cond_43b
    :goto_43b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2e0

    .line 599
    :cond_43f
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto/16 :goto_272

    .line 602
    :cond_444
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 603
    const-string v1, "Modem power stats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mContext:Landroid/content/Context;

    if-nez v1, :cond_455

    const/4 v1, 0x0

    goto :goto_45d

    .line 607
    :cond_455
    const-string v2, "batterystats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsManager;

    .line 608
    :goto_45d
    new-instance v2, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>(Landroid/os/BatteryStatsManager;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v1

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power log duration (battery time) (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Energy consumed by modem (mAh): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of packets sent (tx): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of bytes sent (tx): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of packets received (rx): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of bytes received (rx): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time kernel is active because of cellular data (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time spent in very poor rx signal level (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time modem is in sleep (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time modem is in idle (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time modem is in rx (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time modem is in tx (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time phone spent in various Radio Access Technologies (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 625
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of time phone spent in various cellular rx signal strength levels (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 628
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Energy consumed across measured modem rails (mAh): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v5, "#.##"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    .line 630
    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.boot.revision"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 635
    const-string v1, "LinkBandwidthEstimator stats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 638
    const-string v1, "Tx"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_606
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    .line 640
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_606

    .line 643
    :cond_61a
    const-string v1, "Rx"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_643

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    .line 645
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62f

    .line 648
    :cond_643
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->printAllMetrics(Ljava/io/PrintWriter;)V
    :try_end_64a
    .catchall {:try_start_1 .. :try_end_64a} :catchall_d7

    .line 649
    monitor-exit p0

    return-void

    :goto_64c
    :try_start_64c
    monitor-exit p0
    :try_end_64d
    .catchall {:try_start_64c .. :try_end_64d} :catchall_d7

    throw p1
.end method

.method private declared-synchronized blacklist reset()V
    .registers 9

    monitor-enter p0

    .line 666
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mBwEstStatsMapList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 672
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    .line 682
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    .line 683
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 682
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 685
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 686
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    move v0, v1

    .line 688
    :goto_5e
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_8c

    .line 689
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 690
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 691
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 692
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :catchall_89
    move-exception v0

    goto/16 :goto_1ed

    :cond_8c
    move v0, v1

    .line 695
    :goto_8d
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_b8

    .line 696
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 698
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 699
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 700
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_b8
    move v0, v1

    .line 703
    :goto_b9
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_e4

    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 706
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 707
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 708
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_e4
    move v0, v1

    .line 711
    :goto_e5
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_110

    .line 712
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 714
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 715
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 716
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    :cond_110
    move v0, v1

    .line 719
    :goto_111
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_13c

    .line 720
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 721
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    .line 722
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 723
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    :cond_13c
    move v0, v1

    .line 726
    :goto_13d
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_168

    .line 727
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 728
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;

    .line 729
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNetworkCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 730
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13d

    :cond_168
    move v0, v1

    .line 733
    :goto_169
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1bc

    .line 734
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    move v3, v1

    .line 735
    :goto_178
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b9

    .line 736
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 738
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    filled-new-array {v4}, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v4

    .line 739
    new-instance v5, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v5, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 740
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v4

    .line 739
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    :cond_1b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_169

    .line 744
    :cond_1bc
    :goto_1bc
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRadioState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1eb

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRadioState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 746
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRadioState:Landroid/util/SparseArray;

    .line 747
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setRadioState(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 748
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_1e8
    .catchall {:try_start_1 .. :try_end_1e8} :catchall_89

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bc

    .line 750
    :cond_1eb
    monitor-exit p0

    return-void

    :goto_1ed
    :try_start_1ed
    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_89

    throw v0
.end method

.method static blacklist roundSessionStart(J)I
    .registers 4

    const-wide/32 v0, 0x493e0

    .line 894
    div-long/2addr p0, v0

    const-wide/16 v0, 0x5

    mul-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static blacklist smsSessionEventToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_26

    .line 442
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 440
    :pswitch_8
    const-string p0, "INCOMPLETE_SMS_RECEIVED"

    return-object p0

    .line 438
    :pswitch_b
    const-string p0, "SMS_RECEIVED"

    return-object p0

    .line 436
    :pswitch_e
    const-string p0, "SMS_SEND_RESULT"

    return-object p0

    .line 434
    :pswitch_11
    const-string p0, "SMS_SEND"

    return-object p0

    .line 432
    :pswitch_14
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    .line 430
    :pswitch_17
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    .line 428
    :pswitch_1a
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    .line 426
    :pswitch_1d
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    .line 424
    :pswitch_20
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    .line 422
    :pswitch_23
    const-string p0, "EVENT_UNKNOWN"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized blacklist startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .registers 8

    monitor-enter p0

    .line 1061
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez v0, :cond_77

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting a new call session on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1069
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_45

    .line 1071
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1073
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1071
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_45

    :catchall_43
    move-exception p1

    goto :goto_79

    .line 1076
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_5e

    .line 1078
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1080
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1078
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1083
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz p1, :cond_77

    .line 1085
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1087
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p1

    .line 1085
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_43

    .line 1090
    :cond_77
    monitor-exit p0

    return-object v0

    :goto_79
    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_43

    throw p1
.end method

.method private blacklist startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .registers 8

    .line 1116
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    .line 1120
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_1e

    .line 1122
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1124
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1122
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1127
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_37

    .line 1129
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1131
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1129
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1134
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz p0, :cond_50

    .line 1136
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance p1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v3, 0x3

    invoke-direct {p1, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1138
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p0

    .line 1136
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    :cond_50
    return-object v0
.end method

.method private declared-synchronized blacklist startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .registers 4

    monitor-enter p0

    .line 1100
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez v0, :cond_2b

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting a new sms session on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception p1

    goto :goto_2d

    .line 1106
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-object v0

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_29

    throw p1
.end method

.method private static blacklist telephonyEventToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x16

    if-eq p0, v0, :cond_3a

    packed-switch p0, :pswitch_data_40

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :pswitch_10
    const-string p0, "CARRIER_ID_MATCHING"

    return-object p0

    .line 345
    :pswitch_13
    const-string p0, "NITZ_TIME"

    return-object p0

    .line 341
    :pswitch_16
    const-string p0, "MODEM_RESTART"

    return-object p0

    .line 339
    :pswitch_19
    const-string p0, "DATA_STALL_ACTION"

    return-object p0

    .line 337
    :pswitch_1c
    const-string p0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object p0

    .line 335
    :pswitch_1f
    const-string p0, "DATA_CALL_DEACTIVATE"

    return-object p0

    .line 333
    :pswitch_22
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    .line 331
    :pswitch_25
    const-string p0, "DATA_CALL_SETUP_RESPONSE"

    return-object p0

    .line 329
    :pswitch_28
    const-string p0, "DATA_CALL_SETUP"

    return-object p0

    .line 327
    :pswitch_2b
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    .line 325
    :pswitch_2e
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    .line 323
    :pswitch_31
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    .line 321
    :pswitch_34
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    .line 319
    :pswitch_37
    const-string p0, "UNKNOWN"

    return-object p0

    .line 349
    :cond_3a
    const-string p0, "NETWORK_CAPABILITIES_CHANGED"

    return-object p0

    .line 347
    :cond_3d
    const-string p0, "EMERGENCY_NUMBER_REPORT"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist toCallQualityProto(Landroid/telephony/CallQuality;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 4

    .line 2180
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    if-eqz p0, :cond_8d

    .line 2183
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getDownlinkCallQualityLevel()I

    move-result v1

    .line 2182
    invoke-static {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callQualityLevelToProtoEnum(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->downlinkLevel:I

    .line 2184
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getUplinkCallQualityLevel()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callQualityLevelToProtoEnum(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->uplinkLevel:I

    .line 2186
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getCallDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->durationInSeconds:I

    .line 2187
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpPacketsTransmitted()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmitted:I

    .line 2188
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpPacketsReceived()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsReceived:I

    .line 2189
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpPacketsTransmittedLost()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmittedLost:I

    .line 2190
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpPacketsNotReceived()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsNotReceived:I

    .line 2191
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getAverageRelativeJitter()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRelativeJitterMillis:I

    .line 2192
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getMaxRelativeJitter()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxRelativeJitterMillis:I

    .line 2193
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertImsCodec(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->codecType:I

    .line 2194
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->isRtpInactivityDetected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpInactivityDetected:Z

    .line 2195
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->isIncomingSilenceDetectedAtCallSetup()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxSilenceDetected:Z

    .line 2196
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->isOutgoingSilenceDetectedAtCallSetup()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->txSilenceDetected:Z

    .line 2197
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumVoiceFrames()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->voiceFrames:I

    .line 2198
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumNoDataFrames()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->noDataFrames:I

    .line 2199
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumDroppedRtpPackets()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDroppedPackets:I

    .line 2200
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getMinPlayoutDelayMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->minPlayoutDelayMillis:J

    .line 2201
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getMaxPlayoutDelayMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxPlayoutDelayMillis:J

    .line 2202
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpSidPacketsReceived()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxRtpSidPackets:I

    .line 2203
    invoke-virtual {p0}, Landroid/telephony/CallQuality;->getNumRtpDuplicatePackets()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDuplicatePackets:I

    :cond_8d
    return-object v0
.end method

.method private blacklist toCallSessionRilRequest(I)I
    .registers 4

    const/16 p0, 0xa

    if-eq p1, p0, :cond_37

    const/16 p0, 0x24

    if-eq p1, p0, :cond_35

    const/16 p0, 0x28

    if-eq p1, p0, :cond_33

    const/16 p0, 0x54

    if-eq p1, p0, :cond_31

    packed-switch p1, :pswitch_data_3a

    .line 1805
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown RIL request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :pswitch_2b
    const/4 p0, 0x7

    return p0

    :pswitch_2d
    const/4 p0, 0x5

    return p0

    :pswitch_2f
    const/4 p0, 0x3

    return p0

    :cond_31
    const/4 p0, 0x6

    return p0

    :cond_33
    const/4 p0, 0x2

    return p0

    :cond_35
    const/4 p0, 0x4

    return p0

    :cond_37
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_3a
    .packed-switch 0xc
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
    .end packed-switch
.end method

.method private blacklist toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 3

    .line 2160
    new-instance p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    if-eqz p1, :cond_1b

    .line 2162
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 2163
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 2164
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2166
    iput-object p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    :cond_1b
    return-object p0
.end method

.method static blacklist toPrivacyFuzzedTimeInterval(JJ)I
    .registers 4

    .line 0
    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-gez p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const-wide/16 p0, 0xa

    cmp-long p0, p2, p0

    if-gtz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const-wide/16 p0, 0x14

    cmp-long p0, p2, p0

    if-gtz p0, :cond_19

    const/4 p0, 0x2

    return p0

    :cond_19
    const-wide/16 p0, 0x32

    cmp-long p0, p2, p0

    if-gtz p0, :cond_21

    const/4 p0, 0x3

    return p0

    :cond_21
    const-wide/16 p0, 0x64

    cmp-long p0, p2, p0

    if-gtz p0, :cond_29

    const/4 p0, 0x4

    return p0

    :cond_29
    const-wide/16 p0, 0xc8

    cmp-long p0, p2, p0

    if-gtz p0, :cond_31

    const/4 p0, 0x5

    return p0

    :cond_31
    const-wide/16 p0, 0x1f4

    cmp-long p0, p2, p0

    if-gtz p0, :cond_39

    const/4 p0, 0x6

    return p0

    :cond_39
    const-wide/16 p0, 0x3e8

    cmp-long p0, p2, p0

    if-gtz p0, :cond_41

    const/4 p0, 0x7

    return p0

    :cond_41
    const-wide/16 p0, 0x7d0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_4a

    const/16 p0, 0x8

    return p0

    :cond_4a
    const-wide/16 p0, 0x1388

    cmp-long p0, p2, p0

    if-gtz p0, :cond_53

    const/16 p0, 0x9

    return p0

    :cond_53
    const-wide/16 p0, 0x2710

    cmp-long p0, p2, p0

    if-gtz p0, :cond_5c

    const/16 p0, 0xa

    return p0

    :cond_5c
    const-wide/16 p0, 0x7530

    cmp-long p0, p2, p0

    if-gtz p0, :cond_65

    const/16 p0, 0xb

    return p0

    :cond_65
    const-wide/32 p0, 0xea60

    cmp-long p0, p2, p0

    if-gtz p0, :cond_6f

    const/16 p0, 0xc

    return p0

    :cond_6f
    const-wide/32 p0, 0x2bf20

    cmp-long p0, p2, p0

    if-gtz p0, :cond_79

    const/16 p0, 0xd

    return p0

    :cond_79
    const-wide/32 p0, 0x927c0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_83

    const/16 p0, 0xe

    return p0

    :cond_83
    const-wide/32 p0, 0x1b7740

    cmp-long p0, p2, p0

    if-gtz p0, :cond_8d

    const/16 p0, 0xf

    return p0

    :cond_8d
    const-wide/32 p0, 0x36ee80

    cmp-long p0, p2, p0

    if-gtz p0, :cond_97

    const/16 p0, 0x10

    return p0

    :cond_97
    const-wide/32 p0, 0x6ddd00

    cmp-long p0, p2, p0

    if-gtz p0, :cond_a1

    const/16 p0, 0x11

    return p0

    :cond_a1
    const-wide/32 p0, 0xdbba00

    cmp-long p0, p2, p0

    if-gtz p0, :cond_ab

    const/16 p0, 0x12

    return p0

    :cond_ab
    const/16 p0, 0x13

    return p0
.end method

.method private blacklist toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 7

    .line 974
    new-instance p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 976
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 977
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 979
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 980
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 981
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 986
    :cond_35
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 991
    :cond_4b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 1000
    :cond_61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1001
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 1004
    new-instance v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;-><init>()V

    .line 1006
    iput v1, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    .line 1007
    iput v2, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->transport:I

    .line 1009
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 1008
    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    iput v1, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    .line 1010
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    .line 1013
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1016
    :cond_8f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 1017
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    .line 1018
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    .line 1019
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    .line 1020
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    return-object p0
.end method

.method private blacklist writeBandwidthEstimatorStatsRatList(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;",
            ">;"
        }
    .end annotation

    .line 2993
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2994
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    .line 2995
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->-$$Nest$mwriteBandwidthStats(Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object p0
.end method

.method private blacklist writeIncomingSmsSessionWithType(IIILjava/lang/String;[JZZJ)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 2490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logged SMS session consisting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " parts, source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " blocked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    invoke-static/range {p8 .. p9}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2490
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    move-object/from16 v5, p4

    .line 2496
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    xor-int/lit8 v7, p7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v5, v8, :cond_51

    goto :goto_52

    :cond_51
    move v6, v9

    .line 2499
    :goto_52
    invoke-direct {v0, v2, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getSmsTech(IZ)I

    move-result v2

    .line 2501
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v6

    .line 2503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2504
    :goto_5e
    array-length v8, v3

    if-ge v9, v8, :cond_96

    .line 2505
    new-instance v8, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v12, 0x8

    invoke-direct {v8, v12}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2507
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    .line 2508
    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    .line 2509
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    .line 2510
    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSmsType(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    .line 2511
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setBlocked(Z)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    move-wide/from16 v12, p8

    .line 2512
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v8

    if-lez v9, :cond_8d

    .line 2513
    aget-wide v14, v3, v9

    add-int/lit8 v16, v9, -0x1

    aget-wide v16, v3, v16

    sub-long v14, v14, v16

    goto :goto_8f

    :cond_8d
    const-wide/16 v14, 0x0

    :goto_8f
    add-long/2addr v14, v10

    .line 2514
    invoke-virtual {v6, v14, v15, v8}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    .line 2516
    :cond_96
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method private blacklist writeIncomingSmsWithType(IILjava/lang/String;Z)V
    .registers 7

    .line 2425
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2426
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2427
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2428
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSmsType(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    xor-int/lit8 p3, p4, 0x1

    .line 2429
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2426
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2431
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method private blacklist writeOnCallSolicitedResponse(IIII)V
    .registers 7

    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 1854
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeOnCallSolicitedResponse: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1856
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1858
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 1859
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    add-int/lit8 p3, p3, 0x1

    .line 1860
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 1856
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method private blacklist writeOnDeactivateDataCallResponse(II)V
    .registers 4

    .line 1933
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    add-int/lit8 p2, p2, 0x1

    .line 1934
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1933
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method private blacklist writeOnSetupDataCallResponse(IIIILandroid/telephony/data/DataCallResponse;)V
    .registers 7

    .line 1821
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1822
    new-instance p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {p3}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    if-eqz p5, :cond_3e

    .line 1825
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_15

    move p4, v0

    goto :goto_19

    .line 1826
    :cond_15
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p4

    :goto_19
    iput p4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status:I

    .line 1827
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result p4

    iput p4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis:I

    .line 1829
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p4

    iput p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1830
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result p4

    add-int/2addr p4, v0

    iput p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1832
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3e

    .line 1833
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    .line 1836
    :cond_3e
    iput-object p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1838
    new-instance p3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1839
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method private declared-synchronized blacklist writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .registers 9

    monitor-enter p0

    .line 1874
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez p1, :cond_15

    .line 1876
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "SMS session is missing"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :catchall_13
    move-exception p1

    goto :goto_42

    :cond_15
    if-eqz p4, :cond_1c

    .line 1881
    iget v0, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1882
    iget-wide v1, p4, Lcom/android/internal/telephony/SmsResponse;->mMessageId:J

    goto :goto_1f

    :cond_1c
    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    .line 1885
    :goto_1f
    new-instance p4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v3, 0x7

    invoke-direct {p4, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1887
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    .line 1888
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 1889
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1890
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1885
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1893
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1894
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_13

    .line 1896
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_13

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    if-eqz p3, :cond_7a

    .line 281
    :try_start_3
    array-length p1, p3

    if-lez p1, :cond_7a

    .line 283
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1a

    const-string p1, "--keep"

    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v0

    goto :goto_1b

    :catchall_17
    move-exception p1

    goto/16 :goto_78

    :cond_1a
    move p1, v1

    .line 287
    :goto_1b
    aget-object p3, p3, v0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x746ad8dd

    const/4 v4, 0x2

    if-eq v2, v3, :cond_46

    const v0, 0x1ea00b52

    if-eq v2, v0, :cond_3c

    const v0, 0x38a4a0a5

    if-eq v2, v0, :cond_32

    goto :goto_4f

    :cond_32
    const-string v0, "--metricsproto"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    move v0, v1

    goto :goto_50

    :cond_3c
    const-string v0, "--metricsprototext"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    move v0, v4

    goto :goto_50

    :cond_46
    const-string v2, "--metrics"

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v0, -0x1

    :goto_50
    if-eqz v0, :cond_74

    if-eq v0, v1, :cond_63

    if-eq v0, v4, :cond_57

    goto :goto_7a

    .line 298
    :cond_57
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7a

    .line 292
    :cond_63
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_7a

    .line 294
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    goto :goto_7a

    .line 289
    :cond_74
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    goto :goto_7a

    .line 281
    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_17

    throw p1

    .line 302
    :cond_7a
    :goto_7a
    monitor-exit p0

    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized blacklist updateActiveSubscriptionInfoList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 840
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 841
    :goto_8
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 842
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_20
    move-exception p1

    goto/16 :goto_c9

    .line 845
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 846
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 847
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 848
    new-instance v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    .line 849
    iput v3, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    .line 850
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    .line 851
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 852
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_77

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    .line 855
    :cond_77
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 856
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 855
    invoke-static {v2, v4}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/android/internal/telephony/protobuf/nano/MessageNano;Lcom/android/internal/telephony/protobuf/nano/MessageNano;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 857
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 858
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 857
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 860
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_27

    .line 864
    :cond_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_9f
    if-ge v1, p1, :cond_c7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 865
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 867
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 866
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_c6
    .catchall {:try_start_1 .. :try_end_c6} :catchall_20

    goto :goto_9f

    .line 869
    :cond_c7
    monitor-exit p0

    return-void

    :goto_c9
    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_20

    throw p1
.end method

.method public blacklist updateEnabledModemBitmap(I)V
    .registers 3

    .line 873
    iget v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    if-ne v0, p1, :cond_5

    return-void

    .line 874
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 875
    new-instance p1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 876
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist updateSimState(II)V
    .registers 5

    .line 829
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mapSimStateToProto(I)I

    move-result p2

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    .line 831
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 832
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    .line 834
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 833
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeAudioCodecGsmCdma(II)V
    .registers 5

    .line 2886
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 2888
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2892
    :cond_12
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertGsmCdmaCodec(I)I

    move-result p2

    .line 2893
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2895
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v0

    .line 2893
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logged Audio Codec event. Value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 6

    .line 2861
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 2863
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2867
    :cond_12
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2869
    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertImsCodec(I)I

    move-result v0

    .line 2870
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2872
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2873
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2870
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Logged Audio Codec event. Value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public declared-synchronized blacklist writeBandwidthStats(IIIIIII)V
    .registers 12

    monitor-enter p0

    .line 2964
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->lookupEstimationStats(III)Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;

    move-result-object p1

    .line 2965
    iget-object p2, p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwEstErrorAcc:[J

    aget-wide v0, p2, p4

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-long v2, p3

    add-long/2addr v0, v2

    aput-wide v0, p2, p4

    .line 2966
    iget-object p2, p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mStaticBwErrorAcc:[J

    aget-wide v0, p2, p4

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-long p5, p3

    add-long/2addr v0, p5

    aput-wide v0, p2, p4

    .line 2967
    iget-object p2, p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwAccKbps:[J

    aget-wide p5, p2, p4

    int-to-long v0, p7

    add-long/2addr p5, v0

    aput-wide p5, p2, p4

    .line 2968
    iget-object p1, p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    aget p2, p1, p4

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, p4
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 2969
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public blacklist writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V
    .registers 10

    .line 2640
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    .line 2641
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    const/4 v2, -0x1

    if-eq p3, v2, :cond_16

    .line 2646
    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    if-eqz p5, :cond_1a

    .line 2649
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 2650
    iput-object p5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    goto :goto_1a

    :cond_16
    if-eqz p4, :cond_1a

    .line 2655
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 2660
    :cond_1a
    :goto_1a
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 2661
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    .line 2662
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    .line 2663
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    .line 2664
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    .line 2665
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    .line 2666
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    .line 2667
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/util/TelephonyUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    .line 2668
    iget-object p3, p6, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    if-eqz p3, :cond_6f

    .line 2670
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    .line 2673
    :cond_6f
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    .line 2674
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 2676
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    .line 2677
    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 2678
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2679
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeCarrierKeyEvent(IIZ)V
    .registers 5

    .line 906
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    .line 907
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 908
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 909
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 910
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeDataStallEvent(II)V
    .registers 4

    .line 1243
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1244
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeDataSwitch(ILcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)V
    .registers 4

    .line 1988
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 1989
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V
    .registers 7

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logged dropped multipart SMS: received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 2402
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    .line 2403
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    .line 2404
    iput p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    .line 2406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2407
    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2409
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2410
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setIncompleteSms(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2407
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method public blacklist writeEmergencyNumberUpdateEvent(ILandroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 2693
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertEmergencyNumberToEmergencyNumberInfo(Landroid/telephony/emergency/EmergencyNumber;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    move-result-object p2

    .line 2695
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setUpdatedEmergencyNumber(Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 2696
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 2697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .registers 6

    .line 2070
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_4a

    const/4 p3, 0x0

    goto :goto_20

    :pswitch_d
    const/16 p3, 0x9

    goto :goto_20

    :pswitch_10
    const/16 p3, 0x8

    goto :goto_20

    :pswitch_13
    const/4 p3, 0x7

    goto :goto_20

    :pswitch_15
    const/4 p3, 0x6

    goto :goto_20

    :pswitch_17
    const/4 p3, 0x5

    goto :goto_20

    :pswitch_19
    const/4 p3, 0x4

    goto :goto_20

    :pswitch_1b
    const/4 p3, 0x3

    goto :goto_20

    :pswitch_1d
    const/4 p3, 0x2

    goto :goto_20

    :pswitch_1f
    const/4 p3, 0x1

    .line 2093
    :goto_20
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_32

    .line 2095
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2097
    :cond_32
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2099
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2100
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2097
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void

    nop

    :pswitch_data_4a
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

.method public declared-synchronized blacklist writeImsServiceSendSms(ILjava/lang/String;IJ)V
    .registers 8

    monitor-enter p0

    .line 2336
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2337
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    const/4 v1, 0x3

    .line 2338
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v0

    .line 2339
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2340
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2341
    invoke-virtual {p2, p4, p5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2337
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2344
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 2345
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized blacklist writeImsSetFeatureValue(IIII)V
    .registers 9

    monitor-enter p0

    .line 1282
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->cloneCurrentTelephonySettings(I)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_1e

    if-eq p2, v3, :cond_18

    if-eq p2, v1, :cond_f

    goto :goto_30

    :cond_f
    if-eqz p4, :cond_12

    move v2, v3

    .line 1289
    :cond_12
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_30

    :catchall_15
    move-exception p1

    goto/16 :goto_83

    :cond_18
    if-eqz p4, :cond_1b

    move v2, v3

    .line 1286
    :cond_1b
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    goto :goto_30

    :cond_1e
    if-ne p3, v3, :cond_30

    if-eq p2, v3, :cond_2b

    if-eq p2, v1, :cond_25

    goto :goto_30

    :cond_25
    if-eqz p4, :cond_28

    move v2, v3

    .line 1298
    :cond_28
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_30

    :cond_2b
    if-eqz p4, :cond_2e

    move v2, v3

    .line 1295
    :cond_2e
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1304
    :cond_30
    :goto_30
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_50

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 1305
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1306
    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1305
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_15

    if-eqz p2, :cond_50

    .line 1307
    monitor-exit p0

    return-void

    .line 1310
    :cond_50
    :try_start_50
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1312
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1313
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1315
    iget-wide p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1317
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1315
    invoke-direct {p0, p3, p4, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1318
    iget-wide p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p4, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1320
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p4

    .line 1318
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_81
    .catchall {:try_start_50 .. :try_end_81} :catchall_15

    .line 1321
    monitor-exit p0

    return-void

    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_15

    throw p1
.end method

.method public blacklist writeIncomingSMSPP(ILjava/lang/String;Z)V
    .registers 6

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logged SMS-PP session. Result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2444
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public blacklist writeIncomingSmsError(IZII)V
    .registers 8

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming SMS error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p4, v0, :cond_48

    const/4 v1, 0x3

    if-eq p4, v1, :cond_22

    const/4 v1, 0x4

    if-eq p4, v1, :cond_1f

    move p4, v0

    goto :goto_24

    :cond_1f
    const/16 p4, 0x18

    goto :goto_24

    :cond_22
    const/16 p4, 0xd

    .line 2582
    :goto_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2584
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    if-eqz p2, :cond_32

    const/4 v0, 0x2

    .line 2586
    :cond_32
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v0

    .line 2589
    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getSmsTech(IZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2590
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2591
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    :cond_48
    return-void
.end method

.method public blacklist writeIncomingSmsSession(IILjava/lang/String;[JZJ)V
    .registers 18

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-wide/from16 v8, p6

    .line 2549
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSessionWithType(IIILjava/lang/String;[JZZJ)V

    return-void
.end method

.method public blacklist writeIncomingSmsTypeZero(ILjava/lang/String;)V
    .registers 5

    .line 2469
    const-string v0, "Logged Type-0 SMS message."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2470
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public blacklist writeIncomingVoiceMailSms(ILjava/lang/String;)V
    .registers 5

    .line 2456
    const-string v0, "Logged VoiceMail message."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2457
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public blacklist writeIncomingWapPush(IILjava/lang/String;[JZJ)V
    .registers 18

    const/4 v2, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move-wide/from16 v8, p6

    .line 2532
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSessionWithType(IIILjava/lang/String;[JZZJ)V

    return-void
.end method

.method public blacklist writeModemRestartEvent(ILjava/lang/String;)V
    .registers 5

    .line 2618
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    .line 2619
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2620
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion:Ljava/lang/String;

    :cond_d
    if-eqz p2, :cond_11

    .line 2621
    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->reason:Ljava/lang/String;

    .line 2622
    :cond_11
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 2623
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 2624
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeNITZEvent(IJ)V
    .registers 8

    .line 2602
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 2603
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 2605
    iget-wide v0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2608
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2605
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeNetworkCapabilitiesChangedEvent(ILandroid/net/NetworkCapabilities;)V
    .registers 5

    .line 2708
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    const/16 v1, 0x19

    .line 2709
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    .line 2712
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 2713
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNetworkCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 2714
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastNetworkCapabilitiesInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2715
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeNetworkValidate(I)V
    .registers 3

    .line 1978
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    .line 1979
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNetworkValidate(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1978
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public declared-synchronized blacklist writeNewCBSms(IIIZZIIJ)V
    .registers 11

    monitor-enter p0

    .line 2362
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p4, :cond_a

    const/4 p4, 0x2

    goto :goto_f

    :cond_a
    if-eqz p5, :cond_e

    move p4, v0

    goto :goto_f

    :cond_e
    const/4 p4, 0x3

    .line 2373
    :goto_f
    new-instance p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {p5}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    .line 2374
    iput p2, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    add-int/2addr p3, v0

    .line 2375
    iput p3, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    .line 2376
    iput p4, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    .line 2377
    iput p6, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    .line 2378
    iput p7, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    .line 2379
    iput-wide p8, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    .line 2381
    new-instance p2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2382
    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2381
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2385
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 2386
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist writeOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)V
    .registers 3

    .line 1997
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    .line 1998
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 2288
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2290
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2292
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2293
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2294
    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2295
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2290
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallInitiating(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 5

    .line 2126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 2128
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2130
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2128
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 5

    .line 2111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 2113
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2115
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    const/4 p2, 0x1

    .line 2116
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2113
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/metrics/CallQualityMetrics;Landroid/telephony/emergency/EmergencyNumber;Ljava/lang/String;I)V
    .registers 11

    .line 2244
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 2246
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2248
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2250
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 2251
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    if-eqz p4, :cond_38

    .line 2254
    invoke-virtual {p4}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;->getCallQualitySummaryDl()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallQualitySummaryDl(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2255
    invoke-virtual {p4}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;->getCallQualitySummaryUl()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallQualitySummaryUl(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    :cond_38
    if-eqz p5, :cond_5c

    .line 2260
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const-wide/16 p3, 0x0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p2, p3, p4, v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p2

    .line 2261
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getSamplePercentageForEmergencyCall(Ljava/lang/String;)D

    move-result-wide v1

    cmpg-double p2, p2, v1

    if-gez p2, :cond_5c

    const/4 p2, 0x1

    .line 2262
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setIsImsEmergencyCall(Z)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 2264
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertEmergencyNumberToEmergencyNumberInfo(Landroid/telephony/emergency/EmergencyNumber;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    move-result-object p0

    .line 2263
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsEmergencyNumberInfo(Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 2265
    invoke-virtual {v0, p7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setEmergencyNumberDatabaseVersion(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 2269
    :cond_5c
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized blacklist writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 8

    monitor-enter p0

    .line 1403
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez p2, :cond_20

    .line 1406
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 1408
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 1410
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_34

    :catchall_1e
    move-exception p1

    goto :goto_8b

    :cond_20
    if-ne p2, v2, :cond_34

    .line 1414
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 1416
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 1418
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    .line 1422
    :cond_34
    :goto_34
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1425
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_61

    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 1426
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1427
    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1426
    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_1e

    if-eqz p3, :cond_61

    .line 1428
    monitor-exit p0

    return-void

    .line 1431
    :cond_61
    :try_start_61
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1432
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1434
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {p3, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1437
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p3

    .line 1434
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1438
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p3, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1441
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1438
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_1e

    .line 1442
    monitor-exit p0

    return-void

    :goto_8b
    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_1e

    throw p1
.end method

.method public blacklist writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    .registers 6

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 2144
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2146
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2148
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2149
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2146
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized blacklist writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    monitor-enter p0

    .line 1355
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    .line 1356
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz p3, :cond_28

    .line 1359
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1361
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1362
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1363
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_26

    .line 1365
    iput-object p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_80

    .line 1368
    :cond_26
    :goto_26
    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1372
    :cond_28
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_48

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 1373
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1374
    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1373
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_24

    if-eqz p2, :cond_48

    .line 1375
    monitor-exit p0

    return-void

    .line 1378
    :cond_48
    :try_start_48
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1380
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1381
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1382
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1384
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x3

    invoke-direct {p3, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1387
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p3

    .line 1384
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1388
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p3, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1391
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1388
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_7e
    .catchall {:try_start_48 .. :try_end_7e} :catchall_24

    .line 1392
    monitor-exit p0

    return-void

    :goto_80
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist writeOnImsServiceSmsSolicitedResponse(IIIJ)V
    .registers 8

    monitor-enter p0

    .line 1909
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez p1, :cond_15

    .line 1911
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "SMS session is missing"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catchall_13
    move-exception p1

    goto :goto_32

    .line 1914
    :cond_15
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1916
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1917
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1918
    invoke-virtual {p2, p4, p5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1914
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1921
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1922
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_13

    .line 1924
    :goto_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_13

    throw p1
.end method

.method public blacklist writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .registers 7

    const/16 v0, 0xa

    if-eq p4, v0, :cond_2b

    const/16 v0, 0x57

    if-eq p4, v0, :cond_25

    const/16 v0, 0x71

    if-eq p4, v0, :cond_25

    const/16 v0, 0x28

    if-eq p4, v0, :cond_2b

    const/16 v0, 0x29

    if-eq p4, v0, :cond_21

    packed-switch p4, :pswitch_data_30

    packed-switch p4, :pswitch_data_3a

    return-void

    .line 1950
    :pswitch_1b
    check-cast p5, Landroid/telephony/data/DataCallResponse;

    .line 1951
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILandroid/telephony/data/DataCallResponse;)V

    return-void

    .line 1954
    :cond_21
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    return-void

    .line 1967
    :cond_25
    :pswitch_25
    check-cast p5, Lcom/android/internal/telephony/SmsResponse;

    .line 1968
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    return-void

    .line 1961
    :cond_2b
    :pswitch_2b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    return-void

    nop

    :pswitch_data_30
    .packed-switch 0xc
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x19
        :pswitch_25
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method

.method public blacklist writeOnRilTimeoutResponse(III)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 5

    .line 2009
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    const/4 v1, 0x3

    if-eq p2, v1, :cond_14

    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    move v1, v0

    .line 2024
    :cond_14
    :goto_14
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_26

    .line 2026
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writePhoneState: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2031
    :cond_26
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->setLastKnownPhoneState(I)V

    if-ne v1, v0, :cond_34

    .line 2033
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->containsCsCalls()Z

    move-result p2

    if-nez p2, :cond_34

    .line 2034
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 2036
    :cond_34
    new-instance p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 p2, 0x14

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2038
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p0

    .line 2036
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeRadioState(II)V
    .registers 5

    .line 2720
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertRadioState(I)I

    move-result p2

    .line 2721
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setRadioState(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 2722
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRadioState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2723
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeRilAnswer(II)V
    .registers 4

    .line 1746
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p0, :cond_12

    .line 1748
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeRilAnswer: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1750
    :cond_12
    new-instance p1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v0, 0x2

    .line 1752
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p1

    .line 1753
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p1

    .line 1750
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging CallList Changed Connections Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    if-nez p1, :cond_26

    .line 1569
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeRilCallList: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1571
    :cond_26
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionsToRilCalls(Ljava/util/ArrayList;Ljava/lang/String;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object p2

    .line 1572
    new-instance p3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v0, 0xa

    invoke-direct {p3, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1575
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p3

    .line 1572
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1577
    const-string p3, "Logged Call list changed"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isPhoneIdle()Z

    move-result p3

    if-eqz p3, :cond_4c

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 1579
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    :cond_4c
    return-void
.end method

.method public blacklist writeRilCallRing(I[C)V
    .registers 5

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p0

    .line 1710
    iget-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public blacklist writeRilDataCallEvent(IIII)V
    .registers 8

    .line 1534
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    filled-new-array {v0}, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v0

    const/4 v1, 0x0

    .line 1535
    aget-object v2, v0, v1

    iput p2, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1536
    iput p3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    .line 1537
    iput p4, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    .line 1540
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_50

    .line 1542
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_47

    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    .line 1544
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    aget-object p4, v0, v1

    .line 1545
    invoke-static {p4}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p4

    .line 1543
    invoke-static {p3, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_47

    return-void

    .line 1548
    :cond_47
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    goto :goto_55

    .line 1550
    :cond_50
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 1553
    :goto_55
    aget-object p4, v0, v1

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1554
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1555
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeRilDeactivateDataCall(IIII)V
    .registers 5

    .line 1504
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 1505
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    const/4 p3, 0x1

    if-eq p4, p3, :cond_1b

    const/4 p3, 0x2

    if-eq p4, p3, :cond_18

    const/4 p3, 0x3

    if-eq p4, p3, :cond_14

    const/4 p3, 0x0

    .line 1517
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_1d

    :cond_14
    const/4 p3, 0x4

    .line 1514
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_1d

    .line 1511
    :cond_18
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_1d

    .line 1508
    :cond_1b
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1520
    :goto_1d
    new-instance p3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 1521
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1520
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V
    .registers 7

    .line 1684
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 1685
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Logging Dial Connection = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    if-nez p1, :cond_22

    .line 1687
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeRilDial: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1690
    :cond_22
    new-instance p3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {p3}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    filled-new-array {p3}, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object p3

    const/4 p4, 0x0

    .line 1691
    aget-object p4, p3, p4

    const/4 v0, -0x1

    iput v0, p4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1692
    const-string v0, ""

    invoke-direct {p0, p2, p4, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;Ljava/lang/String;)V

    .line 1693
    iget-wide v0, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 p4, 0x6

    invoke-direct {p2, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 p4, 0x1

    .line 1695
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1696
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1693
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1697
    const-string p1, "Logged Dial event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V
    .registers 7

    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_12

    .line 1725
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeRilHangup: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1728
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    filled-new-array {v0}, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    const/4 v1, 0x0

    .line 1729
    aget-object v1, v0, v1

    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1730
    invoke-direct {p0, p2, v1, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;Ljava/lang/String;)V

    .line 1731
    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 p3, 0x3

    .line 1733
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1734
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1731
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1735
    const-string p1, "Logged Hangup event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized blacklist writeRilSendSms(IIIIJ)V
    .registers 9

    monitor-enter p0

    .line 2311
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2313
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2314
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2315
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2316
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2317
    invoke-virtual {p2, p5, p6}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2313
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2320
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 2321
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public blacklist writeRilSrvcc(II)V
    .registers 4

    .line 1764
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p0, :cond_12

    .line 1766
    sget-object p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p1, "writeRilSrvcc: Call session is missing"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1768
    :cond_12
    new-instance p1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    add-int/lit8 p2, p2, 0x1

    .line 1770
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p1

    .line 1768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized blacklist writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .registers 8

    monitor-enter p0

    .line 1213
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1214
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 1218
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1219
    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1218
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_34

    if-eqz v0, :cond_36

    .line 1220
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    goto :goto_63

    .line 1223
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1226
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1229
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1226
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1230
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1233
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1230
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_61
    .catchall {:try_start_36 .. :try_end_61} :catchall_34

    .line 1234
    monitor-exit p0

    return-void

    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_34

    throw p1
.end method

.method public declared-synchronized blacklist writeSetPreferredNetworkType(II)V
    .registers 5

    monitor-enter p0

    .line 1331
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->cloneCurrentTelephonySettings(I)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    .line 1332
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1335
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 1336
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1337
    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1336
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_29

    if-eqz p2, :cond_2b

    .line 1338
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    goto :goto_42

    .line 1341
    :cond_2b
    :try_start_2b
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1343
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_29

    .line 1344
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_29

    throw p1
.end method

.method public blacklist writeSetupDataCall(IIILjava/lang/String;I)V
    .registers 7

    .line 1481
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 1482
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    add-int/lit8 p3, p3, 0x1

    .line 1483
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    if-eqz p4, :cond_f

    .line 1485
    iput-object p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    :cond_f
    add-int/lit8 p5, p5, 0x1

    .line 1488
    iput p5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    .line 1490
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 1491
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public blacklist writeSignalStrengthEvent(II)V
    .registers 4

    .line 1254
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1255
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSignalStrength(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method
