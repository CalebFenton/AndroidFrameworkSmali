.class public final Landroid/companion/virtual/audio/VirtualAudioDevice;
.super Ljava/lang/Object;
.source "VirtualAudioDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;,
        Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

.field private blacklist mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

.field private final blacklist mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "virtualDisplay"    # Landroid/hardware/display/VirtualDisplay;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .param p6, "listener"    # Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 96
    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 97
    iput-object p4, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p5, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 99
    iput-object p6, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_22

    .line 178
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->close()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 182
    :try_start_c
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionEnded()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_1c

    .line 185
    nop

    .line 187
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    if-eqz v0, :cond_22

    .line 188
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    invoke-interface {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;->onClosed()V

    goto :goto_22

    .line 183
    :catch_1c
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;
    .registers 6
    .param p1, "captureFormat"    # Landroid/media/AudioFormat;

    .line 141
    const-string v0, "captureFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 144
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio capture while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2b

    .line 148
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 152
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 154
    invoke-virtual {v3}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    .line 152
    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_42} :catch_4a

    .line 157
    nop

    .line 158
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    return-object v0

    .line 155
    :catch_4a
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;
    .registers 6
    .param p1, "injectionFormat"    # Landroid/media/AudioFormat;

    .line 110
    const-string/jumbo v0, "injectionFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 113
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio injection while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2c

    .line 117
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 121
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 123
    invoke-virtual {v3}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    .line 121
    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_4b

    .line 126
    nop

    .line 127
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    return-object v0

    .line 124
    :catch_4b
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
