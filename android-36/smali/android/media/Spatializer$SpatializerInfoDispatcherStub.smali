.class final Landroid/media/Spatializer$SpatializerInfoDispatcherStub;
.super Landroid/media/ISpatializerCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerInfoDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method public static synthetic blacklist $r8$lambda$HugCpuxBiTKWS1Loy0WOEiHqhJA(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KvmtC-ypIdf-7Wn5x1yaJrjEtv8(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4
    .param p1, "available"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 666
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 658
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerAvailableChanged(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 665
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 668
    return-void
.end method

.method public blacklist dispatchSpatializerEnabledChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 657
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 660
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 644
    if-eqz p1, :cond_f

    .line 645
    :try_start_2
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    goto :goto_1b

    .line 647
    :cond_f
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 651
    :goto_1b
    goto :goto_20

    .line 649
    :catch_1c
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method
