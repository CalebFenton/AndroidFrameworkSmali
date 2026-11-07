.class public Landroid/telephony/mbms/InternalDownloadSessionCallback;
.super Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;
.source "InternalDownloadSessionCallback.java"


# instance fields
.field private final greylist-max-o mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appCallback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    .line 33
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 34
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 39
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

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
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V

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

.method public greylist-max-o onFileServicesUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 59
    return-void

    .line 62
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 64
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw v2
.end method

.method public greylist-max-o onMiddlewareReady()V
    .registers 5

    .line 77
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 78
    return-void

    .line 81
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 83
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw v2
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    .line 96
    return-void
.end method
