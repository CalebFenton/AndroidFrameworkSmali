.class public Landroid/media/AudioDeviceVolumeManager;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$ListenerInfo;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$VolumeAdjustmentMode;,
        Landroid/media/AudioDeviceVolumeManager$AbsoluteDeviceVolumeBehavior;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorState;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehavior;
    }
.end annotation


# static fields
.field public static final blacklist ADJUST_MODE_END:I = 0x2

.field public static final blacklist ADJUST_MODE_NORMAL:I = 0x0

.field public static final blacklist ADJUST_MODE_START:I = 0x1

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_UNSET:I = -0x1

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_VARIABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AudioDeviceVolumeManager"

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

.field private final blacklist mDeviceVolumeListenerLock:Ljava/lang/Object;

.field private blacklist mDeviceVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceVolumeManager$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$V0P0RNVQZBiSj2r7dNwQxmGi-t4(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioDeviceVolumeManager;->lambda$addOnDeviceVolumeBehaviorChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/media/IAudioService;
    .registers 1

    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    .line 614
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method private blacklist baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V
    .registers 16
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .param p5, "handlesVolumeAdjustment"    # Z
    .param p6, "behavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            "ZI)V"
        }
    .end annotation

    .line 586
    .local p2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    invoke-direct {v0, p4, p3, p1, p5}, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;-><init>(Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceAttributes;Z)V

    move-object v1, v0

    .line 593
    .local v1, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_15
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_56

    if-nez v0, :cond_27

    .line 595
    :try_start_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_27

    .line 607
    :catchall_21
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v7, p5

    move v8, p6

    goto :goto_5b

    .line 597
    :cond_27
    :goto_27
    :try_start_27
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_56

    if-nez v0, :cond_3b

    .line 598
    :try_start_2f
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    if-nez v0, :cond_45

    .line 599
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_21

    goto :goto_45

    .line 602
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 604
    :cond_45
    :goto_45
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v3, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_56

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move v7, p5

    move v8, p6

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local p5    # "handlesVolumeAdjustment":Z
    .end local p6    # "behavior":I
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    .local v6, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .local v7, "handlesVolumeAdjustment":Z
    .local v8, "behavior":I
    :try_start_51
    invoke-virtual/range {v3 .. v8}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 607
    monitor-exit v2

    .line 608
    return-void

    .line 607
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .end local v6    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v7    # "handlesVolumeAdjustment":Z
    .end local v8    # "behavior":I
    .restart local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .restart local p5    # "handlesVolumeAdjustment":Z
    .restart local p6    # "behavior":I
    :catchall_56
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v7, p5

    move v8, p6

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local p5    # "handlesVolumeAdjustment":Z
    .end local p6    # "behavior":I
    .restart local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local v6    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .restart local v7    # "handlesVolumeAdjustment":Z
    .restart local v8    # "behavior":I
    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5d

    throw v0

    :catchall_5d
    move-exception v0

    goto :goto_5b
.end method

.method public static blacklist enforceValidVolumeBehavior(I)V
    .registers 4
    .param p0, "volumeBehavior"    # I

    .line 164
    packed-switch p0, :pswitch_data_1e

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal volume behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .registers 2

    .line 831
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 832
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 834
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 835
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    .line 836
    sget-object v1, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private synthetic blacklist lambda$addOnDeviceVolumeBehaviorChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 648
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager-IA;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$baseSetDeviceAbsoluteMultiVolumeBehavior$0(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceVolumeManager$ListenerInfo;)Z
    .registers 3
    .param p0, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "info"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 602
    iget-object v0, p1, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p0}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeBehaviorName(I)Ljava/lang/String;
    .registers 3
    .param p0, "behavior"    # I

    .line 794
    packed-switch p0, :pswitch_data_2a

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid volume behavior "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 806
    :pswitch_17
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY"

    return-object v0

    .line 804
    :pswitch_1a
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE"

    return-object v0

    .line 802
    :pswitch_1d
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE"

    return-object v0

    .line 800
    :pswitch_20
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_FIXED"

    return-object v0

    .line 798
    :pswitch_23
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_FULL"

    return-object v0

    .line 796
    :pswitch_26
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_VARIABLE"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public blacklist addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    const-string v2, "addOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 649
    return-void
.end method

.method public whitelist getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)Landroid/media/VolumeInfo;
    .registers 5
    .param p1, "vi"    # Landroid/media/VolumeInfo;
    .param p2, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 703
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 704
    :catch_b
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 707
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/media/VolumeInfo;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .registers 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 378
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 379
    :catch_c
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I
    .registers 4
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 735
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 736
    :catch_9
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMaxInputGainIndex()I
    .registers 3

    .line 749
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMaxInputGainIndex()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 750
    :catch_9
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMinInputGainIndex()I
    .registers 3

    .line 763
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMinInputGainIndex()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 764
    :catch_9
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFullVolumeDevice()Z
    .registers 8

    .line 396
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 400
    .local v0, "attributes":Landroid/media/AudioAttributes;
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 402
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_12
    invoke-interface {v2, v0}, Landroid/media/IAudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_31

    .line 405
    .local v3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    nop

    .line 407
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 408
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {p0, v5}, Landroid/media/AudioDeviceVolumeManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v6

    if-ne v6, v1, :cond_2e

    .line 409
    return v1

    .line 411
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_2e
    goto :goto_1b

    .line 412
    :cond_2f
    const/4 v1, 0x0

    return v1

    .line 403
    .end local v3    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catch_31
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z
    .registers 4
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 781
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 782
    :catch_9
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    .line 661
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 13
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 567
    .local p2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v5, "handlesVolumeAdjustment":Z
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceVolumeManager;->baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V

    .line 569
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 11
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 485
    .local p2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 487
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 13
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 509
    .local p2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v5, "handlesVolumeAdjustment":Z
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceVolumeManager;->baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V

    .line 511
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 14
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 538
    .local v4, "volumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/VolumeInfo;>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v3, "device":Landroid/media/AudioDeviceAttributes;
    .local v5, "handlesVolumeAdjustment":Z
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 541
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 11
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 435
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volume":Landroid/media/VolumeInfo;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volume":Landroid/media/VolumeInfo;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 437
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 14
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 460
    .local v4, "volumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/VolumeInfo;>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v3, "device":Landroid/media/AudioDeviceAttributes;
    .local v5, "handlesVolumeAdjustment":Z
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 463
    return-void
.end method

.method public whitelist setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .param p1, "vi"    # Landroid/media/VolumeInfo;
    .param p2, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 678
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 681
    goto :goto_e

    .line 679
    :catch_a
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .registers 6
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Landroid/media/AudioDeviceVolumeManager;->enforceValidVolumeBehavior(I)V

    .line 350
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 352
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_a
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_11
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "index"    # I

    .line 721
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 724
    nop

    .line 725
    return-void

    .line 722
    :catch_9
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
