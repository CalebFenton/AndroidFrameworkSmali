.class public Landroid/media/LoudnessCodecDispatcher;
.super Ljava/lang/Object;
.source "LoudnessCodecDispatcher.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecDispatcher"


# instance fields
.field private final blacklist mAudioService:Landroid/media/IAudioService;


# direct methods
.method public constructor blacklist <init>(Landroid/media/IAudioService;)V
    .registers 3
    .param p1, "audioService"    # Landroid/media/IAudioService;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioService;

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "mediaCodecHash"    # I
    .param p3, "mcInfo"    # Landroid/media/LoudnessCodecInfo;

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 265
    goto :goto_a

    .line 263
    :catch_6
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 5
    .param p1, "configurator"    # Landroid/media/LoudnessCodecController;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 231
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 233
    return-void
.end method

.method public blacklist getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;
    .registers 5
    .param p1, "mcInfo"    # Landroid/media/LoudnessCodecInfo;

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "loudnessParams":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 284
    goto :goto_12

    .line 282
    :catch_e
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return-object v0
.end method

.method public blacklist register(Z)V
    .registers 4
    .param p1, "register"    # Z

    .line 215
    if-eqz p1, :cond_c

    .line 216
    :try_start_2
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 217
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    goto :goto_15

    .line 219
    :cond_c
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 220
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v1

    .line 219
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    .line 224
    :goto_15
    goto :goto_1a

    .line 222
    :catch_16
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public blacklist removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "mcInfo"    # Landroid/media/LoudnessCodecInfo;

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    goto :goto_a

    .line 272
    :catch_6
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .registers 3
    .param p1, "configurator"    # Landroid/media/LoudnessCodecController;

    .line 237
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V

    .line 238
    return-void
.end method

.method public blacklist startLoudnessCodecUpdates(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->startLoudnessCodecUpdates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    goto :goto_a

    .line 244
    :catch_6
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist stopLoudnessCodecUpdates(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->stopLoudnessCodecUpdates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 255
    goto :goto_a

    .line 253
    :catch_6
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
