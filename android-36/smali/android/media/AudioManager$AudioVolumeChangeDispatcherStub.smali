.class final Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;
.super Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioVolumeChangeDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8818
    iput-object p1, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAudioVolumeGroupChanged$0(IILandroid/media/AudioManager$VolumeGroupCallback;)V
    .registers 3
    .param p0, "group"    # I
    .param p1, "flags"    # I
    .param p2, "listener"    # Landroid/media/AudioManager$VolumeGroupCallback;

    .line 8837
    invoke-virtual {p2, p0, p1}, Landroid/media/AudioManager$VolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onAudioVolumeGroupChanged(II)V
    .registers 5
    .param p1, "group"    # I
    .param p2, "flags"    # I

    .line 8836
    iget-object v0, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmVolumeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 8838
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 8824
    if-eqz p1, :cond_a

    .line 8825
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    goto :goto_11

    .line 8827
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 8831
    :goto_11
    goto :goto_16

    .line 8829
    :catch_12
    move-exception v0

    .line 8830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8832
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
