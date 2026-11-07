.class public Landroid/telephony/mbms/InternalGroupCallSessionCallback;
.super Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;
.source "InternalGroupCallSessionCallback.java"


# instance fields
.field private final blacklist mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appCallback"    # Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 31
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    .line 32
    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    .line 33
    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "currentSais"    # Ljava/util/List;
    .param p2, "availableSais"    # Ljava/util/List;

    .line 57
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

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
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/util/List;Ljava/util/List;)V

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

.method public blacklist onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 38
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

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
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;ILjava/lang/String;)V

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

.method public blacklist onMiddlewareReady()V
    .registers 5

    .line 95
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

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
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)V

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

.method public blacklist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 7
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 76
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

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
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/lang/String;I)V

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

.method public blacklist stop()V
    .registers 2

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    .line 115
    return-void
.end method
