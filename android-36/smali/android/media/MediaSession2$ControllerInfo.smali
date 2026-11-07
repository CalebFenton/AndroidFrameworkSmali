.class public final Landroid/media/MediaSession2$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field blacklist mAllowedCommands:Landroid/media/Session2CommandGroup;

.field private final blacklist mConnectionHints:Landroid/os/Bundle;

.field private final blacklist mControllerBinder:Landroid/media/Controller2Link;

.field private final blacklist mIsTrusted:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeqNumber:I

.field private blacklist mPendingCommands:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/ResultReceiver;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

.field private blacklist mRequestedCommandSeqNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ZLandroid/media/Controller2Link;Landroid/os/Bundle;)V
    .registers 6

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    .line 682
    iput-object p1, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 683
    iput-boolean p2, p0, Landroid/media/MediaSession2$ControllerInfo;->mIsTrusted:Z

    .line 684
    iput-object p3, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    .line 685
    iput-object p4, p0, Landroid/media/MediaSession2$ControllerInfo;->mConnectionHints:Landroid/os/Bundle;

    .line 686
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$ControllerInfo;->mPendingCommands:Landroid/util/ArrayMap;

    .line 687
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$ControllerInfo;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    return-void
.end method

.method private blacklist getNextSeqNumber()I
    .registers 4

    .line 836
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mNextSeqNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/MediaSession2$ControllerInfo;->mNextSeqNumber:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception p0

    .line 838
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method blacklist addRequestedCommandSeqNumber(I)V
    .registers 3

    .line 824
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 826
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method blacklist cancelSessionCommand(Ljava/lang/Object;)V
    .registers 4

    .line 807
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 809
    :cond_5
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 811
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1d

    if-eqz p1, :cond_1c

    .line 813
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/Controller2Link;->cancelSessionCommand(I)V

    :cond_1c
    :goto_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 811
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 740
    instance-of v0, p1, Landroid/media/MediaSession2$ControllerInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    .line 743
    :cond_a
    check-cast p1, Landroid/media/MediaSession2$ControllerInfo;

    .line 744
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_1e

    iget-object v1, p1, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-eqz v1, :cond_15

    goto :goto_1e

    .line 747
    :cond_15
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 745
    :cond_1e
    :goto_1e
    iget-object p0, p1, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist getConnectionHints()Landroid/os/Bundle;
    .registers 2

    .line 718
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mConnectionHints:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 703
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getRemoteUserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 1

    .line 695
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-object p0
.end method

.method public whitelist getUid()I
    .registers 1

    .line 710
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 735
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public greylist-max-o isTrusted()Z
    .registers 1

    .line 730
    iget-boolean p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mIsTrusted:Z

    return p0
.end method

.method blacklist notifyConnected(Landroid/os/Bundle;)V
    .registers 3

    .line 758
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_5

    goto :goto_c

    .line 761
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/media/MediaSession2$ControllerInfo;->getNextSeqNumber()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/media/Controller2Link;->notifyConnected(ILandroid/os/Bundle;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :goto_c
    return-void
.end method

.method blacklist notifyDisconnected()V
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_5

    goto :goto_c

    .line 771
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/media/MediaSession2$ControllerInfo;->getNextSeqNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/Controller2Link;->notifyDisconnected(I)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :goto_c
    return-void
.end method

.method blacklist notifyPlaybackActiveChanged(Z)V
    .registers 3

    .line 778
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_5

    goto :goto_c

    .line 781
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/media/MediaSession2$ControllerInfo;->getNextSeqNumber()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/media/Controller2Link;->notifyPlaybackActiveChanged(IZ)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :goto_c
    return-void
.end method

.method blacklist receiveCommandResult(Landroid/os/ResultReceiver;)V
    .registers 3

    .line 818
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method blacklist removeRequestedCommandSeqNumber(I)Z
    .registers 3

    .line 830
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 832
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method blacklist sendSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 8

    .line 789
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    if-nez v0, :cond_5

    goto :goto_2d

    .line 792
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/media/MediaSession2$ControllerInfo;->getNextSeqNumber()I

    move-result v0

    .line 793
    iget-object v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_1f

    .line 794
    :try_start_c
    iget-object v2, p0, Landroid/media/MediaSession2$ControllerInfo;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1c

    .line 796
    :try_start_16
    iget-object v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mControllerBinder:Landroid/media/Controller2Link;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/media/Controller2Link;->sendSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1b} :catch_1f

    return-void

    :catchall_1c
    move-exception p1

    .line 795
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 799
    :catch_1f
    iget-object p1, p0, Landroid/media/MediaSession2$ControllerInfo;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 800
    :try_start_22
    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 802
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_2d
    return-void

    :catchall_2e
    move-exception p0

    .line 801
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 754
    invoke-virtual {v1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowedCommands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/MediaSession2$ControllerInfo;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
