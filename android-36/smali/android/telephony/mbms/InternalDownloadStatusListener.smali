.class public Landroid/telephony/mbms/InternalDownloadStatusListener;
.super Landroid/telephony/mbms/IDownloadStatusListener$Stub;
.source "InternalDownloadStatusListener.java"


# instance fields
.field private final greylist-max-o mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appCallback"    # Landroid/telephony/mbms/DownloadStatusListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 33
    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    .line 34
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    .line 35
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 8
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 42
    return-void

    .line 45
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 47
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadStatusListener$1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStatusListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    throw v2
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    .line 60
    return-void
.end method
