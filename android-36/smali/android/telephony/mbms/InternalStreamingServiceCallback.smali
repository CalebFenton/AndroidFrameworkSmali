.class public Landroid/telephony/mbms/InternalStreamingServiceCallback;
.super Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.source "InternalStreamingServiceCallback.java"


# instance fields
.field private final greylist-max-o mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appCallback"    # Landroid/telephony/mbms/StreamingServiceCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 31
    invoke-direct {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    .line 32
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    .line 33
    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method


# virtual methods
.method public greylist-max-o onBroadcastSignalStrengthUpdated(I)V
    .registers 6
    .param p1, "signalStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 96
    return-void

    .line 99
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 108
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw v2
.end method

.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 39
    return-void

    .line 42
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 44
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    nop

    .line 53
    return-void

    .line 51
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw v2
.end method

.method public greylist-max-o onMediaDescriptionUpdated()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 77
    return-void

    .line 80
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 82
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw v2
.end method

.method public greylist-max-o onStreamMethodUpdated(I)V
    .registers 6
    .param p1, "methodType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 115
    return-void

    .line 118
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 120
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw v2
.end method

.method public greylist-max-o onStreamStateUpdated(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 58
    return-void

    .line 61
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 63
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    nop

    .line 72
    return-void

    .line 70
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    throw v2
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    .line 133
    return-void
.end method
