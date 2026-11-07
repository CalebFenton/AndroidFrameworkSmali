.class final Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;
.super Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackerAvailableDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method public static synthetic blacklist $r8$lambda$uRZEB7DBolqpYWCatNPSGvl1mDw(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->lambda$dispatchSpatializerHeadTrackerAvailable$0(ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V

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

    .line 1039
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchSpatializerHeadTrackerAvailable$0(ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 4
    .param p1, "available"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 1055
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackerAvailableListener;->onHeadTrackerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerHeadTrackerAvailable(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 1054
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 1057
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 1045
    :try_start_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1048
    goto :goto_11

    .line 1046
    :catch_d
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1049
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method
