.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$UserStateHandler;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$ListenerRecord",
            "<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field private mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$ListenerRecord",
            "<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/UserState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V
    .locals 0
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .locals 0
    .param p1, "recommendations"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/UserState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "lowPriority"    # Z

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@5
    const/16 v1, 0x3a

    #@7
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@a
    .line 98
    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@c
    .line 102
    new-instance v0, Landroid/content/Intent;

    #@e
    const-string/jumbo v1, "android.printservice.PrintService"

    #@11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 101
    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    #@16
    .line 105
    new-instance v0, Landroid/util/ArrayMap;

    #@18
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1b
    .line 104
    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@1d
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 107
    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@24
    .line 111
    new-instance v0, Landroid/util/ArraySet;

    #@26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 110
    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@2b
    .line 114
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache;)V

    #@31
    .line 113
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@33
    .line 147
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@35
    .line 148
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@37
    .line 149
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@39
    .line 150
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    #@3b
    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@40
    .line 151
    new-instance v0, Lcom/android/server/print/UserState$UserStateHandler;

    #@42
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$UserStateHandler;-><init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V

    #@49
    iput-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    #@4b
    .line 153
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@4d
    monitor-enter v1

    #@4e
    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    #@51
    .line 155
    invoke-direct {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    #@54
    .line 156
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()Z

    #@57
    .line 159
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    #@5a
    .line 161
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    monitor-exit v1

    #@5e
    .line 146
    return-void

    #@5f
    .line 153
    :catchall_0
    move-exception v0

    #@60
    monitor-exit v1

    #@61
    throw v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1070
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1071
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    #@12
    .line 1068
    :cond_0
    return-void
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1092
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Lcom/android/server/print/UserState$6;

    #@10
    invoke-direct {v1, p0, p1}, Lcom/android/server/print/UserState$6;-><init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 1087
    :goto_0
    return-void

    #@17
    .line 1099
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    #@1a
    goto :goto_0
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1104
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    .line 1105
    const/4 v7, -0x4

    #@3
    const/4 v8, -0x2

    #@4
    .line 1104
    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 1106
    .local v5, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v5, :cond_0

    #@a
    .line 1107
    return-void

    #@b
    .line 1109
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 1111
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    .line 1112
    .local v4, "printJobCount":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@16
    .line 1113
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/print/PrintJobInfo;

    #@1c
    .line 1114
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@1e
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@21
    move-result-object v7

    #@22
    .line 1115
    iget-object v8, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@24
    const v9, 0x1040582

    #@27
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    .line 1114
    const/4 v9, 0x6

    #@2c
    invoke-virtual {v6, v7, v9, v8}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1112
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1118
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1103
    return-void

    #@36
    .line 1117
    .end local v0    # "i":I
    .end local v4    # "printJobCount":I
    :catchall_0
    move-exception v6

    #@37
    .line 1118
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1117
    throw v6
.end method

.method private getInstalledComponents()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1002
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@7
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 1003
    .local v2, "installedCount":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 1004
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@10
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Landroid/printservice/PrintServiceInfo;

    #@16
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@19
    move-result-object v3

    #@1a
    .line 1005
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@1c
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1e
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@20
    .line 1006
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@22
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@24
    .line 1005
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 1008
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1003
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1011
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    return-object v1
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    .line 1130
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1131
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    .line 1132
    return-void

    #@9
    .line 1134
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@b
    .line 1135
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@d
    .line 1134
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v6

    #@11
    .line 1137
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@14
    move-result v3

    #@15
    .line 1138
    .local v3, "recordCount":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@18
    .line 1139
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    #@1e
    .line 1140
    .local v2, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    #@20
    const/4 v6, -0x2

    #@21
    if-eq v5, v6, :cond_1

    #@23
    .line 1141
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    #@25
    if-ne v5, p2, :cond_2

    #@27
    .line 1143
    :cond_1
    :try_start_2
    iget-object v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    #@29
    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@2c
    .line 1138
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1130
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_0
    move-exception v5

    #@30
    monitor-exit v6

    #@31
    throw v5

    #@32
    .line 1144
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catch_0
    move-exception v1

    #@33
    .line 1145
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    #@36
    const-string/jumbo v6, "Error notifying for print job state change"

    #@39
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_1

    #@3d
    .line 1128
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3
    return-void
.end method

.method private handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1173
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1174
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    .line 1175
    return-void

    #@9
    .line 1177
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@b
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@d
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 1179
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v6

    #@13
    .line 1181
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .line 1182
    .local v3, "recordCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@1a
    .line 1183
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    #@20
    .line 1186
    .local v2, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :try_start_2
    iget-object v5, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@22
    check-cast v5, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@24
    invoke-interface {v5}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@27
    .line 1182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1173
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catchall_0
    move-exception v5

    #@2b
    monitor-exit v6

    #@2c
    throw v5

    #@2d
    .line 1187
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catch_0
    move-exception v1

    #@2e
    .line 1188
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    #@31
    const-string/jumbo v6, "Error notifying for print service recommendations change"

    #@34
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_1

    #@38
    .line 1171
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_1
    return-void
.end method

.method private handleDispatchPrintServicesChanged()V
    .locals 7

    #@0
    .prologue
    .line 1152
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1153
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    .line 1154
    return-void

    #@9
    .line 1156
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@b
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@d
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    monitor-exit v6

    #@11
    .line 1158
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@14
    move-result v3

    #@15
    .line 1159
    .local v3, "recordCount":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@18
    .line 1160
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    #@1e
    .line 1163
    .local v2, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :try_start_2
    iget-object v5, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@20
    check-cast v5, Landroid/print/IPrintServicesChangeListener;

    #@22
    invoke-interface {v5}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@25
    .line 1159
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1152
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catchall_0
    move-exception v5

    #@29
    monitor-exit v6

    #@2a
    throw v5

    #@2b
    .line 1164
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catch_0
    move-exception v1

    #@2c
    .line 1165
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    #@2f
    const-string/jumbo v6, "Error notifying for print services change"

    #@32
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_1

    #@36
    .line 1150
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_1
    return-void
.end method

.method private onConfigurationChangedLocked()V
    .locals 11

    #@0
    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    #@3
    move-result-object v8

    #@4
    .line 1035
    .local v8, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v9

    #@8
    .line 1036
    .local v9, "installedCount":I
    const/4 v7, 0x0

    #@9
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    #@b
    .line 1037
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/ComponentName;

    #@11
    .line 1039
    .local v2, "serviceName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@13
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 1040
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 1041
    new-instance v0, Lcom/android/server/print/RemotePrintService;

    #@23
    .line 1042
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@25
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@27
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@29
    move-object v5, p0

    #@2a
    .line 1041
    invoke-direct/range {v0 .. v5}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    #@2d
    .line 1043
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@30
    .line 1036
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1046
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    #@3b
    .line 1047
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    #@3d
    .line 1048
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@40
    goto :goto_1

    #@41
    .line 1054
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@43
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v10

    #@4b
    .line 1055
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_4

    #@51
    .line 1056
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Ljava/util/Map$Entry;

    #@57
    .line 1057
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Landroid/content/ComponentName;

    #@5d
    .line 1058
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    #@63
    .line 1059
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_3

    #@69
    .line 1060
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@6c
    .line 1061
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    #@6f
    goto :goto_2

    #@70
    .line 1065
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    #@73
    .line 1032
    return-void
.end method

.method private readConfigurationLocked()Z
    .locals 2

    #@0
    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    #@3
    move-result v0

    #@4
    .line 847
    .local v0, "somethingChanged":Z
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 848
    return v0
.end method

.method private readDisabledPrintServicesLocked()Z
    .locals 2

    #@0
    .prologue
    .line 948
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 949
    .local v0, "tempDisabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v1, "disabled_print_services"

    #@8
    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    #@b
    .line 951
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@d
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 952
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@15
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@18
    .line 953
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 954
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 956
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private readInstalledPrintServicesLocked()Z
    .locals 17

    #@0
    .prologue
    .line 852
    new-instance v12, Ljava/util/HashSet;

    #@2
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 854
    .local v12, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v13

    #@d
    .line 855
    move-object/from16 v0, p0

    #@f
    iget-object v14, v0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    #@11
    .line 856
    move-object/from16 v0, p0

    #@13
    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    #@15
    const v16, 0x10000084

    #@18
    .line 854
    move/from16 v0, v16

    #@1a
    invoke-virtual {v13, v14, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1d
    move-result-object v5

    #@1e
    .line 858
    .local v5, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@21
    move-result v3

    #@22
    .line 859
    .local v3, "installedCount":I
    const/4 v2, 0x0

    #@23
    .local v2, "i":I
    move v1, v3

    #@24
    .local v1, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@26
    .line 860
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@2c
    .line 861
    .local v4, "installedService":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v13, "android.permission.BIND_PRINT_SERVICE"

    #@2f
    .line 862
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@31
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@33
    .line 861
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v13

    #@37
    if-nez v13, :cond_0

    #@39
    .line 863
    new-instance v10, Landroid/content/ComponentName;

    #@3b
    .line 864
    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3d
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@3f
    .line 865
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@43
    .line 863
    invoke-direct {v10, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 866
    .local v10, "serviceName":Landroid/content/ComponentName;
    const-string/jumbo v13, "UserState"

    #@49
    new-instance v14, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v15, "Skipping print service "

    #@51
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v14

    #@55
    .line 867
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@58
    move-result-object v15

    #@59
    .line 866
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    .line 868
    const-string/jumbo v15, " since it does not require permission "

    #@60
    .line 866
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v14

    #@64
    .line 869
    const-string/jumbo v15, "android.permission.BIND_PRINT_SERVICE"

    #@67
    .line 866
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v14

    #@6b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v14

    #@6f
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 859
    .end local v10    # "serviceName":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@74
    goto :goto_0

    #@75
    .line 872
    :cond_0
    move-object/from16 v0, p0

    #@77
    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@79
    invoke-static {v4, v13}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    #@7c
    move-result-object v13

    #@7d
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_1

    #@81
    .line 875
    .end local v4    # "installedService":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v11, 0x0

    #@82
    .line 877
    .local v11, "someServiceChanged":Z
    invoke-interface {v12}, Ljava/util/Set;->size()I

    #@85
    move-result v13

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@8a
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@8d
    move-result v14

    #@8e
    if-eq v13, v14, :cond_3

    #@90
    .line 878
    const/4 v11, 0x1

    #@91
    .line 901
    :cond_2
    :goto_2
    if-eqz v11, :cond_7

    #@93
    .line 902
    move-object/from16 v0, p0

    #@95
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@97
    invoke-interface {v13}, Ljava/util/List;->clear()V

    #@9a
    .line 903
    move-object/from16 v0, p0

    #@9c
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@9e
    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a1
    .line 904
    const/4 v13, 0x1

    #@a2
    return v13

    #@a3
    .line 880
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a6
    move-result-object v7

    #@a7
    .local v7, "newService$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@aa
    move-result v13

    #@ab
    if-eqz v13, :cond_2

    #@ad
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b0
    move-result-object v6

    #@b1
    check-cast v6, Landroid/printservice/PrintServiceInfo;

    #@b3
    .line 881
    .local v6, "newService":Landroid/printservice/PrintServiceInfo;
    move-object/from16 v0, p0

    #@b5
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@b7
    invoke-interface {v13, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@ba
    move-result v9

    #@bb
    .line 882
    .local v9, "oldServiceIndex":I
    if-gez v9, :cond_5

    #@bd
    .line 883
    const/4 v11, 0x1

    #@be
    .line 884
    goto :goto_2

    #@bf
    .line 888
    :cond_5
    move-object/from16 v0, p0

    #@c1
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@c3
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c6
    move-result-object v8

    #@c7
    check-cast v8, Landroid/printservice/PrintServiceInfo;

    #@c9
    .line 889
    .local v8, "oldService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@cc
    move-result-object v13

    #@cd
    .line 890
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@d0
    move-result-object v14

    #@d1
    .line 889
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@d4
    move-result v13

    #@d5
    if-eqz v13, :cond_6

    #@d7
    .line 891
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@da
    move-result-object v13

    #@db
    .line 892
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@de
    move-result-object v14

    #@df
    .line 891
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@e2
    move-result v13

    #@e3
    if-eqz v13, :cond_6

    #@e5
    .line 893
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@e8
    move-result-object v13

    #@e9
    .line 894
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@ec
    move-result-object v14

    #@ed
    .line 893
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@f0
    move-result v13

    #@f1
    if-nez v13, :cond_4

    #@f3
    .line 895
    :cond_6
    const/4 v11, 0x1

    #@f4
    .line 896
    goto :goto_2

    #@f5
    .line 907
    .end local v6    # "newService":Landroid/printservice/PrintServiceInfo;
    .end local v7    # "newService$iterator":Ljava/util/Iterator;
    .end local v8    # "oldService":Landroid/printservice/PrintServiceInfo;
    .end local v9    # "oldServiceIndex":I
    :cond_7
    const/4 v13, 0x0

    #@f6
    return v13
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 961
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 962
    iget v5, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@8
    .line 961
    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 963
    .local v1, "settingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 964
    iget-object v2, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@14
    .line 965
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@17
    .line 966
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 967
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 968
    .local v3, "string":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_0

    #@27
    .line 971
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2a
    move-result-object v0

    #@2b
    .line 972
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@2d
    .line 973
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 960
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    #@7
    .line 1079
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1080
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    #@10
    .line 1075
    :goto_0
    return-void

    #@11
    .line 1083
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    #@14
    goto :goto_0
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    #@0
    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1124
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1122
    :cond_0
    return-void
.end method

.method private upgradePersistentStateIfNeeded()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 914
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v6

    #@7
    .line 915
    const-string/jumbo v7, "enabled_print_services"

    #@a
    iget v8, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@c
    .line 914
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 919
    .local v2, "enabledSettingValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@12
    .line 920
    new-instance v1, Ljava/util/HashSet;

    #@14
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@17
    .line 921
    .local v1, "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v6, "enabled_print_services"

    #@1a
    invoke-direct {p0, v6, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    #@1d
    .line 924
    new-instance v0, Landroid/util/ArraySet;

    #@1f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@22
    .line 925
    .local v0, "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@24
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@27
    move-result v4

    #@28
    .line 926
    .local v4, "numInstalledServices":I
    const/4 v3, 0x0

    #@29
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@2b
    .line 927
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@2d
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Landroid/printservice/PrintServiceInfo;

    #@33
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    #@36
    move-result-object v5

    #@37
    .line 928
    .local v5, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_0

    #@3d
    .line 929
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@40
    .line 926
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 933
    .end local v5    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    #@46
    .line 937
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4b
    move-result-object v6

    #@4c
    .line 938
    const-string/jumbo v7, "enabled_print_services"

    #@4f
    iget v8, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@51
    .line 937
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@54
    .line 913
    .end local v0    # "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v1    # "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3    # "i":I
    .end local v4    # "numInstalledServices":I
    :cond_2
    return-void
.end method

.method private writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 983
    .local p1, "disabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 984
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/ComponentName;

    #@15
    .line 985
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 986
    const/16 v3, 0x3a

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 988
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 990
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2d
    move-result-object v3

    #@2e
    .line 991
    const-string/jumbo v4, "disabled_print_services"

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    iget v6, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@37
    .line 990
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@3a
    .line 982
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 550
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 552
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 551
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@11
    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@13
    .line 555
    new-instance v2, Lcom/android/server/print/UserState$3;

    #@15
    invoke-direct {v2, p0, p0, p1, p2}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    #@18
    .line 554
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 547
    return-void

    #@1d
    .line 548
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 635
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 636
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@11
    .line 639
    new-instance v0, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    #@13
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@15
    .line 640
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@17
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    #@1a
    move-result-object v3

    #@1b
    .line 639
    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    #@1e
    .line 638
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    #@20
    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@22
    .line 643
    new-instance v2, Lcom/android/server/print/UserState$5;

    #@24
    invoke-direct {v2, p0, p0, p1}, Lcom/android/server/print/UserState$5;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    #@27
    .line 642
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 632
    return-void

    #@2c
    .line 633
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 592
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 593
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 594
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@11
    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@13
    .line 597
    new-instance v2, Lcom/android/server/print/UserState$4;

    #@15
    invoke-direct {v2, p0, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    #@18
    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 590
    return-void

    #@1d
    .line 591
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 332
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@3
    invoke-virtual {v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    .line 333
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    #@9
    .line 334
    return-void

    #@a
    .line 338
    :cond_0
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@c
    const/4 v5, 0x1

    #@d
    invoke-virtual {v4, p1, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    #@10
    .line 340
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@13
    move-result v4

    #@14
    const/4 v5, 0x6

    #@15
    if-eq v4, v5, :cond_3

    #@17
    .line 341
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    #@1a
    move-result-object v3

    #@1b
    .line 343
    .local v3, "printerId":Landroid/print/PrinterId;
    if-eqz v3, :cond_2

    #@1d
    .line 344
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@20
    move-result-object v2

    #@21
    .line 345
    .local v2, "printServiceName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@22
    .line 346
    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@24
    monitor-enter v5

    #@25
    .line 347
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    check-cast v1, Lcom/android/server/print/RemotePrintService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    monitor-exit v5

    #@2e
    .line 349
    if-nez v1, :cond_1

    #@30
    .line 350
    return-void

    #@31
    .line 346
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4

    #@34
    .line 352
    .restart local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    #@37
    .line 331
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    :cond_2
    :goto_0
    return-void

    #@38
    .line 357
    :cond_3
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@3a
    const/4 v5, 0x7

    #@3b
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@3e
    goto :goto_0
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    #@0
    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 438
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 440
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 441
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@c
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    #@f
    .line 444
    new-instance v0, Lcom/android/server/print/UserState$2;

    #@11
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    .line 451
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1a
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :goto_0
    monitor-exit v1

    #@1e
    .line 436
    return-void

    #@1f
    .line 454
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@21
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 437
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public destroyLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 773
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@4
    .line 774
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@6
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    #@9
    .line 775
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    #@1f
    .line 776
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->destroy()V

    #@22
    goto :goto_0

    #@23
    .line 778
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@28
    .line 779
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@2a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@2d
    .line 780
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@2f
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@32
    .line 781
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 782
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@38
    invoke-virtual {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    #@3b
    .line 783
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@3d
    .line 785
    :cond_1
    const/4 v2, 0x1

    #@3e
    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    #@40
    .line 772
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    #@0
    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 463
    return-void

    #@9
    .line 466
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 459
    return-void

    #@10
    .line 460
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 789
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@3
    move-result-object v14

    #@4
    const-string/jumbo v15, "user state "

    #@7
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@a
    move-result-object v14

    #@b
    move-object/from16 v0, p0

    #@d
    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    #@f
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v15

    #@13
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@16
    move-result-object v14

    #@17
    const-string/jumbo v15, ":"

    #@1a
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1d
    .line 790
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 792
    const-string/jumbo v13, "  "

    #@23
    .line 794
    .local v13, "tab":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@26
    move-result-object v14

    #@27
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@2a
    move-result-object v14

    #@2b
    const-string/jumbo v15, "installed services:"

    #@2e
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@31
    move-result-object v14

    #@32
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@35
    .line 795
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@39
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@3c
    move-result v10

    #@3d
    .line 796
    .local v10, "installedServiceCount":I
    const/4 v8, 0x0

    #@3e
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    #@40
    .line 797
    move-object/from16 v0, p0

    #@42
    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@44
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v9

    #@48
    check-cast v9, Landroid/printservice/PrintServiceInfo;

    #@4a
    .line 798
    .local v9, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v14

    #@55
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v14

    #@59
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    .line 799
    .local v11, "installedServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@66
    move-result-object v14

    #@67
    const-string/jumbo v15, "service:"

    #@6a
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6d
    move-result-object v14

    #@6e
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@71
    .line 800
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@74
    move-result-object v12

    #@75
    .line 801
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@77
    .line 802
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@79
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@7b
    .line 803
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7d
    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@7f
    .line 801
    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    .line 804
    .local v4, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    #@84
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@87
    move-result-object v14

    #@88
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@8b
    move-result-object v14

    #@8c
    const-string/jumbo v15, "componentName="

    #@8f
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@92
    move-result-object v14

    #@93
    .line 805
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    .line 804
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@9a
    move-result-object v14

    #@9b
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@9e
    .line 806
    move-object/from16 v0, p2

    #@a0
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@a3
    move-result-object v14

    #@a4
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@a7
    move-result-object v14

    #@a8
    const-string/jumbo v15, "settingsActivity="

    #@ab
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ae
    move-result-object v14

    #@af
    .line 807
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@b2
    move-result-object v15

    #@b3
    .line 806
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@ba
    .line 808
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@c3
    move-result-object v14

    #@c4
    const-string/jumbo v15, "addPrintersActivity="

    #@c7
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ca
    move-result-object v14

    #@cb
    .line 809
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@ce
    move-result-object v15

    #@cf
    .line 808
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@d2
    move-result-object v14

    #@d3
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@d6
    .line 810
    move-object/from16 v0, p2

    #@d8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@db
    move-result-object v14

    #@dc
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@df
    move-result-object v14

    #@e0
    const-string/jumbo v15, "avancedOptionsActivity="

    #@e3
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@e6
    move-result-object v14

    #@e7
    .line 811
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@ea
    move-result-object v15

    #@eb
    .line 810
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ee
    move-result-object v14

    #@ef
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@f2
    .line 796
    add-int/lit8 v8, v8, 0x1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 814
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v11    # "installedServicePrefix":Ljava/lang/String;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@f9
    move-result-object v14

    #@fa
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@fd
    move-result-object v14

    #@fe
    const-string/jumbo v15, "disabled services:"

    #@101
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@104
    move-result-object v14

    #@105
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@108
    .line 815
    move-object/from16 v0, p0

    #@10a
    iget-object v14, v0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@10c
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10f
    move-result-object v6

    #@110
    .local v6, "disabledService$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@113
    move-result v14

    #@114
    if-eqz v14, :cond_1

    #@116
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@119
    move-result-object v5

    #@11a
    check-cast v5, Landroid/content/ComponentName;

    #@11c
    .line 816
    .local v5, "disabledService":Landroid/content/ComponentName;
    new-instance v14, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    move-object/from16 v0, p3

    #@123
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v14

    #@127
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v14

    #@12b
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v14

    #@12f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v7

    #@133
    .line 817
    .local v7, "disabledServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    #@135
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@138
    move-result-object v14

    #@139
    const-string/jumbo v15, "service:"

    #@13c
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@13f
    move-result-object v14

    #@140
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@143
    .line 818
    move-object/from16 v0, p2

    #@145
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@148
    move-result-object v14

    #@149
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@14c
    move-result-object v14

    #@14d
    const-string/jumbo v15, "componentName="

    #@150
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@153
    move-result-object v14

    #@154
    .line 819
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@157
    move-result-object v15

    #@158
    .line 818
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@15b
    .line 820
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@15e
    goto :goto_1

    #@15f
    .line 823
    .end local v5    # "disabledService":Landroid/content/ComponentName;
    .end local v7    # "disabledServicePrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@162
    move-result-object v14

    #@163
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@166
    move-result-object v14

    #@167
    const-string/jumbo v15, "active services:"

    #@16a
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@16d
    move-result-object v14

    #@16e
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@171
    .line 824
    move-object/from16 v0, p0

    #@173
    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@175
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@178
    move-result v3

    #@179
    .line 825
    .local v3, "activeServiceCount":I
    const/4 v8, 0x0

    #@17a
    :goto_2
    if-ge v8, v3, :cond_2

    #@17c
    .line 826
    move-object/from16 v0, p0

    #@17e
    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@180
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@183
    move-result-object v2

    #@184
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@186
    .line 827
    .local v2, "activeService":Lcom/android/server/print/RemotePrintService;
    new-instance v14, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    move-object/from16 v0, p3

    #@18d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v14

    #@191
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v14

    #@195
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v14

    #@199
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v14

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-virtual {v2, v0, v14}, Lcom/android/server/print/RemotePrintService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1a2
    .line 828
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1a5
    .line 825
    add-int/lit8 v8, v8, 0x1

    #@1a7
    goto :goto_2

    #@1a8
    .line 831
    .end local v2    # "activeService":Lcom/android/server/print/RemotePrintService;
    :cond_2
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1ab
    move-result-object v14

    #@1ac
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1af
    move-result-object v14

    #@1b0
    const-string/jumbo v15, "cached print jobs:"

    #@1b3
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1b6
    move-result-object v14

    #@1b7
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@1ba
    .line 832
    move-object/from16 v0, p0

    #@1bc
    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@1be
    new-instance v15, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    move-object/from16 v0, p3

    #@1c5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v15

    #@1c9
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v15

    #@1cd
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v15

    #@1d1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v15

    #@1d5
    move-object/from16 v0, p2

    #@1d7
    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1da
    .line 834
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1dd
    move-result-object v14

    #@1de
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1e1
    move-result-object v14

    #@1e2
    const-string/jumbo v15, "discovery mediator:"

    #@1e5
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1e8
    move-result-object v14

    #@1e9
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@1ec
    .line 835
    move-object/from16 v0, p0

    #@1ee
    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1f0
    if-eqz v14, :cond_3

    #@1f2
    .line 836
    move-object/from16 v0, p0

    #@1f4
    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1f6
    new-instance v15, Ljava/lang/StringBuilder;

    #@1f8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1fb
    move-object/from16 v0, p3

    #@1fd
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v15

    #@201
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v15

    #@205
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v15

    #@209
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v15

    #@20d
    move-object/from16 v0, p2

    #@20f
    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@212
    .line 839
    :cond_3
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@215
    move-result-object v14

    #@216
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@219
    move-result-object v14

    #@21a
    const-string/jumbo v15, "print spooler:"

    #@21d
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@220
    move-result-object v14

    #@221
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@224
    .line 840
    move-object/from16 v0, p0

    #@226
    iget-object v14, v0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@228
    new-instance v15, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    move-object/from16 v0, p3

    #@22f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v15

    #@233
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v15

    #@237
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v15

    #@23b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23e
    move-result-object v15

    #@23f
    move-object/from16 v0, p1

    #@241
    move-object/from16 v1, p2

    #@243
    invoke-virtual {v14, v0, v1, v15}, Lcom/android/server/print/RemotePrintSpooler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@246
    .line 841
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@249
    .line 788
    return-void
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-virtual {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    #@5
    move-result-object v0

    #@6
    .line 321
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_0

    #@8
    .line 322
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/print/RemotePrintService;

    #@14
    .line 323
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_0

    #@16
    .line 324
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    #@19
    .line 328
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 296
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    .line 297
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    #@9
    .line 298
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@b
    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@e
    move-result-object v0

    #@f
    .line 300
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 303
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@14
    .line 304
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@17
    .line 306
    :cond_1
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .locals 11
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 256
    iget-object v8, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@3
    invoke-virtual {v8, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 264
    .local v2, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v7, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@c
    .line 267
    .local v7, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    .line 268
    .local v1, "cachedPrintJobCount":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@13
    .line 269
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/print/PrintJobInfo;

    #@19
    .line 270
    .local v0, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 273
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@23
    .line 274
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@26
    .line 268
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 278
    .end local v0    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    :cond_0
    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2b
    .line 279
    const/4 v9, -0x1

    #@2c
    .line 278
    invoke-virtual {v8, v10, v9, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    #@2f
    move-result-object v6

    #@30
    .line 280
    .local v6, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v6, :cond_1

    #@32
    .line 281
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@35
    move-result v5

    #@36
    .line 282
    .local v5, "printJobCount":I
    const/4 v3, 0x0

    #@37
    :goto_1
    if-ge v3, v5, :cond_1

    #@39
    .line 283
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Landroid/print/PrintJobInfo;

    #@3f
    .line 284
    .local v4, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 287
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@49
    .line 288
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@4c
    .line 282
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 292
    .end local v4    # "printJob":Landroid/print/PrintJobInfo;
    .end local v5    # "printJobCount":I
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    #@51
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@54
    move-result-object v9

    #@55
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@58
    return-object v8
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .locals 9
    .param p1, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 370
    iget-object v7, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 371
    const/4 v4, 0x0

    #@4
    .line 372
    .local v4, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@6
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v3

    #@a
    .line 373
    .local v3, "installedServiceCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    move-object v5, v4

    #@c
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v5, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_0
    if-ge v1, v3, :cond_2

    #@e
    .line 374
    :try_start_1
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@10
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/printservice/PrintServiceInfo;

    #@16
    .line 376
    .local v2, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@18
    .line 377
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@1b
    move-result-object v6

    #@1c
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1e
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@20
    .line 378
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@23
    move-result-object v8

    #@24
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@26
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@28
    .line 376
    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 381
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@30
    move-result v6

    #@31
    invoke-virtual {v2, v6}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    #@34
    .line 383
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_0

    #@3a
    .line 384
    and-int/lit8 v6, p1, 0x1

    #@3c
    if-nez v6, :cond_1

    #@3e
    move-object v4, v5

    #@3f
    .line 373
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v4, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@41
    move-object v5, v4

    #@42
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_0

    #@43
    .line 388
    :cond_0
    and-int/lit8 v6, p1, 0x2

    #@45
    if-nez v6, :cond_1

    #@47
    move-object v4, v5

    #@48
    .line 389
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_1

    #@49
    .line 393
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_1
    if-nez v5, :cond_3

    #@4b
    .line 394
    new-instance v4, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@50
    .line 396
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_2
    :try_start_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 370
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "i":I
    .end local v2    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v3    # "installedServiceCount":I
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_0
    move-exception v6

    #@55
    :goto_3
    monitor-exit v7

    #@56
    throw v6

    #@57
    .restart local v1    # "i":I
    .restart local v3    # "installedServiceCount":I
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_2
    monitor-exit v7

    #@58
    .line 398
    return-object v5

    #@59
    .line 370
    :catchall_1
    move-exception v6

    #@5a
    move-object v4, v5

    #@5b
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3

    #@5c
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "installedService":Landroid/printservice/PrintServiceInfo;
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_3
    move-object v4, v5

    #@5d
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_2
.end method

.method public increasePriority()V
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    #@5
    .line 165
    return-void
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "printService"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 192
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/print/RemotePrintService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v2

    #@f
    .line 194
    if-eqz v0, :cond_0

    #@11
    .line 195
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    #@14
    .line 188
    :cond_0
    return-void

    #@15
    .line 190
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 735
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 738
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 739
    return-void

    #@c
    .line 741
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    #@11
    .line 742
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 733
    return-void

    #@18
    .line 734
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 174
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@d
    move-result-object v0

    #@e
    .line 175
    .local v0, "printServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/print/RemotePrintService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v3

    #@17
    .line 177
    if-eqz v1, :cond_0

    #@19
    .line 178
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    #@1c
    .line 170
    :goto_0
    return-void

    #@1d
    .line 172
    .end local v0    # "printServiceName":Landroid/content/ComponentName;
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .line 182
    .restart local v0    # "printServiceName":Landroid/content/ComponentName;
    .restart local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@22
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@25
    move-result-object v3

    #@26
    .line 183
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@28
    const v5, 0x1040582

    #@2b
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 182
    const/4 v5, 0x6

    #@30
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@33
    goto :goto_0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@5
    .line 686
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    #@7
    .line 687
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@e
    move-result-object v2

    #@f
    .line 686
    const/4 v3, 0x1

    #@10
    .line 687
    const/4 v4, 0x0

    #@11
    .line 686
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 684
    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    const/4 v2, 0x0

    #@1
    .line 696
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 695
    return-void
.end method

.method public onPrintServicesChanged()V
    .locals 2

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 690
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 702
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 703
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 705
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 706
    return-void

    #@10
    .line 709
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 710
    return-void

    #@16
    .line 712
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 701
    return-void

    #@1d
    .line 702
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
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
    .line 718
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 721
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 722
    return-void

    #@10
    .line 725
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 726
    return-void

    #@16
    .line 728
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 717
    return-void

    #@1d
    .line 718
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 749
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 751
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 752
    return-void

    #@10
    .line 755
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    #@17
    .line 756
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    #@1a
    .line 758
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    if-nez v0, :cond_1

    #@1e
    monitor-exit v1

    #@1f
    .line 759
    return-void

    #@20
    .line 761
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@22
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 747
    return-void

    #@27
    .line 748
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 13
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I

    #@0
    .prologue
    .line 207
    new-instance v11, Landroid/print/PrintJobInfo;

    #@2
    invoke-direct {v11}, Landroid/print/PrintJobInfo;-><init>()V

    #@5
    .line 208
    .local v11, "printJob":Landroid/print/PrintJobInfo;
    new-instance v2, Landroid/print/PrintJobId;

    #@7
    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    #@a
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    #@d
    .line 209
    move/from16 v0, p5

    #@f
    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAppId(I)V

    #@12
    .line 210
    invoke-virtual {v11, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    #@15
    .line 211
    move-object/from16 v0, p3

    #@17
    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    #@1a
    .line 212
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setState(I)V

    #@1e
    .line 213
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setCopies(I)V

    #@22
    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {v11, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    #@29
    .line 217
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2b
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v3

    #@2f
    move/from16 v0, p5

    #@31
    invoke-virtual {v2, v3, v0, v11}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_0

    #@37
    .line 220
    const/4 v2, 0x0

    #@38
    return-object v2

    #@39
    .line 224
    :cond_0
    new-instance v3, Lcom/android/server/print/UserState$1;

    #@3b
    invoke-direct {v3, p0, v11}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V

    #@3e
    .line 230
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@40
    const/4 v2, 0x0

    #@41
    check-cast v2, [Ljava/lang/Void;

    #@43
    .line 224
    invoke-virtual {v3, v5, v2}, Lcom/android/server/print/UserState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@46
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@49
    move-result-wide v8

    #@4a
    .line 234
    .local v8, "identity":J
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    #@4c
    const-string/jumbo v2, "android.print.PRINT_DIALOG"

    #@4f
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@52
    .line 235
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "printjob"

    #@55
    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    const/4 v5, 0x0

    #@5e
    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@65
    .line 236
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    #@68
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@6f
    .line 237
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@72
    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@75
    .line 238
    const-string/jumbo v2, "android.content.extra.PACKAGE_NAME"

    #@78
    move-object/from16 v0, p4

    #@7a
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7d
    .line 241
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@7f
    .line 243
    new-instance v7, Landroid/os/UserHandle;

    #@81
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@83
    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@86
    .line 241
    const/4 v3, 0x0

    #@87
    const/high16 v5, 0x54000000

    #@89
    .line 243
    const/4 v6, 0x0

    #@8a
    .line 240
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@91
    move-result-object v10

    #@92
    .line 245
    .local v10, "intentSender":Landroid/content/IntentSender;
    new-instance v12, Landroid/os/Bundle;

    #@94
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    #@97
    .line 246
    .local v12, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@9a
    invoke-virtual {v12, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@9d
    .line 247
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    #@a0
    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a3
    .line 251
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 249
    return-object v12

    #@a7
    .line 250
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "intentSender":Landroid/content/IntentSender;
    .end local v12    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    #@a8
    .line 251
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 250
    throw v2
.end method

.method public prunePrintServices()V
    .locals 4

    #@0
    .prologue
    .line 1018
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1019
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    #@6
    move-result-object v1

    #@7
    .line 1022
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@9
    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@c
    move-result v0

    #@d
    .line 1023
    .local v0, "disabledServicesUninstalled":Z
    if-eqz v0, :cond_0

    #@f
    .line 1024
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@11
    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    #@14
    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@16
    invoke-virtual {v2, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 1017
    return-void

    #@1b
    .line 1018
    .end local v0    # "disabledServicesUninstalled":Z
    .end local v1    # "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method public removeObsoletePrintJobs()V
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    #@5
    .line 199
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    #@0
    .prologue
    .line 569
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 570
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 571
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 572
    return-void

    #@c
    .line 574
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 575
    .local v2, "recordCount":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@15
    .line 577
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@17
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    #@1d
    .line 578
    .local v1, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v3, v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    #@1f
    invoke-interface {v3}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 579
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@2f
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@32
    .line 583
    .end local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 584
    const/4 v3, 0x0

    #@3b
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :cond_2
    monitor-exit v4

    #@3e
    .line 568
    return-void

    #@3f
    .line 575
    .restart local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 569
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    #@43
    monitor-exit v4

    #@44
    throw v3
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@0
    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 659
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 660
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 661
    return-void

    #@c
    .line 663
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 664
    .local v2, "recordCount":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@15
    .line 666
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@17
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/print/UserState$ListenerRecord;

    #@1d
    .line 667
    .local v1, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    iget-object v3, v1, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@1f
    check-cast v3, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@21
    invoke-interface {v3}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    .line 668
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@31
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@34
    .line 672
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@36
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 673
    const/4 v3, 0x0

    #@3d
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    #@3f
    .line 675
    const/4 v3, 0x0

    #@40
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    #@42
    .line 677
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    #@44
    invoke-virtual {v3}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    #@47
    .line 678
    const/4 v3, 0x0

    #@48
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    :cond_2
    monitor-exit v4

    #@4b
    .line 657
    return-void

    #@4c
    .line 664
    .restart local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 658
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    #@50
    monitor-exit v4

    #@51
    throw v3
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;

    #@0
    .prologue
    .line 611
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 612
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 613
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 614
    return-void

    #@c
    .line 616
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 617
    .local v2, "recordCount":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@15
    .line 619
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@17
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/print/UserState$ListenerRecord;

    #@1d
    .line 620
    .local v1, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    iget-object v3, v1, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@1f
    check-cast v3, Landroid/print/IPrintServicesChangeListener;

    #@21
    invoke-interface {v3}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    .line 621
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@31
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@34
    .line 625
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    #@36
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 626
    const/4 v3, 0x0

    #@3d
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    :cond_2
    monitor-exit v4

    #@40
    .line 610
    return-void

    #@41
    .line 617
    .restart local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 611
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@4
    move-result-object v0

    #@5
    .line 363
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x6

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 364
    :cond_0
    return-void

    #@f
    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@15
    .line 361
    return-void
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z

    #@0
    .prologue
    .line 403
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 404
    const/4 v1, 0x0

    #@4
    .line 405
    .local v1, "isChanged":Z
    if-eqz p2, :cond_2

    #@6
    .line 406
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@8
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    .line 421
    .end local v1    # "isChanged":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@e
    .line 422
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@10
    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    #@13
    .line 424
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_1
    monitor-exit v5

    #@17
    .line 402
    return-void

    #@18
    .line 409
    .restart local v1    # "isChanged":Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1d
    move-result v2

    #@1e
    .line 410
    .local v2, "numServices":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    #@21
    .line 411
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@23
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/printservice/PrintServiceInfo;

    #@29
    .line 413
    .local v3, "service":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 414
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    #@35
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 415
    const/4 v1, 0x1

    #@39
    .line 416
    goto :goto_0

    #@3a
    .line 410
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 403
    .end local v0    # "i":I
    .end local v1    # "isChanged":Z
    .end local v2    # "numServices":I
    .end local v3    # "service":Landroid/printservice/PrintServiceInfo;
    :catchall_0
    move-exception v4

    #@3e
    monitor-exit v5

    #@3f
    throw v4
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 476
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 477
    return-void

    #@c
    .line 480
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 471
    return-void

    #@13
    .line 472
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 518
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 519
    return-void

    #@10
    .line 522
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 523
    return-void

    #@16
    .line 526
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 514
    return-void

    #@1d
    .line 515
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    #@0
    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 490
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 491
    return-void

    #@c
    .line 494
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 485
    return-void

    #@13
    .line 486
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 534
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 535
    return-void

    #@10
    .line 538
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 539
    return-void

    #@16
    .line 542
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 530
    return-void

    #@1d
    .line 531
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public updateIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@3
    .line 767
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 768
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    #@c
    .line 765
    :cond_0
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
    .line 499
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 500
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 502
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 503
    return-void

    #@10
    .line 506
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 507
    return-void

    #@16
    .line 510
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 498
    return-void

    #@1d
    .line 499
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
