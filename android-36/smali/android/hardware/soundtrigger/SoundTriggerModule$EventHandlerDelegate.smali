.class Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerDelegate"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V
    .registers 5
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 383
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;-><init>()V

    .line 387
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;

    invoke-direct {v0, p0, p3, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 410
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist binderDied()V
    .registers 3

    monitor-enter p0

    .line 450
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 452
    monitor-exit p0

    return-void

    .line 449
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist onModelUnloaded(I)V
    .registers 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method

.method public declared-synchronized blacklist onModuleDied()V
    .registers 3

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 446
    monitor-exit p0

    return-void

    .line 443
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized blacklist onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .param p3, "captureSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 426
    invoke-static {p1, p3, p2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionEvent(IILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v1

    .line 425
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 428
    monitor-exit p0

    return-void

    .line 424
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    .end local p1    # "handle":I
    .end local p2    # "event":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .end local p3    # "captureSession":I
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/RecognitionEventSys;
    .param p3, "captureSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 417
    invoke-static {p1, p3, p2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionEvent(IILandroid/media/soundtrigger_middleware/RecognitionEventSys;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v1

    .line 416
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 418
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 419
    monitor-exit p0

    return-void

    .line 415
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    .end local p1    # "handle":I
    .end local p2    # "event":Landroid/media/soundtrigger_middleware/RecognitionEventSys;
    .end local p3    # "captureSession":I
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist onResourcesAvailable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 440
    monitor-exit p0

    return-void

    .line 437
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method
