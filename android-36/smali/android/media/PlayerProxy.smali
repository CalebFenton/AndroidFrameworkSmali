.class public Landroid/media/PlayerProxy;
.super Ljava/lang/Object;
.source "PlayerProxy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PlayerProxy"


# instance fields
.field private final greylist-max-o mConf:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_8

    .line 49
    iput-object p1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 50
    return-void

    .line 47
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .registers 6
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->toParcelable()Landroid/media/VolumeShaperConfiguration;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation;->toParcelable()Landroid/media/VolumeShaperOperation;

    move-result-object v2

    .line 146
    invoke-interface {v0, v1, v2}, Landroid/media/IPlayer;->applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 152
    nop

    .line 153
    return-void

    .line 148
    :catch_13
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for applyVolumeShaper operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist pause()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IPlayer;->pause()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 77
    nop

    .line 78
    return-void

    .line 74
    :catch_b
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for pause operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setPan(F)V
    .registers 5
    .param p1, "pan"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setPan(F)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 118
    nop

    .line 119
    return-void

    .line 115
    :catch_b
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for setPan operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setStartDelayMs(I)V
    .registers 5
    .param p1, "delayMs"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setStartDelayMs(I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 133
    nop

    .line 134
    return-void

    .line 129
    :catch_b
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for setStartDelayMs operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setVolume(F)V
    .registers 5
    .param p1, "vol"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setVolume(F)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 104
    nop

    .line 105
    return-void

    .line 101
    :catch_b
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for setVolume operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist start()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IPlayer;->start()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 64
    nop

    .line 65
    return-void

    .line 61
    :catch_b
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for start operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist stop()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IPlayer;->stop()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 90
    nop

    .line 91
    return-void

    .line 87
    :catch_b
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No player to proxy for stop operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
