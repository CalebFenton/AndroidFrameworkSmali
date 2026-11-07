.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;
.super Landroid/media/IAudioDeviceVolumeDispatcher$Stub;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeviceVolumeDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioDeviceVolumeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeAdjusted$1(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 6
    .param p0, "listenerInfo"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I

    .line 320
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeChanged$0(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 4
    .param p0, "listenerInfo"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;

    .line 304
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 14
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I

    .line 314
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_7
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 316
    .local v0, "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_46

    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 318
    .local v4, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v2, v4, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 319
    iget-object v2, v4, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "vol":Landroid/media/VolumeInfo;
    .end local p3    # "direction":I
    .end local p4    # "mode":I
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    .local v6, "vol":Landroid/media/VolumeInfo;
    .local v7, "direction":I
    .local v8, "mode":I
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_40

    .line 318
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .end local v6    # "vol":Landroid/media/VolumeInfo;
    .end local v7    # "direction":I
    .end local v8    # "mode":I
    .restart local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local p2    # "vol":Landroid/media/VolumeInfo;
    .restart local p3    # "direction":I
    .restart local p4    # "mode":I
    :cond_3c
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 323
    .end local v4    # "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "vol":Landroid/media/VolumeInfo;
    .end local p3    # "direction":I
    .end local p4    # "mode":I
    .restart local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local v6    # "vol":Landroid/media/VolumeInfo;
    .restart local v7    # "direction":I
    .restart local v8    # "mode":I
    :goto_40
    move-object p1, v5

    move-object p2, v6

    move p3, v7

    move p4, v8

    goto :goto_18

    .line 324
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .end local v6    # "vol":Landroid/media/VolumeInfo;
    .end local v7    # "direction":I
    .end local v8    # "mode":I
    .restart local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local p2    # "vol":Landroid/media/VolumeInfo;
    .restart local p3    # "direction":I
    .restart local p4    # "mode":I
    :cond_45
    return-void

    .line 316
    .end local v0    # "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    :catchall_46
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object p1, v0

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "vol":Landroid/media/VolumeInfo;
    .end local p3    # "direction":I
    .end local p4    # "mode":I
    .restart local v5    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local v6    # "vol":Landroid/media/VolumeInfo;
    .restart local v7    # "direction":I
    .restart local v8    # "mode":I
    :goto_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4e

    throw p1

    :catchall_4e
    move-exception v0

    move-object p1, v0

    goto :goto_4c
.end method

.method public blacklist dispatchDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 8
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;

    .line 298
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 299
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 300
    .local v1, "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_38

    .line 301
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 302
    .local v2, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 303
    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    .end local v2    # "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    :cond_36
    goto :goto_18

    .line 307
    :cond_37
    return-void

    .line 300
    .end local v1    # "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V
    .registers 14
    .param p1, "register"    # Z
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "handlesVolumeAdjustment"    # Z
    .param p5, "behavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 285
    .local p3, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_23

    .line 285
    move-object v2, p0

    move v1, p1

    move v6, p4

    move v7, p5

    .end local p1    # "register":Z
    .end local p4    # "handlesVolumeAdjustment":Z
    .end local p5    # "behavior":I
    .local v1, "register":Z
    .local v6, "handlesVolumeAdjustment":Z
    .local v7, "behavior":I
    :try_start_1c
    invoke-interface/range {v0 .. v7}, Landroid/media/IAudioService;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 291
    goto :goto_2b

    .line 289
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .end local v1    # "register":Z
    .end local v6    # "handlesVolumeAdjustment":Z
    .end local v7    # "behavior":I
    .restart local p1    # "register":Z
    .restart local p4    # "handlesVolumeAdjustment":Z
    .restart local p5    # "behavior":I
    :catch_23
    move-exception v0

    move v1, p1

    move v6, p4

    move v7, p5

    move-object p1, v0

    .line 290
    .end local p4    # "handlesVolumeAdjustment":Z
    .end local p5    # "behavior":I
    .restart local v1    # "register":Z
    .restart local v6    # "handlesVolumeAdjustment":Z
    .restart local v7    # "behavior":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 292
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method
