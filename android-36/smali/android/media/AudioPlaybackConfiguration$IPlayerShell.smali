.class final Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IPlayerShell"
.end annotation


# instance fields
.field private volatile greylist-max-o mIPlayer:Landroid/media/IPlayer;

.field final greylist-max-o mMonitor:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V
    .registers 3
    .param p1, "monitor"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "iplayer"    # Landroid/media/IPlayer;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    .line 955
    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    .line 956
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 2

    .line 978
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v0, :cond_9

    .line 980
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$mplayerDied(Landroid/media/AudioPlaybackConfiguration;)V

    .line 982
    :cond_9
    return-void
.end method

.method greylist-max-o getIPlayer()Landroid/media/IPlayer;
    .registers 2

    .line 974
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-object v0
.end method

.method declared-synchronized greylist-max-o monitorDeath()V
    .registers 5

    monitor-enter p0

    .line 959
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_43

    if-nez v0, :cond_7

    .line 960
    monitor-exit p0

    return-void

    .line 963
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_43

    .line 970
    goto :goto_41

    .line 964
    .end local p0    # "this":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catch_12
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_38

    .line 966
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link to client death for piid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 968
    :cond_38
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_43

    .line 971
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    monitor-exit p0

    return-void

    .line 958
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method declared-synchronized greylist-max-o release()V
    .registers 3

    monitor-enter p0

    .line 985
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_7

    .line 986
    monitor-exit p0

    return-void

    .line 988
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    .line 990
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    .line 991
    monitor-exit p0

    return-void

    .line 984
    .end local p0    # "this":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
