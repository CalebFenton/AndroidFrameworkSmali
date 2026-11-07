.class public Landroid/telephony/mbms/InternalStreamingSessionCallback;
.super Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;
.source "InternalStreamingSessionCallback.java"


# instance fields
.field private final greylist-max-o mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appCallback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 33
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 34
    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 40
    return-void

    .line 43
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 45
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw v2
.end method

.method public greylist-max-o onMiddlewareReady()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 79
    return-void

    .line 82
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw v2
.end method

.method public greylist-max-o onStreamingServicesUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/StreamingServiceInfo;>;"
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 60
    return-void

    .line 63
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 65
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    nop

    .line 74
    return-void

    .line 72
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw v2
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 97
    return-void
.end method
