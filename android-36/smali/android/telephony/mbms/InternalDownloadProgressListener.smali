.class public Landroid/telephony/mbms/InternalDownloadProgressListener;
.super Landroid/telephony/mbms/IDownloadProgressListener$Stub;
.source "InternalDownloadProgressListener.java"


# instance fields
.field private final greylist-max-o mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "appListener"    # Landroid/telephony/mbms/DownloadProgressListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 33
    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    .line 34
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    .line 35
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 18
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 43
    return-void

    .line 46
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 48
    .local v1, "token":J
    :try_start_9
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadProgressListener$1;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Landroid/telephony/mbms/InternalDownloadProgressListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_21

    .line 56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    nop

    .line 58
    return-void

    .line 56
    :catchall_21
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw v0
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    .line 62
    return-void
.end method
