.class public Landroid/media/Spatializer;
.super Ljava/lang/Object;
.source "Spatializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Spatializer$SpatializerPoseDispatcherStub;,
        Landroid/media/Spatializer$SpatializerOutputDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;,
        Landroid/media/Spatializer$SpatializerInfoDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;,
        Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;,
        Landroid/media/Spatializer$OnSpatializerOutputChangedListener;,
        Landroid/media/Spatializer$OnHeadTrackerAvailableListener;,
        Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;,
        Landroid/media/Spatializer$OnSpatializerStateChangedListener;,
        Landroid/media/Spatializer$HeadTrackingModeSupported;,
        Landroid/media/Spatializer$HeadTrackingModeSet;,
        Landroid/media/Spatializer$HeadTrackingMode;,
        Landroid/media/Spatializer$ImmersiveAudioLevel;
    }
.end annotation


# static fields
.field public static final whitelist HEAD_TRACKING_MODE_DISABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_DEVICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_WORLD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_UNSUPPORTED:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist SPATIALIZER_IMMERSIVE_LEVEL_MCHAN_BED_PLUS_OBJECTS:I = 0x2

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_MULTICHANNEL:I = 0x1

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_NONE:I = 0x0

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_OTHER:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Spatializer"


# instance fields
.field private final blacklist mAm:Landroid/media/AudioManager;

.field private final blacklist mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackerAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

.field private blacklist mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnSpatializerOutputChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputListenerLock:Ljava/lang/Object;

.field private blacklist mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

.field private blacklist mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPoseListenerLock:Ljava/lang/Object;

.field private final blacklist mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnSpatializerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$NJnJ3J_IdFl6yCDK3SddBn_uDFg(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnHeadTrackingModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QSxbZ2_lWzPP3l4g3Z5QiUnZaPM(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnSpatializerStateChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RvJVJwn7tSc4nUU79HsouV5Tmq8(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnHeadTrackerAvailableListener$0()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 3
    .param p1, "am"    # Landroid/media/AudioManager;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 995
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 1036
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 1062
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    .line 1093
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    .line 68
    return-void
.end method

.method public static final blacklist headtrackingModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 350
    packed-switch p0, :pswitch_data_26

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head tracking mode unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :pswitch_17
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_DEVICE"

    return-object v0

    .line 358
    :pswitch_1a
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_WORLD"

    return-object v0

    .line 356
    :pswitch_1d
    const-string v0, "HEAD_TRACKING_MODE_OTHER"

    return-object v0

    .line 354
    :pswitch_20
    const-string v0, "HEAD_TRACKING_MODE_DISABLED"

    return-object v0

    .line 352
    :pswitch_23
    const-string v0, "HEAD_TRACKING_MODE_UNSUPPORTED"

    return-object v0

    :pswitch_data_26
    .packed-switch -0x2
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private synthetic blacklist lambda$addOnHeadTrackerAvailableListener$0()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 218
    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnHeadTrackingModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 785
    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnSpatializerStateChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 566
    new-instance v0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 609
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 612
    goto :goto_16

    .line 610
    :catch_e
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling addSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 216
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda2;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 219
    return-void
.end method

.method public whitelist addOnHeadTrackingModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 783
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 786
    return-void
.end method

.method public whitelist addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 565
    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 567
    return-void
.end method

.method public whitelist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;

    .line 524
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    .line 524
    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 526
    :catch_15
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error querying canBeSpatialized for attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist clearOnHeadToSoundstagePoseUpdatedListener()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 840
    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_1a

    .line 845
    :try_start_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_22

    goto :goto_12

    .line 846
    :catch_11
    move-exception v1

    :goto_12
    nop

    .line 847
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 848
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    .line 849
    monitor-exit v0

    .line 850
    return-void

    .line 842
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    throw v1

    .line 849
    .restart local p0    # "this":Landroid/media/Spatializer;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist clearOnSpatializerOutputChangedListener()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 976
    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_1a

    .line 981
    :try_start_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_22

    goto :goto_12

    .line 982
    :catch_11
    move-exception v1

    :goto_12
    nop

    .line 983
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 984
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    .line 985
    monitor-exit v0

    .line 986
    return-void

    .line 978
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    throw v1

    .line 985
    .restart local p0    # "this":Landroid/media/Spatializer;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist getCompatibleAudioDevices()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 591
    :catch_9
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying getSpatializerCompatibleAudioDevices(),  returning empty list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1
.end method

.method public whitelist getDesiredHeadTrackingMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 705
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getDesiredHeadTrackingMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 706
    :catch_9
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getDesiredHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getEffectParameter(I[B)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 907
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getSpatializerParameter(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 912
    goto :goto_13

    .line 910
    :catch_b
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist getHeadTrackingMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 686
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getActualHeadTrackingMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 687
    :catch_9
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getActualHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getImmersiveAudioLevel()I
    .registers 3

    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "level":I
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSpatializerImmersiveAudioLevel()I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_c

    .line 378
    :catch_b
    move-exception v1

    :goto_c
    nop

    .line 379
    return v0
.end method

.method public whitelist getOutput()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 928
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerOutput()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 929
    :catch_9
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getSpatializerOutput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSpatializedChannelMasks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 549
    :catch_9
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying getSpatializedChannelMasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedHeadTrackingModes()Ljava/util/List;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSupportedHeadTrackingModes()[I

    move-result-object v1

    .line 727
    .local v1, "modes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 728
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    move v4, v0

    :goto_10
    if-ge v4, v3, :cond_1f

    aget v5, v1, v4

    .line 729
    .local v5, "mode":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_20

    .line 728
    nop

    .end local v5    # "mode":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 731
    :cond_1f
    return-object v2

    .line 732
    .end local v1    # "modes":[I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_20
    move-exception v1

    .line 733
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Spatializer"

    const-string v3, "Error calling getSupportedHeadTrackModes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public whitelist hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 151
    :catch_c
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAvailable()Z
    .registers 4

    .line 108
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerAvailable()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 109
    :catch_9
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerAvailable, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 133
    :catch_c
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 84
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 85
    :catch_9
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerEnabled, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isHeadTrackerAvailable()Z
    .registers 2

    .line 201
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHeadTrackerAvailable()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 202
    :catch_9
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 186
    :catch_c
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist recenterHeadTracker()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 765
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->recenterHeadTracker()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 768
    goto :goto_10

    .line 766
    :catch_8
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling recenterHeadTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 626
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 629
    goto :goto_16

    .line 627
    :catch_e
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling removeSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist removeOnHeadTrackerAvailableListener(Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 228
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public whitelist removeOnHeadTrackingModeChangedListener(Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 798
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public whitelist removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 577
    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public whitelist setDesiredHeadTrackingMode(I)V
    .registers 5
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 751
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDesiredHeadTrackingMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 754
    goto :goto_21

    .line 752
    :catch_8
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDesiredHeadTrackingMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist setEffectParameter(I[B)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 887
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSpatializerParameter(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 892
    goto :goto_13

    .line 890
    :catch_b
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 394
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 397
    goto :goto_10

    .line 395
    :catch_8
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setSpatializerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist setGlobalTransform([F)V
    .registers 5
    .param p1, "transform"    # [F
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 865
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    .line 870
    :try_start_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerGlobalTransform([F)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 873
    goto :goto_1a

    .line 871
    :catch_12
    move-exception v0

    .line 872
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setGlobalTransform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void

    .line 866
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transform array must be of size 6, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 166
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 171
    goto :goto_f

    .line 169
    :catch_b
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public whitelist setOnHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 814
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_9
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_2d

    .line 820
    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 822
    new-instance v1, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_35

    .line 824
    :try_start_1c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    .line 828
    goto :goto_2b

    .line 825
    :catch_26
    move-exception v1

    .line 826
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    iput-object v2, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 827
    iput-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    .line 829
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2b
    monitor-exit v0

    .line 830
    return-void

    .line 818
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    throw v1

    .line 829
    .restart local p0    # "this":Landroid/media/Spatializer;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist setOnSpatializerOutputChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerOutputChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 948
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_9
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_36

    .line 954
    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 956
    new-instance v1, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3e

    .line 958
    :try_start_1c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 960
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getOutput()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->dispatchSpatializerOutputChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2e} :catch_2f
    .catchall {:try_start_1c .. :try_end_2e} :catchall_3e

    .line 964
    goto :goto_34

    .line 961
    :catch_2f
    move-exception v1

    .line 962
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_30
    iput-object v2, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 963
    iput-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    .line 965
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    monitor-exit v0

    .line 966
    return-void

    .line 952
    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    throw v1

    .line 965
    .restart local p0    # "this":Landroid/media/Spatializer;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw v1
.end method
