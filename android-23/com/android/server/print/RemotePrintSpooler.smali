.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;,
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "eng"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const v0, 0x1d4c0

    #@e
    :goto_0
    int-to-long v0, v0

    #@f
    .line 59
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    #@11
    .line 53
    return-void

    #@12
    .line 60
    :cond_0
    const/16 v0, 0x2710

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "callbacks"    # Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@a
    .line 64
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    #@c
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    #@11
    .line 66
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@13
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@18
    .line 68
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    #@1a
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    #@1f
    .line 70
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@21
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@26
    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@2e
    .line 98
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@30
    .line 99
    new-instance v0, Landroid/os/UserHandle;

    #@32
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@35
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    #@37
    .line 100
    iput-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@39
    .line 101
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@3b
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@40
    .line 102
    new-instance v0, Landroid/content/Intent;

    #@42
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@47
    .line 103
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@49
    new-instance v1, Landroid/content/ComponentName;

    #@4b
    const-string/jumbo v2, "com.android.printspooler"

    #@4e
    .line 104
    const-string/jumbo v3, "com.android.printspooler.model.PrintSpoolerService"

    #@51
    .line 103
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@57
    .line 97
    return-void
.end method

.method private bindLocked()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 361
    return-void

    #@5
    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@7
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@9
    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@b
    .line 368
    iget-object v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    #@d
    const v11, 0x4000001

    #@10
    .line 367
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@13
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v6

    #@17
    .line 372
    .local v6, "startMillis":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 387
    const/4 v3, 0x1

    #@1c
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1e
    .line 388
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@23
    .line 359
    return-void

    #@24
    .line 375
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@27
    move-result-wide v8

    #@28
    sub-long v0, v8, v6

    #@2a
    .line 376
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    #@2c
    sub-long v4, v8, v0

    #@2e
    .line 377
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    #@30
    cmp-long v3, v4, v8

    #@32
    if-gtz v3, :cond_2

    #@34
    .line 378
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    #@36
    const-string/jumbo v8, "Cannot get spooler!"

    #@39
    invoke-direct {v3, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 381
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3f
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    goto :goto_0

    #@43
    .line 382
    :catch_0
    move-exception v2

    #@44
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private clearClientLocked()V
    .locals 3

    #@0
    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 422
    :goto_0
    return-void

    #@7
    .line 425
    :catch_0
    move-exception v0

    #@8
    .line 426
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintSpooler"

    #@b
    const-string/jumbo v2, "Error clearing print spooler client"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 352
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 354
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    #@e
    .line 355
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 350
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private onAllPrintJobsHandled()V
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 340
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@6
    .line 341
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 338
    return-void

    #@b
    .line 339
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 1
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@2
    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@5
    .line 345
    return-void
.end method

.method private setClientLocked()V
    .locals 3

    #@0
    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@4
    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 414
    :goto_0
    return-void

    #@8
    .line 417
    :catch_0
    move-exception v0

    #@9
    .line 418
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintSpooler"

    #@c
    const-string/jumbo v2, "Error setting print spooler client"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    #@0
    .prologue
    .line 438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@d
    move-result-object v1

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "Cannot invoke on the main thread"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 437
    :cond_0
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    #@0
    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 431
    :cond_0
    return-void
.end method

.method private unbindLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 392
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 393
    return-void

    #@6
    .line 406
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 396
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 400
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    #@12
    .line 401
    iput-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@14
    .line 402
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1b
    .line 403
    return-void

    #@1c
    .line 407
    :catch_0
    move-exception v0

    #@1d
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 135
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 137
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 140
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@14
    .line 149
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 150
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 151
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 133
    return-void

    #@21
    .line 135
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 149
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 143
    :catch_0
    move-exception v1

    #@28
    .line 144
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v3, "Error creating print job."

    #@2e
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@31
    .line 149
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 150
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 151
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 149
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 141
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 142
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@44
    const-string/jumbo v3, "Error creating print job."

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4a
    .line 149
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 150
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 151
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 149
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 145
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 149
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 150
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 151
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 145
    throw v2

    #@67
    .line 149
    :catchall_5
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2
.end method

.method public final destroy()V
    .locals 2

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 311
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 313
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    #@c
    .line 314
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@f
    .line 315
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 306
    return-void

    #@14
    .line 311
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 321
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v4, "destroyed="

    #@a
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@d
    move-result-object v2

    #@e
    .line 322
    iget-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@10
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 321
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 323
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v4, "bound="

    #@22
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@25
    move-result-object v4

    #@26
    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@28
    if-eqz v2, :cond_0

    #@2a
    const-string/jumbo v2, "true"

    #@2d
    .line 323
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@34
    .line 326
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 329
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@3a
    move-result-object v2

    #@3b
    invoke-interface {v2}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v2

    #@3f
    const/4 v4, 0x1

    #@40
    new-array v4, v4, [Ljava/lang/String;

    #@42
    const/4 v5, 0x0

    #@43
    aput-object p3, v4, v5

    #@45
    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    :goto_1
    monitor-exit v3

    #@49
    .line 319
    return-void

    #@4a
    .line 324
    :cond_0
    :try_start_2
    const-string/jumbo v2, "false"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 320
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2

    #@51
    .line 330
    :catch_0
    move-exception v1

    #@52
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    #@53
    .line 332
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@54
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 184
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 186
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@f
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@16
    move-result-object v2

    #@17
    .line 199
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 200
    const/4 v4, 0x1

    #@1b
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 201
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 189
    return-object v2

    #@24
    .line 184
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 199
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 193
    :catch_0
    move-exception v1

    #@2b
    .line 194
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2e
    const-string/jumbo v3, "Error getting print job info."

    #@31
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@34
    .line 199
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@36
    monitor-enter v3

    #@37
    .line 200
    const/4 v2, 0x1

    #@38
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3a
    .line 201
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3f
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v3

    #@40
    .line 204
    const/4 v2, 0x0

    #@41
    return-object v2

    #@42
    .line 199
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 191
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 192
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@49
    const-string/jumbo v3, "Error getting print job info."

    #@4c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4f
    .line 199
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 200
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 201
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 199
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 195
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 199
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 200
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 201
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 195
    throw v2

    #@6c
    .line 199
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "state"    # I
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 110
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 112
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 115
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    #@f
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@16
    move-result-object v2

    #@17
    .line 125
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 126
    const/4 v4, 0x1

    #@1b
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 127
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 115
    return-object v2

    #@24
    .line 110
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 125
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 119
    :catch_0
    move-exception v1

    #@2b
    .line 120
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2e
    const-string/jumbo v3, "Error getting print jobs."

    #@31
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@34
    .line 125
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@36
    monitor-enter v3

    #@37
    .line 126
    const/4 v2, 0x1

    #@38
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3a
    .line 127
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3f
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v3

    #@40
    .line 130
    const/4 v2, 0x0

    #@41
    return-object v2

    #@42
    .line 125
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 117
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 118
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@49
    const-string/jumbo v3, "Error getting print jobs."

    #@4c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4f
    .line 125
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 126
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 127
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 125
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 121
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 125
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 126
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 127
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 121
    throw v2

    #@6c
    .line 125
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public final removeObsoletePrintJobs()V
    .locals 5

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 284
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 286
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 289
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@14
    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 300
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 301
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 282
    return-void

    #@21
    .line 284
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 299
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 292
    :catch_0
    move-exception v1

    #@28
    .line 293
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v3, "Error removing obsolete print jobs ."

    #@2e
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@31
    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 300
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 301
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 299
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 290
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 291
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@44
    const-string/jumbo v3, "Error removing obsolete print jobs ."

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4a
    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 300
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 301
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 299
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 294
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 300
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 301
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 294
    throw v2

    #@67
    .line 299
    :catchall_5
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 259
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 261
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 264
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@14
    .line 275
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 276
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 277
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 257
    return-void

    #@21
    .line 259
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 275
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 268
    :catch_0
    move-exception v1

    #@28
    .line 269
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v3, "Error setting print job cancelling."

    #@2e
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@31
    .line 275
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 276
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 277
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 275
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 266
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 267
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@44
    const-string/jumbo v3, "Error setting print job cancelling."

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4a
    .line 275
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 276
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 277
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 275
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 270
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 275
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 276
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 277
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 270
    throw v2

    #@67
    .line 275
    :catchall_5
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 208
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@4
    .line 209
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@a
    .line 211
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v3

    #@e
    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    #@10
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@17
    move-result v2

    #@18
    .line 224
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 225
    const/4 v4, 0x1

    #@1c
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1e
    .line 226
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    monitor-exit v3

    #@24
    .line 214
    return v2

    #@25
    .line 209
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 224
    :catchall_1
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 218
    :catch_0
    move-exception v1

    #@2c
    .line 219
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2f
    const-string/jumbo v3, "Error setting print job state."

    #@32
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@35
    .line 224
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v3

    #@38
    .line 225
    const/4 v2, 0x1

    #@39
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3b
    .line 226
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3d
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@40
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v3

    #@41
    .line 229
    return v4

    #@42
    .line 224
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 216
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 217
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@49
    const-string/jumbo v3, "Error setting print job state."

    #@4c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4f
    .line 224
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 225
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 226
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 224
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 220
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 224
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 225
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 226
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 220
    throw v2

    #@6c
    .line 224
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 233
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@4
    .line 234
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@a
    .line 236
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v3

    #@e
    .line 239
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@10
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@17
    move-result v2

    #@18
    .line 249
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 250
    const/4 v4, 0x1

    #@1c
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1e
    .line 251
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    monitor-exit v3

    #@24
    .line 239
    return v2

    #@25
    .line 234
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 249
    :catchall_1
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 243
    :catch_0
    move-exception v1

    #@2c
    .line 244
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2f
    const-string/jumbo v3, "Error setting print job tag."

    #@32
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@35
    .line 249
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v3

    #@38
    .line 250
    const/4 v2, 0x1

    #@39
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3b
    .line 251
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3d
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@40
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v3

    #@41
    .line 254
    return v4

    #@42
    .line 249
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 241
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 242
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@49
    const-string/jumbo v3, "Error setting print job tag."

    #@4c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4f
    .line 249
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 250
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 251
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 249
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 245
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 249
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 250
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 251
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 245
    throw v2

    #@6c
    .line 249
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 158
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 160
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 163
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@14
    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 175
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 176
    const/4 v2, 0x1

    #@1b
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 177
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    :goto_0
    monitor-exit v3

    #@23
    .line 156
    return-void

    #@24
    .line 158
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 175
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 166
    :catch_0
    move-exception v1

    #@2b
    .line 167
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string/jumbo v2, "RemotePrintSpooler"

    #@2e
    const-string/jumbo v3, "Error writing print job data."

    #@31
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@34
    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@37
    .line 175
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v3

    #@3a
    .line 176
    const/4 v2, 0x1

    #@3b
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3d
    .line 177
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@42
    goto :goto_0

    #@43
    .line 175
    :catchall_2
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2

    #@46
    .line 164
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@47
    .line 165
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemotePrintSpooler"

    #@4a
    const-string/jumbo v3, "Error writing print job data."

    #@4d
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@50
    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@53
    .line 175
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@55
    monitor-enter v3

    #@56
    .line 176
    const/4 v2, 0x1

    #@57
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@59
    .line 177
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5e
    goto :goto_0

    #@5f
    .line 175
    :catchall_3
    move-exception v2

    #@60
    monitor-exit v3

    #@61
    throw v2

    #@62
    .line 168
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@63
    .line 174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@66
    .line 175
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@68
    monitor-enter v3

    #@69
    .line 176
    const/4 v4, 0x1

    #@6a
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@6c
    .line 177
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6e
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@71
    monitor-exit v3

    #@72
    .line 168
    throw v2

    #@73
    .line 175
    :catchall_5
    move-exception v2

    #@74
    monitor-exit v3

    #@75
    throw v2
.end method
