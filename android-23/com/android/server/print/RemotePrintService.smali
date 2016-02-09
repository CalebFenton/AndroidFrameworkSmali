.class final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;,
        Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;,
        Lcom/android/server/print/RemotePrintService$MyHandler;,
        Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintService"


# instance fields
.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDiscoveryPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasActivePrintJobs:Z

.field private mHasPrinterDiscoverySession:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mPendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintService:Landroid/printservice/IPrintService;

.field private final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private mTrackedPrinterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "printerIds"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroy()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "priorityList"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p5, "callbacks"    # Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@a
    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;)V

    #@10
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    #@12
    .line 102
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    #@14
    .line 103
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@16
    .line 104
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@18
    .line 105
    new-instance v0, Landroid/content/Intent;

    #@1a
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@1d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    #@25
    .line 106
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    #@27
    .line 107
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@29
    .line 108
    new-instance v0, Lcom/android/server/print/RemotePrintService$MyHandler;

    #@2b
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$MyHandler;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V

    #@32
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@34
    .line 109
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    #@36
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@39
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    #@3b
    .line 101
    return-void
.end method

.method private ensureBound()V
    .locals 5

    #@0
    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 503
    :cond_0
    return-void

    #@b
    .line 508
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@e
    .line 509
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    #@10
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    #@12
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    #@14
    .line 511
    new-instance v3, Landroid/os/UserHandle;

    #@16
    iget v4, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    #@18
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@1b
    .line 510
    const v4, 0x4000001

    #@1e
    .line 509
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@21
    .line 501
    return-void
.end method

.method private ensureUnbound()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 515
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 521
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    #@e
    .line 522
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@13
    .line 523
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@15
    .line 524
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@17
    .line 525
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@19
    .line 526
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@1b
    .line 527
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@23
    const/4 v2, 0x0

    #@24
    invoke-interface {v1, v2}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 533
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@29
    invoke-interface {v1}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@30
    .line 534
    iput-object v4, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@32
    .line 535
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    #@34
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    #@36
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@39
    .line 514
    :cond_1
    return-void

    #@3a
    .line 516
    :cond_2
    return-void

    #@3b
    .line 530
    :catch_0
    move-exception v0

    #@3c
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleBinderDied()V
    .locals 2

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@2
    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 150
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@d
    .line 151
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    #@10
    .line 152
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@12
    invoke-interface {v0, p0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onServiceDied(Lcom/android/server/print/RemotePrintService;)V

    #@15
    .line 148
    return-void
.end method

.method private handleCreatePrinterDiscoverySession()V
    .locals 3

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 249
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@6
    .line 250
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 251
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@f
    .line 252
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@11
    new-instance v2, Lcom/android/server/print/RemotePrintService$4;

    #@13
    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$4;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 247
    :goto_0
    return-void

    #@1a
    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@1c
    invoke-interface {v1}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 264
    :catch_0
    move-exception v0

    #@21
    .line 265
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@24
    const-string/jumbo v2, "Error creating printer discovery session."

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method

.method private handleDestroy()V
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 124
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    #@6
    .line 127
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 128
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    #@d
    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 133
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    #@14
    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@17
    .line 140
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    #@1a
    .line 120
    return-void
.end method

.method private handleDestroyPrinterDiscoverySession()V
    .locals 3

    #@0
    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 276
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@6
    .line 277
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_3

    #@c
    .line 280
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@17
    .line 285
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@19
    new-instance v2, Lcom/android/server/print/RemotePrintService$5;

    #@1b
    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$5;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@1e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 274
    :cond_1
    :goto_0
    return-void

    #@22
    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@25
    .line 282
    return-void

    #@26
    .line 296
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@28
    invoke-interface {v1}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 302
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 303
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@32
    goto :goto_0

    #@33
    .line 297
    :catch_0
    move-exception v0

    #@34
    .line 298
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@37
    const-string/jumbo v2, "Error destroying printer dicovery session."

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_1
.end method

.method private handleOnAllPrintJobsHandled()V
    .locals 2

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 161
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@6
    .line 162
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_3

    #@c
    .line 165
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@17
    .line 170
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@19
    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    #@1b
    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 159
    :cond_1
    :goto_0
    return-void

    #@22
    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@25
    .line 167
    return-void

    #@26
    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 183
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    #@2d
    goto :goto_0
.end method

.method private handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 222
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@6
    .line 223
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 224
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@f
    .line 225
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@11
    new-instance v2, Lcom/android/server/print/RemotePrintService$3;

    #@13
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$3;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 220
    :goto_0
    return-void

    #@1a
    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@1c
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 237
    :catch_0
    move-exception v0

    #@21
    .line 238
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@24
    const-string/jumbo v2, "Error announcing queued pring job."

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method

.method private handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 195
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 196
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@c
    .line 197
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@e
    new-instance v2, Lcom/android/server/print/RemotePrintService$2;

    #@10
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 193
    :goto_0
    return-void

    #@17
    .line 208
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@19
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 209
    :catch_0
    move-exception v0

    #@1e
    .line 210
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@21
    const-string/jumbo v2, "Error canceling a pring job."

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method private handleStartPrinterDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 316
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@a
    .line 317
    if-eqz p1, :cond_0

    #@c
    .line 318
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@e
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@11
    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    .line 321
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@1a
    .line 322
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@1c
    new-instance v2, Lcom/android/server/print/RemotePrintService$6;

    #@1e
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    .line 313
    :goto_0
    return-void

    #@25
    .line 333
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@27
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 334
    :catch_0
    move-exception v0

    #@2c
    .line 335
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@2f
    const-string/jumbo v2, "Error starting printer dicovery."

    #@32
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method private handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 407
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 408
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@e
    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@10
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 411
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 412
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@1c
    .line 413
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@1e
    new-instance v2, Lcom/android/server/print/RemotePrintService$9;

    #@20
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 404
    :goto_0
    return-void

    #@27
    .line 424
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@29
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    goto :goto_0

    #@2d
    .line 425
    :catch_0
    move-exception v0

    #@2e
    .line 426
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@31
    const-string/jumbo v2, "Error requesting start printer tracking."

    #@34
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_0
.end method

.method private handleStopPrinterDiscovery()V
    .locals 3

    #@0
    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 347
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@6
    .line 348
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 349
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@f
    .line 350
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@11
    new-instance v2, Lcom/android/server/print/RemotePrintService$7;

    #@13
    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$7;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 344
    :goto_0
    return-void

    #@1a
    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    #@1d
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@1f
    invoke-interface {v1}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 366
    :catch_0
    move-exception v0

    #@24
    .line 367
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@27
    const-string/jumbo v2, "Error stopping printer discovery."

    #@2a
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0
.end method

.method private handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 437
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@4
    .line 439
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@6
    if-eqz v1, :cond_1

    #@8
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@a
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 442
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 443
    iput-object v2, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@1a
    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 446
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@23
    .line 447
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@25
    new-instance v2, Lcom/android/server/print/RemotePrintService$10;

    #@27
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$10;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@2a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 436
    :goto_0
    return-void

    #@2e
    .line 440
    :cond_1
    return-void

    #@2f
    .line 458
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@31
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    goto :goto_0

    #@35
    .line 459
    :catch_0
    move-exception v0

    #@36
    .line 460
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@39
    const-string/jumbo v2, "Error requesting stop printer tracking."

    #@3c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0
.end method

.method private handleValidatePrinters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    #@3
    .line 379
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 380
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    #@c
    .line 381
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    #@e
    new-instance v2, Lcom/android/server/print/RemotePrintService$8;

    #@10
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$8;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 377
    :goto_0
    return-void

    #@17
    .line 392
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@19
    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 393
    :catch_0
    move-exception v0

    #@1e
    .line 394
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintService"

    #@21
    const-string/jumbo v2, "Error requesting printers validation."

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method private isBound()Z
    .locals 1

    #@0
    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private stopTrackingAllPrinters()V
    .locals 5

    #@0
    .prologue
    .line 466
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 467
    return-void

    #@5
    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 470
    .local v2, "trackedPrinterCount":I
    add-int/lit8 v0, v2, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@f
    .line 471
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@11
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/print/PrinterId;

    #@17
    .line 472
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 473
    invoke-direct {p0, v1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    #@26
    .line 470
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_0

    #@29
    .line 465
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_2
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    #@0
    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot interact with a destroyed service"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 539
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xc

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 144
    return-void
.end method

.method public createPrinterDiscoverySession()V
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 243
    return-void
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 116
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 2

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 270
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    const-string/jumbo v0, "  "

    #@3
    .line 480
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "service:"

    #@a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 481
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "componentName="

    #@1c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1f
    move-result-object v1

    #@20
    .line 482
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@22
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 481
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@2d
    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "destroyed="

    #@38
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@3b
    move-result-object v1

    #@3c
    .line 484
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    #@3e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 483
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@49
    .line 485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, "bound="

    #@54
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@57
    move-result-object v1

    #@58
    .line 486
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    #@5b
    move-result v2

    #@5c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    .line 485
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@67
    .line 487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6e
    move-result-object v1

    #@6f
    const-string/jumbo v2, "hasDicoverySession="

    #@72
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@75
    move-result-object v1

    #@76
    .line 488
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    #@78
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 487
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@83
    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@8a
    move-result-object v1

    #@8b
    const-string/jumbo v2, "hasActivePrintJobs="

    #@8e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@91
    move-result-object v1

    #@92
    .line 490
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    #@94
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 489
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@9f
    .line 491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@a6
    move-result-object v1

    #@a7
    const-string/jumbo v2, "isDiscoveringPrinters="

    #@aa
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ad
    move-result-object v2

    #@ae
    .line 492
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    #@b0
    if-eqz v1, :cond_0

    #@b2
    const/4 v1, 0x1

    #@b3
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    .line 491
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@be
    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@c5
    move-result-object v1

    #@c6
    const-string/jumbo v2, "trackedPrinters="

    #@c9
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@cc
    move-result-object v2

    #@cd
    .line 494
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@cf
    if-eqz v1, :cond_1

    #@d1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    #@d3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d6
    move-result-object v1

    #@d7
    .line 493
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@da
    .line 478
    return-void

    #@db
    .line 492
    :cond_0
    const/4 v1, 0x0

    #@dc
    goto :goto_0

    #@dd
    .line 494
    :cond_1
    const-string/jumbo v1, "null"

    #@e0
    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public onAllPrintJobsHandled()V
    .locals 2

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 155
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 215
    return-void
.end method

.method public onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 188
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 308
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 399
    return-void
.end method

.method public stopPrinterDiscovery()V
    .locals 2

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 340
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 431
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 373
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 372
    return-void
.end method
