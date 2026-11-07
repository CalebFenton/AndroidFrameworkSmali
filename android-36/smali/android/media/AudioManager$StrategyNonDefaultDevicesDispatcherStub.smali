.class final Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;
.super Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrategyNonDefaultDevicesDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2562
    iput-object p1, p0, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchNonDefDevicesChanged$0(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;)V
    .registers 3
    .param p0, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p1, "devices"    # Ljava/util/List;
    .param p2, "listener"    # Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;

    .line 2573
    invoke-interface {p2, p0, p1}, Landroid/media/AudioManager$OnNonDefaultDevicesForStrategyChangedListener;->onNonDefaultDevicesForStrategyChanged(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchNonDefDevicesChanged(ILjava/util/List;)V
    .registers 6
    .param p1, "strategyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 2569
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    nop

    .line 2570
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v0

    .line 2572
    .local v0, "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    iget-object v1, p0, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmNonDefDevListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Landroid/media/AudioManager$StrategyNonDefaultDevicesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 2575
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 2580
    if-eqz p1, :cond_a

    .line 2581
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    goto :goto_11

    .line 2583
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 2587
    :goto_11
    goto :goto_16

    .line 2585
    :catch_12
    move-exception v0

    .line 2586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2588
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
