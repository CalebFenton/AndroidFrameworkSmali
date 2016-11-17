.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field private mDestroyed:Z

.field private final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mIsLowPriority:Z

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
    .line 68
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
    .line 67
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    #@11
    .line 61
    return-void

    #@12
    .line 68
    :cond_0
    const/16 v0, 0x2710

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lowPriority"    # Z
    .param p4, "callbacks"    # Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@a
    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    #@c
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    #@11
    .line 74
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@13
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@18
    .line 76
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    #@1a
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    #@1f
    .line 78
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@21
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@26
    .line 81
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    #@28
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    #@2b
    .line 80
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    #@2d
    .line 84
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@2f
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    #@32
    .line 83
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@34
    .line 87
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    #@36
    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    #@39
    .line 86
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    #@3b
    .line 89
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;)V

    #@41
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@43
    .line 117
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@45
    .line 118
    new-instance v0, Landroid/os/UserHandle;

    #@47
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@4a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    #@4c
    .line 119
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@4e
    .line 120
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    #@50
    .line 121
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@52
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    #@55
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@57
    .line 122
    new-instance v0, Landroid/content/Intent;

    #@59
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@5e
    .line 123
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@60
    new-instance v1, Landroid/content/ComponentName;

    #@62
    const-string/jumbo v2, "com.android.printspooler"

    #@65
    .line 124
    const-string/jumbo v3, "com.android.printspooler.model.PrintSpoolerService"

    #@68
    .line 123
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@6e
    .line 116
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
    .line 605
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 606
    return-void

    #@5
    .line 614
    :cond_0
    iget-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    #@7
    if-eqz v8, :cond_1

    #@9
    .line 615
    const/4 v2, 0x1

    #@a
    .line 620
    .local v2, "flags":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@c
    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    #@e
    iget-object v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@10
    iget-object v11, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    #@12
    invoke-virtual {v8, v9, v10, v2, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@15
    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v6

    #@19
    .line 624
    .local v6, "startMillis":J
    :goto_1
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@1b
    if-eqz v8, :cond_2

    #@1d
    .line 639
    const/4 v8, 0x1

    #@1e
    iput-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@20
    .line 640
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@22
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    #@25
    .line 604
    return-void

    #@26
    .line 617
    .end local v2    # "flags":I
    .end local v6    # "startMillis":J
    :cond_1
    const v2, 0x4000001

    #@29
    .restart local v2    # "flags":I
    goto :goto_0

    #@2a
    .line 627
    .restart local v6    # "startMillis":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2d
    move-result-wide v8

    #@2e
    sub-long v0, v8, v6

    #@30
    .line 628
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    #@32
    sub-long v4, v8, v0

    #@34
    .line 629
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    #@36
    cmp-long v8, v4, v8

    #@38
    if-gtz v8, :cond_3

    #@3a
    .line 630
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    #@3c
    const-string/jumbo v9, "Cannot get spooler!"

    #@3f
    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@42
    throw v8

    #@43
    .line 633
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@45
    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_1

    #@49
    .line 634
    :catch_0
    move-exception v3

    #@4a
    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private clearClientLocked()V
    .locals 3

    #@0
    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 674
    :goto_0
    return-void

    #@7
    .line 677
    :catch_0
    move-exception v0

    #@8
    .line 678
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
    .line 595
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 597
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 599
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    #@e
    .line 600
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 595
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
    .line 584
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 585
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@6
    .line 586
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 583
    return-void

    #@b
    .line 584
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
    .line 591
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@2
    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@5
    .line 590
    return-void
.end method

.method private setClientLocked()V
    .locals 3

    #@0
    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@2
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    #@4
    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 666
    :goto_0
    return-void

    #@8
    .line 669
    :catch_0
    move-exception v0

    #@9
    .line 670
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
    .line 690
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
    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "Cannot invoke on the main thread"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 689
    :cond_0
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    #@0
    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 685
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 683
    :cond_0
    return-void
.end method

.method private unbindLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 644
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 645
    return-void

    #@6
    .line 658
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 648
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 652
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    #@12
    .line 653
    iput-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@14
    .line 654
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1b
    .line 655
    return-void

    #@1c
    .line 659
    :catch_0
    move-exception v0

    #@1d
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public clearCustomPrinterIconCache()V
    .locals 4

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 429
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 431
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 434
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@f
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@16
    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@18
    monitor-enter v2

    #@19
    .line 444
    const/4 v1, 0x1

    #@1a
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1c
    .line 445
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    :goto_0
    monitor-exit v2

    #@22
    .line 427
    return-void

    #@23
    .line 429
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 443
    :catchall_1
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 435
    :catch_0
    move-exception v0

    #@2a
    .line 436
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2d
    const-string/jumbo v2, "Error clearing custom printer icon cache."

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@33
    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 444
    const/4 v1, 0x1

    #@37
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@39
    .line 445
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3e
    goto :goto_0

    #@3f
    .line 443
    :catchall_2
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 437
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@43
    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@45
    monitor-enter v2

    #@46
    .line 444
    const/4 v3, 0x1

    #@47
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@49
    .line 445
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4b
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4e
    monitor-exit v2

    #@4f
    .line 437
    throw v1

    #@50
    .line 443
    :catchall_4
    move-exception v1

    #@51
    monitor-exit v2

    #@52
    throw v1
.end method

.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 179
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 181
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 184
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
    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 194
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 177
    return-void

    #@21
    .line 179
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 193
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 187
    :catch_0
    move-exception v1

    #@28
    .line 188
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
    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 194
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 193
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 185
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 186
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
    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 194
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 193
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 189
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 194
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 195
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 189
    throw v2

    #@67
    .line 193
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
    .line 552
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 556
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 557
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 558
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    #@c
    .line 559
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@f
    .line 560
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 551
    return-void

    #@14
    .line 556
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
    .line 565
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 566
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
    .line 567
    iget-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    #@10
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 566
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 568
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
    .line 569
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    #@28
    if-eqz v2, :cond_0

    #@2a
    const-string/jumbo v2, "true"

    #@2d
    .line 568
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@34
    .line 571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 574
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
    .line 564
    return-void

    #@4a
    .line 569
    :cond_0
    :try_start_2
    const-string/jumbo v2, "false"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 565
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2

    #@51
    .line 575
    :catch_0
    move-exception v1

    #@52
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    #@53
    .line 577
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@54
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 402
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 404
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 407
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    #@f
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@16
    move-result-object v1

    #@17
    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v2

    #@1a
    .line 418
    const/4 v3, 0x1

    #@1b
    :try_start_2
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v2

    #@23
    .line 407
    return-object v1

    #@24
    .line 402
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 417
    :catchall_1
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 409
    :catch_0
    move-exception v0

    #@2b
    .line 410
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2e
    const-string/jumbo v2, "Error getting custom printer icon."

    #@31
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@34
    .line 411
    const/4 v1, 0x0

    #@35
    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v2

    #@38
    .line 418
    const/4 v3, 0x1

    #@39
    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3b
    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3d
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@40
    monitor-exit v2

    #@41
    .line 411
    return-object v1

    #@42
    .line 417
    :catchall_2
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 412
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@46
    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@48
    monitor-enter v2

    #@49
    .line 418
    const/4 v3, 0x1

    #@4a
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@4c
    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4e
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@51
    monitor-exit v2

    #@52
    .line 412
    throw v1

    #@53
    .line 417
    :catchall_4
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 228
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 230
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 233
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
    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 244
    const/4 v4, 0x1

    #@1b
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 245
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 233
    return-object v2

    #@24
    .line 228
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 243
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 237
    :catch_0
    move-exception v1

    #@2b
    .line 238
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
    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@36
    monitor-enter v3

    #@37
    .line 244
    const/4 v2, 0x1

    #@38
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3a
    .line 245
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
    .line 248
    const/4 v2, 0x0

    #@41
    return-object v2

    #@42
    .line 243
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 235
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 236
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
    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 244
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 245
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 243
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 239
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 244
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 245
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 239
    throw v2

    #@6c
    .line 243
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
    .line 153
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 154
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 156
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 159
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
    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 170
    const/4 v4, 0x1

    #@1b
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 171
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 159
    return-object v2

    #@24
    .line 154
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 169
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 163
    :catch_0
    move-exception v1

    #@2b
    .line 164
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
    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@36
    monitor-enter v3

    #@37
    .line 170
    const/4 v2, 0x1

    #@38
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3a
    .line 171
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
    .line 174
    const/4 v2, 0x0

    #@41
    return-object v2

    #@42
    .line 169
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 161
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 162
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
    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 170
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 171
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 169
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 165
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 170
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 171
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 165
    throw v2

    #@6c
    .line 169
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public increasePriority()V
    .locals 4

    #@0
    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 129
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    #@7
    .line 131
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@d
    .line 134
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-nez v1, :cond_0

    #@11
    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .line 137
    :catch_0
    move-exception v0

    #@18
    .line 138
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "RemotePrintSpooler"

    #@1b
    const-string/jumbo v3, "Interrupted while waiting for operation to complete"

    #@1e
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1

    #@25
    .line 146
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 127
    :cond_1
    return-void
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 370
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 372
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 375
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    #@f
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@16
    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@18
    monitor-enter v2

    #@19
    .line 385
    const/4 v1, 0x1

    #@1a
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1c
    .line 386
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    :goto_0
    monitor-exit v2

    #@22
    .line 368
    return-void

    #@23
    .line 370
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 384
    :catchall_1
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 377
    :catch_0
    move-exception v0

    #@2a
    .line 378
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2d
    const-string/jumbo v2, "Error loading new custom printer icon."

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@33
    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 385
    const/4 v1, 0x1

    #@37
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@39
    .line 386
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3e
    goto :goto_0

    #@3f
    .line 384
    :catchall_2
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 379
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@43
    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@45
    monitor-enter v2

    #@46
    .line 385
    const/4 v3, 0x1

    #@47
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@49
    .line 386
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4b
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4e
    monitor-exit v2

    #@4f
    .line 379
    throw v1

    #@50
    .line 384
    :catchall_4
    move-exception v1

    #@51
    monitor-exit v2

    #@52
    throw v1
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 506
    .local p1, "servicesToKeep":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 507
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 508
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 509
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 512
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@14
    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 521
    const/4 v1, 0x1

    #@18
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 522
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v2

    #@20
    .line 505
    return-void

    #@21
    .line 507
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 520
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 513
    :catch_0
    move-exception v0

    #@28
    .line 514
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v2, "Error pruning approved print services."

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@31
    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 521
    const/4 v1, 0x1

    #@35
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 522
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 520
    :catchall_2
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 515
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@41
    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@43
    monitor-enter v2

    #@44
    .line 521
    const/4 v3, 0x1

    #@45
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@47
    .line 522
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@49
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4c
    monitor-exit v2

    #@4d
    .line 515
    throw v1

    #@4e
    .line 520
    :catchall_4
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method

.method public final removeObsoletePrintJobs()V
    .locals 5

    #@0
    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 529
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 531
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 534
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
    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 545
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 527
    return-void

    #@21
    .line 529
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 544
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 537
    :catch_0
    move-exception v1

    #@28
    .line 538
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
    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 545
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 544
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 535
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 536
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
    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 545
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 544
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 539
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 545
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 546
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 539
    throw v2

    #@67
    .line 544
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
    .line 476
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 477
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 478
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 479
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 482
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
    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 494
    const/4 v2, 0x1

    #@18
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 475
    return-void

    #@21
    .line 477
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 493
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 486
    :catch_0
    move-exception v1

    #@28
    .line 487
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
    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v3

    #@34
    .line 494
    const/4 v2, 0x1

    #@35
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 493
    :catchall_2
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 484
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@41
    .line 485
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
    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@4c
    monitor-enter v3

    #@4d
    .line 494
    const/4 v2, 0x1

    #@4e
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@50
    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 493
    :catchall_3
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2

    #@59
    .line 488
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5a
    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 494
    const/4 v4, 0x1

    #@5e
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@60
    .line 495
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@62
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@65
    monitor-exit v3

    #@66
    .line 488
    throw v2

    #@67
    .line 493
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
    .line 252
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@4
    .line 253
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 254
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@a
    .line 255
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v3

    #@e
    .line 258
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
    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 269
    const/4 v4, 0x1

    #@1c
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1e
    .line 270
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    monitor-exit v3

    #@24
    .line 258
    return v2

    #@25
    .line 253
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 268
    :catchall_1
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 262
    :catch_0
    move-exception v1

    #@2c
    .line 263
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
    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v3

    #@38
    .line 269
    const/4 v2, 0x1

    #@39
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3b
    .line 270
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
    .line 273
    return v4

    #@42
    .line 268
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 260
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 261
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
    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 269
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 270
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 268
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 264
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 269
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 270
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 264
    throw v2

    #@6c
    .line 268
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
    .line 451
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@4
    .line 452
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@a
    .line 454
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v3

    #@e
    .line 457
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
    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 468
    const/4 v4, 0x1

    #@1c
    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1e
    .line 469
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    monitor-exit v3

    #@24
    .line 457
    return v2

    #@25
    .line 452
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 467
    :catchall_1
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 461
    :catch_0
    move-exception v1

    #@2c
    .line 462
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
    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v3

    #@38
    .line 468
    const/4 v2, 0x1

    #@39
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3b
    .line 469
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
    .line 472
    return v4

    #@42
    .line 467
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .line 459
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@46
    .line 460
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
    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v3

    #@52
    .line 468
    const/4 v2, 0x1

    #@53
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@55
    .line 469
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5a
    goto :goto_0

    #@5b
    .line 467
    :catchall_3
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 463
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@5f
    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v3

    #@62
    .line 468
    const/4 v4, 0x1

    #@63
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@65
    .line 469
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@67
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@6a
    monitor-exit v3

    #@6b
    .line 463
    throw v2

    #@6c
    .line 467
    :catchall_5
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 285
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 287
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 290
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@14
    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 298
    const/4 v1, 0x1

    #@18
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 299
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v2

    #@20
    .line 283
    return-void

    #@21
    .line 285
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 297
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 291
    :catch_0
    move-exception v0

    #@28
    .line 292
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v2, "Error setting progress."

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@31
    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 298
    const/4 v1, 0x1

    #@35
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 299
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 297
    :catchall_2
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 293
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@41
    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@43
    monitor-enter v2

    #@44
    .line 298
    const/4 v3, 0x1

    #@45
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@47
    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@49
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4c
    monitor-exit v2

    #@4d
    .line 293
    throw v1

    #@4e
    .line 297
    :catchall_4
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 341
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 342
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 343
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 346
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@14
    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 354
    const/4 v1, 0x1

    #@18
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 355
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v2

    #@20
    .line 339
    return-void

    #@21
    .line 341
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 353
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 347
    :catch_0
    move-exception v0

    #@28
    .line 348
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v2, "Error setting status."

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@31
    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 354
    const/4 v1, 0x1

    #@35
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 355
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 353
    :catchall_2
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 349
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@41
    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@43
    monitor-enter v2

    #@44
    .line 354
    const/4 v3, 0x1

    #@45
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@47
    .line 355
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@49
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4c
    monitor-exit v2

    #@4d
    .line 349
    throw v1

    #@4e
    .line 353
    :catchall_4
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 312
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 314
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 317
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@14
    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 325
    const/4 v1, 0x1

    #@18
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1a
    .line 326
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    :goto_0
    monitor-exit v2

    #@20
    .line 310
    return-void

    #@21
    .line 312
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 324
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 318
    :catch_0
    move-exception v0

    #@28
    .line 319
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RemotePrintSpooler"

    #@2b
    const-string/jumbo v2, "Error setting status."

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@31
    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 325
    const/4 v1, 0x1

    #@35
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@37
    .line 326
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3c
    goto :goto_0

    #@3d
    .line 324
    :catchall_2
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 320
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    #@41
    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@43
    monitor-enter v2

    #@44
    .line 325
    const/4 v3, 0x1

    #@45
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@47
    .line 326
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@49
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@4c
    monitor-exit v2

    #@4d
    .line 320
    throw v1

    #@4e
    .line 324
    :catchall_4
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    #@3
    .line 202
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    #@9
    .line 204
    const/4 v2, 0x0

    #@a
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 207
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
    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3

    #@1a
    .line 220
    const/4 v2, 0x1

    #@1b
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@1d
    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    :goto_0
    monitor-exit v3

    #@23
    .line 200
    return-void

    #@24
    .line 202
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 219
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 210
    :catch_0
    move-exception v1

    #@2b
    .line 211
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
    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@37
    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v3

    #@3a
    .line 220
    const/4 v2, 0x1

    #@3b
    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@3d
    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@42
    goto :goto_0

    #@43
    .line 219
    :catchall_2
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2

    #@46
    .line 208
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@47
    .line 209
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
    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@53
    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@55
    monitor-enter v3

    #@56
    .line 220
    const/4 v2, 0x1

    #@57
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@59
    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@5b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@5e
    goto :goto_0

    #@5f
    .line 219
    :catchall_3
    move-exception v2

    #@60
    monitor-exit v3

    #@61
    throw v2

    #@62
    .line 212
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    #@63
    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@66
    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@68
    monitor-enter v3

    #@69
    .line 220
    const/4 v4, 0x1

    #@6a
    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    #@6c
    .line 221
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    #@6e
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@71
    monitor-exit v3

    #@72
    .line 212
    throw v2

    #@73
    .line 219
    :catchall_5
    move-exception v2

    #@74
    monitor-exit v3

    #@75
    throw v2
.end method
