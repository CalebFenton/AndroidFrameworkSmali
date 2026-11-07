.class public Landroid/hardware/soundtrigger/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_MODEL_UNLOADED:I = 0x4

.field private static final greylist-max-o EVENT_RECOGNITION:I = 0x1

.field private static final blacklist EVENT_RESOURCES_AVAILABLE:I = 0x3

.field private static final greylist-max-o EVENT_SERVICE_DIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SoundTriggerModule"


# instance fields
.field private blacklist mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

.field private greylist-max-r mId:I

.field private blacklist mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method public constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    .registers 9
    .param p1, "service"    # Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .param p2, "moduleId"    # I
    .param p3, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 68
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 70
    :try_start_c
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_37

    .line 71
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_10
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-interface {p1, p2, p5, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2b

    .line 73
    if-eqz v0, :cond_1d

    :try_start_1a
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_1d
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_37

    .line 77
    nop

    .line 78
    return-void

    .line 70
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_2b
    move-exception v1

    if-eqz v0, :cond_36

    :try_start_2e
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v2

    :try_start_33
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local p2    # "moduleId":I
    .end local p3    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p4    # "looper":Landroid/os/Looper;
    .end local p5    # "originatorIdentity":Landroid/media/permission/Identity;
    :cond_36
    :goto_36
    throw v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_37

    .line 75
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .restart local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local p2    # "moduleId":I
    .restart local p3    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local p4    # "looper":Landroid/os/Looper;
    .restart local p5    # "originatorIdentity":Landroid/media/permission/Identity;
    :catch_37
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    .registers 16
    .param p1, "service"    # Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .param p2, "moduleId"    # I
    .param p3, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p6, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p7, "isTrusted"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 89
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 92
    :try_start_c
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_4a

    move-object v1, v0

    .line 93
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_11
    iget-object v6, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_34

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    .end local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local p2    # "moduleId":I
    .end local p5    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local p6    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local p7    # "isTrusted":Z
    .local v2, "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .local v3, "moduleId":I
    .local v4, "middlemanIdentity":Landroid/media/permission/Identity;
    .local v5, "originatorIdentity":Landroid/media/permission/Identity;
    .local v7, "isTrusted":Z
    :try_start_18
    invoke-interface/range {v2 .. v7}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_31

    .line 97
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 98
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_23
    iget-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 p5, 0x0

    invoke-interface {p1, p2, p5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2f} :catch_47

    .line 101
    nop

    .line 102
    return-void

    .line 92
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_31
    move-exception v0

    move-object p1, v0

    goto :goto_3b

    .end local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local v3    # "moduleId":I
    .end local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v7    # "isTrusted":Z
    .restart local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local p2    # "moduleId":I
    .restart local p5    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local p6    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local p7    # "isTrusted":Z
    :catchall_34
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    move-object p1, v0

    .end local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local p2    # "moduleId":I
    .end local p5    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local p6    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local p7    # "isTrusted":Z
    .restart local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local v3    # "moduleId":I
    .restart local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v7    # "isTrusted":Z
    :goto_3b
    if-eqz v1, :cond_46

    :try_start_3d
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception v0

    move-object p2, v0

    :try_start_43
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local v3    # "moduleId":I
    .end local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v7    # "isTrusted":Z
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p3    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p4    # "looper":Landroid/os/Looper;
    :cond_46
    :goto_46
    throw p1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_47} :catch_47

    .line 99
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local v3    # "moduleId":I
    .restart local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v7    # "isTrusted":Z
    .restart local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .restart local p3    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local p4    # "looper":Landroid/os/Looper;
    :catch_47
    move-exception v0

    move-object p1, v0

    goto :goto_51

    .end local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .end local v3    # "moduleId":I
    .end local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v7    # "isTrusted":Z
    .restart local p1    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local p2    # "moduleId":I
    .restart local p5    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local p6    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local p7    # "isTrusted":Z
    :catch_4a
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    move-object p1, v0

    .line 100
    .end local p2    # "moduleId":I
    .end local p5    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local p6    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local p7    # "isTrusted":Z
    .restart local v2    # "service":Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .restart local v3    # "moduleId":I
    .restart local v4    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local v5    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v7    # "isTrusted":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_51
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method public declared-synchronized greylist detach()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v0, :cond_19

    .line 120
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    .line 126
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    :cond_19
    goto :goto_20

    .line 118
    :catchall_1a
    move-exception v0

    goto :goto_22

    .line 124
    :catch_1c
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1d
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    monitor-exit p0

    return-void

    .line 118
    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1a

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 106
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 107
    return-void
.end method

.method public declared-synchronized blacklist getModelState(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I

    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 305
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 303
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 306
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist getParameter(II)I
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I

    monitor-enter p0

    .line 351
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 352
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 351
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    .line 350
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 353
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    :catch_f
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
    .registers 8
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "soundModelHandle"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 152
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_8a
    .catchall {:try_start_1 .. :try_end_d} :catchall_88

    .line 155
    .local v0, "aidlModel":Landroid/media/soundtrigger/SoundModel;
    :try_start_d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v2

    aput v2, p2, v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2a

    .line 160
    :try_start_15
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_8a
    .catchall {:try_start_15 .. :try_end_17} :catchall_88

    if-eqz v2, :cond_28

    .line 162
    :try_start_19
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_8a
    .catchall {:try_start_19 .. :try_end_1e} :catchall_88

    .line 165
    goto :goto_28

    .line 163
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    :catch_1f
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_8a
    .catchall {:try_start_20 .. :try_end_27} :catchall_88

    .line 165
    nop

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :cond_28
    :goto_28
    monitor-exit p0

    return v1

    .line 160
    :catchall_2a
    move-exception v1

    :try_start_2b
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_8a
    .catchall {:try_start_2b .. :try_end_2d} :catchall_88

    if-eqz v2, :cond_3d

    .line 162
    :try_start_2f
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_8a
    .catchall {:try_start_2f .. :try_end_34} :catchall_88

    .line 165
    goto :goto_3d

    .line 163
    :catch_35
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_36
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3d
    :goto_3d
    nop

    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    throw v1

    .line 170
    .end local v0    # "aidlModel":Landroid/media/soundtrigger/SoundModel;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :cond_3f
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-eqz v0, :cond_84

    .line 171
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_8a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_88

    .line 174
    .local v0, "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    :try_start_4a
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v2

    aput v2, p2, v1
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_6b

    .line 179
    :try_start_52
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_8a
    .catchall {:try_start_52 .. :try_end_56} :catchall_88

    if-eqz v2, :cond_69

    .line 181
    :try_start_58
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_8a
    .catchall {:try_start_58 .. :try_end_5f} :catchall_88

    .line 184
    goto :goto_69

    .line 182
    :catch_60
    move-exception v2

    .line 183
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_61
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_8a
    .catchall {:try_start_61 .. :try_end_68} :catchall_88

    .line 184
    nop

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    monitor-exit p0

    return v1

    .line 179
    :catchall_6b
    move-exception v1

    :try_start_6c
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_8a
    .catchall {:try_start_6c .. :try_end_70} :catchall_88

    if-eqz v2, :cond_82

    .line 181
    :try_start_72
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_8a
    .catchall {:try_start_72 .. :try_end_79} :catchall_88

    .line 184
    goto :goto_82

    .line 182
    :catch_7a
    move-exception v2

    .line 183
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7b
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    :cond_82
    :goto_82
    nop

    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    throw v1

    .line 189
    .end local v0    # "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :cond_84
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_86} :catch_8a
    .catchall {:try_start_7b .. :try_end_86} :catchall_88

    monitor-exit p0

    return v0

    .line 150
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    :catchall_88
    move-exception p1

    goto :goto_91

    .line 190
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :catch_8a
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8b
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_88

    monitor-exit p0

    return v1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    :goto_91
    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_88

    throw p1
.end method

.method public declared-synchronized blacklist queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I

    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 372
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 370
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 369
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :catchall_11
    move-exception p1

    goto :goto_19

    .line 373
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    :catch_13
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    throw p1
.end method

.method public declared-synchronized blacklist setParameter(III)I
    .registers 6
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 330
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 329
    invoke-interface {v0, p1, v1, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 331
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 328
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 332
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :catch_f
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return v1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 244
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;

    move-result-object v1

    .line 243
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 245
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 242
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 246
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_f
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return v1

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist startRecognitionWithToken(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/os/IBinder;
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 258
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;

    move-result-object v1

    .line 257
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 256
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist stopRecognition(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 280
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 278
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 281
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized greylist unloadSoundModel(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 213
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 211
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 214
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method
