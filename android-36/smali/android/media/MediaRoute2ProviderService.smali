.class public abstract Landroid/media/MediaRoute2ProviderService;
.super Landroid/app/Service;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;,
        Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;,
        Landroid/media/MediaRoute2ProviderService$MediaStreams;,
        Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;,
        Landroid/media/MediaRoute2ProviderService$Reason;
    }
.end annotation


# static fields
.field public static final blacklist CATEGORY_SELF_SCAN_ONLY:Ljava/lang/String; = "android.media.MediaRoute2ProviderService.SELF_SCAN_ONLY"

.field public static final blacklist CATEGORY_SYSTEM_MEDIA:Ljava/lang/String; = "android.media.MediaRoute2ProviderService.SYSTEM_MEDIA"

.field private static final blacklist DEBUG:Z

.field private static final blacklist MAX_REQUEST_IDS_SIZE:I = 0x1f4

.field public static final blacklist REASON_FAILED_TO_REROUTE_SYSTEM_MEDIA:I = 0x6

.field public static final whitelist REASON_INVALID_COMMAND:I = 0x4

.field public static final whitelist REASON_NETWORK_ERROR:I = 0x2

.field public static final whitelist REASON_REJECTED:I = 0x1

.field public static final whitelist REASON_ROUTE_NOT_AVAILABLE:I = 0x3

.field public static final blacklist REASON_UNIMPLEMENTED:I = 0x5

.field public static final whitelist REASON_UNKNOWN_ERROR:I = 0x0

.field public static final whitelist REQUEST_ID_NONE:J = 0x0L

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRoute2ProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "MR2ProviderService"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOngoingMediaStreams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2ProviderService$MediaStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingSystemSessionReleases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field private blacklist mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

.field private final blacklist mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestIdsLock:Ljava/lang/Object;

.field private final blacklist mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionLock:Ljava/lang/Object;

.field private final blacklist mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

.field private final blacklist mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$BAMtUqlalAVo5pA_dMO3XaM2BP8(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->updateSessions()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CMAn32GoLb2qbfqbLFNlWpeRyfM(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->publishState()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ln8ToHZmL2yO9OXM6r_nlFcC1LU(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->lambda$notifySystemRoutingSessionCreated$0(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OyGclWI2aX_biYfQaeJNr1g4BXc(Landroid/media/MediaRoute2ProviderService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->lambda$onCreateSystemRoutingSession$1(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOngoingMediaStreams(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSystemSessionReleases(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestIdsLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemRoutingSessionCreationRequests(Landroid/media/MediaRoute2ProviderService;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeReleaseMediaStreams(Landroid/media/MediaRoute2ProviderService;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    const-string v0, "MR2ProviderService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 228
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 206
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    .line 214
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    .line 218
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    .line 224
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 230
    return-void
.end method

.method private blacklist addRequestId(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 872
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_12

    .line 874
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 876
    :cond_12
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 877
    monitor-exit v0

    .line 878
    return-void

    .line 877
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private synthetic blacklist lambda$notifySystemRoutingSessionCreated$0(Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 438
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaRoute2ProviderService;->onReleaseSession(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreateSystemRoutingSession$1(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 685
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRoute2ProviderService;->notifyRequestFailed(JI)V

    return-void
.end method

.method static synthetic blacklist lambda$updateSessions$2(Ljava/util/List;Landroid/media/MediaRoute2ProviderService$MediaStreams;)V
    .registers 3
    .param p0, "sessions"    # Ljava/util/List;
    .param p1, "it"    # Landroid/media/MediaRoute2ProviderService$MediaStreams;

    .line 855
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 566
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 567
    return-object v1

    .line 569
    :cond_8
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_b
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderService$MediaStreams;

    .line 571
    .local v2, "streams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    if-eqz v2, :cond_26

    .line 572
    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioPolicy(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v1

    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroid/media/MediaRoute2ProviderService;->releaseAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)V

    .line 574
    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 576
    .end local v2    # "streams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    :cond_26
    monitor-exit v0

    .line 577
    return-object v1

    .line 576
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private blacklist populateAudioStream(Landroid/media/AudioFormat;ILandroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V
    .registers 13
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "uid"    # I
    .param p3, "builder"    # Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    .line 457
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 459
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 461
    invoke-virtual {v2, v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    .line 462
    .local v1, "audioMixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    const/4 v2, -0x1

    if-eq p2, v2, :cond_22

    .line 463
    const/4 v2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 465
    :cond_22
    new-instance v2, Landroid/media/audiopolicy/AudioMix$Builder;

    .line 466
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 467
    invoke-virtual {v2, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 468
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 469
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v2

    .line 470
    .local v2, "mix":Landroid/media/audiopolicy/AudioMix;
    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$Builder;

    invoke-direct {v3, p0}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 471
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v3

    .line 472
    .local v3, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/media/MediaRoute2ProviderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 473
    .local v4, "audioManager":Landroid/media/AudioManager;
    const-string v5, "MR2ProviderService"

    if-nez v4, :cond_61

    .line 474
    const-string v6, "Couldn\'t fetch the audio manager."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 477
    :cond_61
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v6

    .line 478
    .local v6, "audioPolicyResult":I
    if-eqz v6, :cond_6d

    .line 479
    const-string v7, "Failed to register the audio policy."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_6d
    invoke-virtual {v3, v2}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v7

    .line 483
    .local v7, "audioRecord":Landroid/media/AudioRecord;
    if-nez v7, :cond_7c

    .line 484
    const-string v8, "Audio record creation failed."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 486
    return-void

    .line 488
    :cond_7c
    invoke-virtual {p3, v3, v7}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->setAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    .line 489
    return-void
.end method

.method private blacklist publishState()V
    .registers 4

    .line 817
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 818
    return-void

    .line 821
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 822
    return-void

    .line 825
    :cond_10
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    if-nez v0, :cond_15

    .line 826
    return-void

    .line 830
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 833
    goto :goto_25

    .line 831
    :catch_1d
    move-exception v0

    .line 832
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderService"

    const-string v2, "Failed to publish provider state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private blacklist releaseAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)V
    .registers 4
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p2, "audioRecord"    # Landroid/media/AudioRecord;

    .line 583
    if-nez p1, :cond_3

    .line 584
    return-void

    .line 586
    :cond_3
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/MediaRoute2ProviderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 587
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_e

    .line 588
    return-void

    .line 590
    :cond_e
    invoke-virtual {p2}, Landroid/media/AudioRecord;->stop()V

    .line 591
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 592
    return-void
.end method

.method private blacklist removeRequestId(J)Z
    .registers 6
    .param p1, "requestId"    # J

    .line 892
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 894
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist updateSessions()V
    .registers 5

    .line 843
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 844
    return-void

    .line 847
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 848
    return-void

    .line 852
    :cond_10
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 854
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 855
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 857
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_42

    .line 860
    :try_start_33
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionsUpdated(Ljava/util/List;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 863
    goto :goto_41

    .line 861
    :catch_39
    move-exception v0

    .line 862
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2ProviderService"

    const-string v3, "Failed to notify session info changed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_41
    return-void

    .line 857
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method


# virtual methods
.method public final whitelist getAllSessionInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 295
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final whitelist getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 283
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1

    .line 281
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyRequestFailed(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 607
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_5

    .line 608
    return-void

    .line 611
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    const-string v1, "MR2ProviderService"

    if-nez v0, :cond_24

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRequestFailed: The requestId doesn\'t exist. requestId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    .line 618
    :cond_24
    :try_start_24
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyRequestFailed(JI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 621
    goto :goto_30

    .line 619
    :catch_2a
    move-exception v0

    .line 620
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Failed to notify that the request has failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public final whitelist notifyRoutes(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 769
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 772
    .local v0, "sanitizedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 773
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 774
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->supportsRemoteRouting()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 775
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->supportsSystemMediaRouting()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 776
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_54

    .line 777
    :cond_3b
    nop

    .line 782
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 778
    const-string v3, "Route with id=\'%s\' name=\'%s\' supports both system media and remote type routing, but doesn\'t contain a deduplication id, which it needs. You can add the route id as a deduplication id."

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 785
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_54
    :goto_54
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->isSystemRouteType()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to add a system route type from a non-system route provider. Overriding type to TYPE_UNKNOWN. Route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MR2ProviderService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v3, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 793
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v3

    .line 794
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v3

    .line 791
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 796
    :cond_84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    :goto_87
    goto :goto_12

    .line 800
    :cond_88
    new-instance v1, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 801
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 802
    return-void
.end method

.method public final whitelist notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 9
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 314
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 317
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    if-nez v0, :cond_50

    .line 322
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: The requestId doesn\'t exist. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_50
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_57
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 329
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionCreated: Ignoring duplicate session id."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    monitor-exit v1

    return-void

    .line 332
    :cond_68
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_77

    .line 335
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_87

    return-void

    .line 338
    :cond_77
    :try_start_77
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7c} :catch_7d
    .catchall {:try_start_77 .. :try_end_7c} :catchall_87

    .line 341
    goto :goto_85

    .line 339
    :catch_7d
    move-exception v2

    .line 340
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_7e
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session created."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_85
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_87
    move-exception v2

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_87

    throw v2
.end method

.method public final whitelist notifySessionReleased(Ljava/lang/String;)V
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 527
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 528
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionReleased: Releasing session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_22
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_25
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 534
    .local v1, "sessionInfo":Landroid/media/RoutingSessionInfo;
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 535
    if-nez v1, :cond_3a

    .line 536
    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    move-object v1, v2

    .line 538
    :cond_3a
    if-nez v1, :cond_45

    .line 539
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    move-object v1, v2

    .line 542
    :cond_45
    if-nez v1, :cond_50

    .line 543
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionReleased: Ignoring unknown session info."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    monitor-exit v0

    return-void

    .line 547
    :cond_50
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_56

    .line 548
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_66

    return-void

    .line 551
    :cond_56
    :try_start_56
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v2, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_66

    .line 554
    goto :goto_64

    .line 552
    :catch_5c
    move-exception v2

    .line 553
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_5d
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session released."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_64
    monitor-exit v0

    .line 556
    return-void

    .line 555
    .end local v1    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_66

    throw v1

    .line 525
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 496
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 498
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 499
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionUpdated: Updating session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_21
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_28
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderService$MediaStreams;

    .line 505
    .local v2, "mediaStreams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 506
    invoke-static {v2, p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fputmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;Landroid/media/RoutingSessionInfo;)V

    goto :goto_49

    .line 507
    :cond_3c
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 508
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .end local v2    # "mediaStreams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_57

    .line 514
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 515
    return-void

    .line 510
    .restart local v2    # "mediaStreams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    :cond_4e
    :try_start_4e
    const-string v3, "MR2ProviderService"

    const-string v4, "notifySessionUpdated: Ignoring unknown session info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    monitor-exit v1

    return-void

    .line 513
    .end local v2    # "mediaStreams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_57

    throw v2
.end method

.method public final blacklist notifySystemRoutingSessionCreated(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;)Landroid/media/MediaRoute2ProviderService$MediaStreams;
    .registers 15
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p4, "formats"    # Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;

    .line 376
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    const-string v0, "formats must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 379
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySystemRoutingSessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_30
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 390
    .local v1, "uid":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 391
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_11e

    .line 393
    if-eqz v1, :cond_fb

    .line 401
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-eqz v0, :cond_f3

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "routingTypes":I
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 407
    .local v2, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    .local v4, "selectedRouteId":Ljava/lang/String;
    iget-object v5, v2, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 409
    .local v5, "route":Landroid/media/MediaRoute2Info;
    if-eqz v5, :cond_6e

    .line 413
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v6

    or-int/2addr v0, v6

    .line 414
    .end local v4    # "selectedRouteId":Ljava/lang/String;
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_52

    .line 410
    .restart local v4    # "selectedRouteId":Ljava/lang/String;
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    :cond_6e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid selected route with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    .end local v4    # "selectedRouteId":Ljava/lang/String;
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    :cond_87
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_eb

    .line 423
    invoke-static {p4}, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;->-$$Nest$fgetmAudioFormat(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;)Landroid/media/AudioFormat;

    move-result-object v3

    .line 424
    .local v3, "audioFormat":Landroid/media/AudioFormat;
    new-instance v4, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    invoke-direct {v4, p3}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 425
    .local v4, "mediaStreamsBuilder":Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;
    if-eqz v3, :cond_9d

    .line 426
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v3, v5, v4}, Landroid/media/MediaRoute2ProviderService;->populateAudioStream(Landroid/media/AudioFormat;ILandroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V

    .line 430
    :cond_9d
    invoke-virtual {v4}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->build()Landroid/media/MediaRoute2ProviderService$MediaStreams;

    move-result-object v5

    .line 431
    .local v5, "streams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    invoke-static {v5}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/AudioRecord;

    move-result-object v6

    .line 432
    .local v6, "audioRecord":Landroid/media/AudioRecord;
    if-nez v6, :cond_cf

    .line 433
    const-string v7, "MR2ProviderService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Audio record is not populated. Returning an empty stream and scheduling the session release for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v7, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, p3}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    const/4 v7, 0x6

    invoke-virtual {p0, p1, p2, v7}, Landroid/media/MediaRoute2ProviderService;->notifyRequestFailed(JI)V

    .line 440
    const/4 v7, 0x0

    return-object v7

    .line 443
    :cond_cf
    iget-object v7, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 445
    :try_start_d2
    iget-object v8, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v8, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d7} :catch_da
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_d8

    .line 448
    goto :goto_de

    .line 451
    :catchall_d8
    move-exception v8

    goto :goto_e9

    .line 446
    :catch_da
    move-exception v8

    .line 447
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_db
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 449
    .end local v8    # "ex":Landroid/os/RemoteException;
    :goto_de
    iget-object v8, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    monitor-exit v7

    return-object v5

    .line 451
    :goto_e9
    monitor-exit v7
    :try_end_ea
    .catchall {:try_start_db .. :try_end_ea} :catchall_d8

    throw v8

    .line 418
    .end local v3    # "audioFormat":Landroid/media/AudioFormat;
    .end local v4    # "mediaStreamsBuilder":Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;
    .end local v5    # "streams":Landroid/media/MediaRoute2ProviderService$MediaStreams;
    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    :cond_eb
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Selected routes for system media don\'t support any system media routing types."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    .end local v0    # "routingTypes":I
    .end local v2    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    :cond_f3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected: remote callback is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_fb
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected system routing session created (request id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    .end local v1    # "uid":Ljava/lang/Integer;
    :catchall_11e
    move-exception v1

    :try_start_11f
    monitor-exit v0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 241
    const-string v0, "android.media.MediaRoute2ProviderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 242
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    if-nez v0, :cond_17

    .line 243
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    .line 245
    :cond_17
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    return-object v0

    .line 247
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public blacklist onCreateSystemRoutingSession(JLjava/lang/String;Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;

    .line 685
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRoute2ProviderService;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void
.end method

.method public abstract whitelist onDeselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V
    .registers 2
    .param p1, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 758
    return-void
.end method

.method public abstract whitelist onReleaseSession(JLjava/lang/String;)V
.end method

.method public abstract whitelist onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist onSetRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onSetSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onTransferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method blacklist schedulePublishState()V
    .registers 4

    .line 811
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 812
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 814
    :cond_14
    return-void
.end method

.method blacklist scheduleUpdateSessions()V
    .registers 4

    .line 837
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 838
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    :cond_14
    return-void
.end method

.method blacklist setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 805
    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 806
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 807
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 808
    return-void
.end method
