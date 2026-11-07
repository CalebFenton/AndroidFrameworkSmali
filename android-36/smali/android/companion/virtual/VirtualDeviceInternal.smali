.class public Landroid/companion/virtual/VirtualDeviceInternal;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    }
.end annotation


# instance fields
.field private final blacklist mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final blacklist mActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActivityListenersLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntentInterceptorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;",
            "Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntentInterceptorListenersLock:Ljava/lang/Object;

.field private final blacklist mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field private final blacklist mSoundEffectListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSoundEffectListenersLock:Ljava/lang/Object;

.field private blacklist mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public static synthetic blacklist $r8$lambda$RDTvc_Ej4vCvy7TcyDM5Fc-Xy7Y(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->lambda$createVirtualAudioDevice$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .registers 13
    .param p1, "service"    # Landroid/companion/virtual/IVirtualDeviceManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "associationId"    # I
    .param p4, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 183
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 208
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v6, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iget-object v7, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 208
    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .end local p1    # "service":Landroid/companion/virtual/IVirtualDeviceManager;
    .end local p3    # "associationId":I
    .end local p4    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .local v1, "service":Landroid/companion/virtual/IVirtualDeviceManager;
    .local v4, "associationId":I
    .local v5, "params":Landroid/companion/virtual/VirtualDeviceParams;
    invoke-interface/range {v1 .. v7}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 215
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 183
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 221
    :try_start_43
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-interface {v0, v1, v2}, Landroid/companion/virtual/IVirtualDevice;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4e

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catch_4e
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$createVirtualAudioDevice$0()V
    .registers 2

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-void
.end method


# virtual methods
.method blacklist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 520
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 521
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V

    .line 522
    .local v0, "delegate":Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_14
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method blacklist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 4
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_7
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "soundEffectListener"    # Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 535
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;

    .line 536
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 537
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    .line 538
    .local v0, "delegate":Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_15
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    monitor-exit v1

    .line 541
    return-void

    .line 540
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method blacklist close()V
    .registers 3

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_13

    .line 320
    nop

    .line 321
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-eqz v0, :cond_12

    .line 322
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice;->close()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    .line 325
    :cond_12
    return-void

    .line 318
    :catch_13
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createContext()Landroid/content/Context;
    .registers 3

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 246
    :catch_d
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .registers 12
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 473
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-nez v0, :cond_3d

    .line 478
    :try_start_4
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getDevicePolicy(I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_34

    if-ne v0, v1, :cond_1d

    .line 479
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_1f

    .line 483
    :catch_18
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_38

    .line 480
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    :goto_1f
    move-object v2, v0

    .line 481
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioDevice;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v7, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_34

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "display":Landroid/hardware/display/VirtualDisplay;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .local v4, "display":Landroid/hardware/display/VirtualDisplay;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    :try_start_2c
    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/audio/VirtualAudioDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;)V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    .line 485
    .end local v2    # "context":Landroid/content/Context;
    goto :goto_40

    .line 483
    :catch_32
    move-exception v0

    goto :goto_38

    .end local v4    # "display":Landroid/hardware/display/VirtualDisplay;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .restart local p1    # "display":Landroid/hardware/display/VirtualDisplay;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    :catch_34
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 484
    .end local p1    # "display":Landroid/hardware/display/VirtualDisplay;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "display":Landroid/hardware/display/VirtualDisplay;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    :goto_38
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "display":Landroid/hardware/display/VirtualDisplay;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .restart local p1    # "display":Landroid/hardware/display/VirtualDisplay;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    :cond_3d
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 487
    .end local p1    # "display":Landroid/hardware/display/VirtualDisplay;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .restart local v4    # "display":Landroid/hardware/display/VirtualDisplay;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "callback":Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    :goto_40
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-object p1
.end method

.method blacklist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .registers 5
    .param p1, "config"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 494
    new-instance v0, Landroid/companion/virtual/camera/VirtualCamera;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v2, p1}, Landroid/companion/virtual/IVirtualDevice;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Landroid/companion/virtual/camera/VirtualCamera;-><init>(Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 496
    :catch_13
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 8
    .param p1, "config"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;

    .line 302
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p3, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 306
    .local v0, "callbackWrapper":Landroid/hardware/display/IVirtualDisplayCallback;
    :try_start_5
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_15

    .line 309
    .local v1, "displayId":I
    nop

    .line 310
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 311
    .local v2, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v2, p1, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    return-object v3

    .line 307
    .end local v1    # "displayId":I
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    :catch_15
    move-exception v1

    .line 308
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method blacklist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualDpadConfig;

    .line 384
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualDpad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V

    .line 387
    new-instance v1, Landroid/hardware/input/VirtualDpad;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualDpad;-><init>(Landroid/hardware/input/VirtualDpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 388
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualKeyboardConfig;

    .line 396
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V

    .line 399
    new-instance v1, Landroid/hardware/input/VirtualKeyboard;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 400
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualMouseConfig;

    .line 408
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualMouse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V

    .line 411
    new-instance v1, Landroid/hardware/input/VirtualMouse;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualMouse;-><init>(Landroid/hardware/input/VirtualMouseConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 412
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    .line 458
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualNavigationTouchpad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V

    .line 462
    new-instance v1, Landroid/hardware/input/VirtualNavigationTouchpad;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualNavigationTouchpad;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 463
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualRotaryEncoderConfig;

    .line 445
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualRotaryEncoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V

    .line 448
    new-instance v1, Landroid/hardware/input/VirtualRotaryEncoder;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualRotaryEncoder;-><init>(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 449
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualStylusConfig;

    .line 433
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualStylus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V

    .line 436
    new-instance v1, Landroid/hardware/input/VirtualStylus;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualStylus;-><init>(Landroid/hardware/input/VirtualStylusConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 437
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .registers 5
    .param p1, "config"    # Landroid/hardware/input/VirtualTouchscreenConfig;

    .line 421
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualTouchscreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 422
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V

    .line 424
    new-instance v1, Landroid/hardware/input/VirtualTouchscreen;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, p1, v2, v0}, Landroid/hardware/input/VirtualTouchscreen;-><init>(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 425
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_29
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getDeviceId()I
    .registers 3

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 230
    :catch_7
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getPersistentDeviceId()Ljava/lang/String;
    .registers 3

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 238
    :catch_7
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getVirtualSensorList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getVirtualSensorList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 255
    :catch_7
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist goToSleep()V
    .registers 3

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->goToSleep()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catch_7
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Ljava/util/function/IntConsumer;

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$3;

    new-instance v2, Landroid/os/Handler;

    .line 285
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal$3;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 282
    invoke-interface {v0, p1, p2, v1}, Landroid/companion/virtual/IVirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 294
    goto :goto_18

    .line 292
    :catch_14
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method blacklist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 7
    .param p1, "interceptorFilter"    # Landroid/content/IntentFilter;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "interceptorCallback"    # Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 554
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    .line 560
    .local v0, "delegate":Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    :try_start_f
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_22

    .line 563
    nop

    .line 564
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_18
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v2

    .line 561
    :catch_22
    move-exception v1

    .line 562
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method blacklist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 528
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 4
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 359
    nop

    .line 360
    return-void

    .line 357
    :catch_7
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 5
    .param p1, "soundEffectListener"    # Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 545
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist setDevicePolicy(II)V
    .registers 6
    .param p1, "policyType"    # I
    .param p2, "devicePolicy"    # I

    .line 329
    packed-switch p1, :pswitch_data_30

    .line 336
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be changed at runtime. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_22
    nop

    .line 340
    :try_start_23
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicy(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 343
    nop

    .line 344
    return-void

    .line 341
    :catch_2a
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method

.method blacklist setDevicePolicyForDisplay(III)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "policyType"    # I
    .param p3, "devicePolicy"    # I

    .line 365
    packed-switch p2, :pswitch_data_30

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be changed for a specific display. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :pswitch_22
    nop

    .line 375
    :try_start_23
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicyForDisplay(III)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_2a
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method blacklist setDisplayImePolicy(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "policy"    # I

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDisplayImePolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 514
    nop

    .line 515
    return-void

    .line 512
    :catch_7
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setShowPointerIcon(Z)V
    .registers 4
    .param p1, "showPointerIcon"    # Z

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->setShowPointerIcon(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catch_7
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 5
    .param p1, "interceptorCallback"    # Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 571
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_6
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    .line 575
    .local v1, "delegate":Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1e

    .line 576
    if-eqz v1, :cond_1d

    .line 578
    :try_start_11
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 581
    goto :goto_1d

    .line 579
    :catch_17
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void

    .line 575
    .end local v1    # "delegate":Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method blacklist wakeUp()V
    .registers 3

    .line 270
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->wakeUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 273
    nop

    .line 274
    return-void

    .line 271
    :catch_7
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
