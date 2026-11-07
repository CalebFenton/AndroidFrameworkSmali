.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;
.super Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;
.source "AudioDeviceVolumeManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceVolumeBehaviorDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 812
    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeBehaviorChanged$0(Landroid/media/AudioDeviceAttributes;ILandroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 3
    .param p0, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "volumeBehavior"    # I
    .param p2, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    .line 826
    invoke-interface {p2, p0, p1}, Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;->onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volumeBehavior"    # I

    .line 825
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceAttributes;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 827
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 816
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/media/IAudioService;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 819
    goto :goto_c

    .line 817
    :catch_8
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 820
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
