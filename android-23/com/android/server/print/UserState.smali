.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$UserStateHandler;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$PrintJobForAppCache;
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

.field private final mEnabledServices:Ljava/util/Set;
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

.method static synthetic -get4(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;
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

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@5
    const/16 v1, 0x3a

    #@7
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@a
    .line 88
    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@c
    .line 92
    new-instance v0, Landroid/content/Intent;

    #@e
    const-string/jumbo v1, "android.printservice.PrintService"

    #@11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 91
    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    #@16
    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    #@18
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1b
    .line 94
    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@1d
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 97
    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@24
    .line 101
    new-instance v0, Landroid/util/ArraySet;

    #@26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 100
    iput-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@2b
    .line 104
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache;)V

    #@31
    .line 103
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@33
    .line 123
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@35
    .line 124
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@37
    .line 125
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@39
    .line 126
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    #@3b
    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@40
    .line 127
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
    .line 128
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@4d
    monitor-enter v1

    #@4e
    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->enableSystemPrintServicesLocked()V

    #@51
    .line 130
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v1

    #@55
    .line 122
    return-void

    #@56
    .line 128
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 833
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 834
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    #@12
    .line 831
    :cond_0
    return-void
.end method

.method private enableSystemPrintServicesLocked()V
    .locals 12

    #@0
    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    #@3
    .line 734
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    #@6
    .line 737
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 739
    .local v1, "enabledOnFirstBoot":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v9, "enabled_on_first_boot_system_print_services"

    #@e
    .line 738
    invoke-direct {p0, v9, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    #@11
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    .line 744
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@18
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@1b
    move-result v5

    #@1c
    .line 745
    .local v5, "serviceCount":I
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    #@1f
    .line 746
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@21
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    check-cast v9, Landroid/printservice/PrintServiceInfo;

    #@27
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@2a
    move-result-object v9

    #@2b
    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2d
    .line 748
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    and-int/lit8 v9, v9, 0x1

    #@33
    if-eqz v9, :cond_0

    #@35
    .line 749
    new-instance v7, Landroid/content/ComponentName;

    #@37
    .line 750
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@39
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@3b
    .line 749
    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 751
    .local v7, "serviceName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@40
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@43
    move-result v9

    #@44
    if-nez v9, :cond_0

    #@46
    .line 752
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@49
    move-result v9

    #@4a
    if-eqz v9, :cond_1

    #@4c
    .line 745
    .end local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 753
    .restart local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@52
    move-result v9

    #@53
    if-lez v9, :cond_2

    #@55
    .line 754
    const-string/jumbo v9, ":"

    #@58
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 756
    :cond_2
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_1

    #@63
    .line 762
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@66
    move-result v9

    #@67
    if-gtz v9, :cond_4

    #@69
    .line 763
    return-void

    #@6a
    .line 766
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v8

    #@6e
    .line 770
    .local v8, "servicesToEnable":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@70
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@73
    move-result-object v9

    #@74
    const-string/jumbo v10, "enabled_print_services"

    #@77
    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@79
    .line 769
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    .line 771
    .local v3, "enabledServices":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@80
    move-result v9

    #@81
    if-eqz v9, :cond_5

    #@83
    .line 772
    move-object v3, v8

    #@84
    .line 776
    :goto_2
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@86
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@89
    move-result-object v9

    #@8a
    .line 777
    const-string/jumbo v10, "enabled_print_services"

    #@8d
    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@8f
    .line 776
    invoke-static {v9, v10, v3, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@92
    .line 781
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@94
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@97
    move-result-object v9

    #@98
    .line 782
    const-string/jumbo v10, "enabled_on_first_boot_system_print_services"

    #@9b
    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@9d
    .line 780
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    .line 783
    .local v2, "enabledOnFirstBootServices":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a4
    move-result v9

    #@a5
    if-eqz v9, :cond_6

    #@a7
    .line 784
    move-object v2, v8

    #@a8
    .line 788
    :goto_3
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@aa
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ad
    move-result-object v9

    #@ae
    .line 789
    const-string/jumbo v10, "enabled_on_first_boot_system_print_services"

    #@b1
    .line 790
    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@b3
    .line 788
    invoke-static {v9, v10, v2, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@b6
    .line 731
    return-void

    #@b7
    .line 774
    .end local v2    # "enabledOnFirstBootServices":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    const-string/jumbo v10, ":"

    #@c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    goto :goto_2

    #@d0
    .line 786
    .restart local v2    # "enabledOnFirstBootServices":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    const-string/jumbo v10, ":"

    #@dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    goto :goto_3
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 854
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
    .line 855
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Lcom/android/server/print/UserState$4;

    #@10
    invoke-direct {v1, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 850
    :goto_0
    return-void

    #@17
    .line 862
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
    .line 867
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    .line 868
    const/4 v7, -0x4

    #@3
    const/4 v8, -0x2

    #@4
    .line 867
    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 869
    .local v5, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v5, :cond_0

    #@a
    .line 870
    return-void

    #@b
    .line 872
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 874
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    .line 875
    .local v4, "printJobCount":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@16
    .line 876
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/print/PrintJobInfo;

    #@1c
    .line 877
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@1e
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@21
    move-result-object v7

    #@22
    .line 878
    iget-object v8, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@24
    const v9, 0x1040546

    #@27
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    .line 877
    const/4 v9, 0x6

    #@2c
    invoke-virtual {v6, v7, v9, v8}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 875
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 881
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 866
    return-void

    #@36
    .line 880
    .end local v0    # "i":I
    .end local v4    # "printJobCount":I
    :catchall_0
    move-exception v6

    #@37
    .line 881
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 880
    throw v6
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    .line 893
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 894
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    .line 895
    return-void

    #@9
    .line 897
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@b
    .line 898
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@d
    .line 897
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v6

    #@11
    .line 900
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@14
    move-result v3

    #@15
    .line 901
    .local v3, "recordCount":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@18
    .line 902
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    #@1e
    .line 903
    .local v2, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    #@20
    const/4 v6, -0x2

    #@21
    if-eq v5, v6, :cond_1

    #@23
    .line 904
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    #@25
    if-ne v5, p2, :cond_2

    #@27
    .line 906
    :cond_1
    :try_start_2
    iget-object v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    #@29
    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@2c
    .line 901
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 893
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
    .line 907
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catch_0
    move-exception v1

    #@33
    .line 908
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    #@36
    const-string/jumbo v6, "Error notifying for print job state change"

    #@39
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_1

    #@3d
    .line 891
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3
    return-void
.end method

.method private onConfigurationChangedLocked()V
    .locals 12

    #@0
    .prologue
    .line 794
    new-instance v8, Landroid/util/ArraySet;

    #@2
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 796
    .local v8, "installedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v9

    #@b
    .line 797
    .local v9, "installedCount":I
    const/4 v7, 0x0

    #@c
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    #@e
    .line 798
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@10
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/printservice/PrintServiceInfo;

    #@16
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@19
    move-result-object v11

    #@1a
    .line 799
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    #@1c
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1e
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@20
    .line 800
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@22
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@24
    .line 799
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 802
    .local v2, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2a
    .line 804
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@2c
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 805
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@34
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_0

    #@3a
    .line 806
    new-instance v0, Lcom/android/server/print/RemotePrintService;

    #@3c
    .line 807
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@3e
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@40
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@42
    move-object v5, p0

    #@43
    .line 806
    invoke-direct/range {v0 .. v5}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    #@46
    .line 808
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@49
    .line 797
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@4e
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    #@54
    .line 812
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    #@56
    .line 813
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@59
    goto :goto_1

    #@5a
    .line 819
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@5f
    move-result-object v1

    #@60
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v10

    #@64
    .line 820
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_4

    #@6a
    .line 821
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Ljava/util/Map$Entry;

    #@70
    .line 822
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@73
    move-result-object v2

    #@74
    check-cast v2, Landroid/content/ComponentName;

    #@76
    .line 823
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    #@7c
    .line 824
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7f
    move-result v1

    #@80
    if-nez v1, :cond_3

    #@82
    .line 825
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    #@85
    .line 826
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    #@88
    goto :goto_2

    #@89
    .line 793
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    :cond_4
    return-void
.end method

.method private readConfigurationLocked()Z
    .locals 2

    #@0
    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    #@3
    move-result v0

    #@4
    .line 636
    .local v0, "somethingChanged":Z
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 637
    return v0
.end method

.method private readEnabledPrintServicesLocked()Z
    .locals 2

    #@0
    .prologue
    .line 700
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 701
    .local v0, "tempEnabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v1, "enabled_print_services"

    #@8
    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    #@b
    .line 703
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@d
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 704
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@15
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@18
    .line 705
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 706
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 708
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private readInstalledPrintServicesLocked()Z
    .locals 17

    #@0
    .prologue
    .line 641
    new-instance v12, Ljava/util/HashSet;

    #@2
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 643
    .local v12, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v13

    #@d
    .line 644
    move-object/from16 v0, p0

    #@f
    iget-object v14, v0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    #@11
    .line 645
    move-object/from16 v0, p0

    #@13
    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    #@15
    .line 644
    const/16 v16, 0x84

    #@17
    .line 643
    move/from16 v0, v16

    #@19
    invoke-virtual {v13, v14, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 647
    .local v5, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@20
    move-result v3

    #@21
    .line 648
    .local v3, "installedCount":I
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    move v1, v3

    #@23
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@25
    .line 649
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@2b
    .line 650
    .local v4, "installedService":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v13, "android.permission.BIND_PRINT_SERVICE"

    #@2e
    .line 651
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@30
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@32
    .line 650
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v13

    #@36
    if-nez v13, :cond_0

    #@38
    .line 652
    new-instance v10, Landroid/content/ComponentName;

    #@3a
    .line 653
    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3c
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@3e
    .line 654
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@40
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@42
    .line 652
    invoke-direct {v10, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 655
    .local v10, "serviceName":Landroid/content/ComponentName;
    const-string/jumbo v13, "UserState"

    #@48
    new-instance v14, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v15, "Skipping print service "

    #@50
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v14

    #@54
    .line 656
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@57
    move-result-object v15

    #@58
    .line 655
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v14

    #@5c
    .line 657
    const-string/jumbo v15, " since it does not require permission "

    #@5f
    .line 655
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v14

    #@63
    .line 658
    const-string/jumbo v15, "android.permission.BIND_PRINT_SERVICE"

    #@66
    .line 655
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v14

    #@6a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v14

    #@6e
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 648
    .end local v10    # "serviceName":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_0

    #@74
    .line 661
    :cond_0
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@78
    invoke-static {v4, v13}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    #@7b
    move-result-object v13

    #@7c
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_1

    #@80
    .line 664
    .end local v4    # "installedService":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v11, 0x0

    #@81
    .line 666
    .local v11, "someServiceChanged":Z
    invoke-interface {v12}, Ljava/util/Set;->size()I

    #@84
    move-result v13

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@89
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@8c
    move-result v14

    #@8d
    if-eq v13, v14, :cond_3

    #@8f
    .line 667
    const/4 v11, 0x1

    #@90
    .line 690
    :cond_2
    :goto_2
    if-eqz v11, :cond_7

    #@92
    .line 691
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@96
    invoke-interface {v13}, Ljava/util/List;->clear()V

    #@99
    .line 692
    move-object/from16 v0, p0

    #@9b
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@9d
    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a0
    .line 693
    const/4 v13, 0x1

    #@a1
    return v13

    #@a2
    .line 669
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v7

    #@a6
    .local v7, "newService$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v13

    #@aa
    if-eqz v13, :cond_2

    #@ac
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v6

    #@b0
    check-cast v6, Landroid/printservice/PrintServiceInfo;

    #@b2
    .line 670
    .local v6, "newService":Landroid/printservice/PrintServiceInfo;
    move-object/from16 v0, p0

    #@b4
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@b6
    invoke-interface {v13, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@b9
    move-result v9

    #@ba
    .line 671
    .local v9, "oldServiceIndex":I
    if-gez v9, :cond_5

    #@bc
    .line 672
    const/4 v11, 0x1

    #@bd
    .line 673
    goto :goto_2

    #@be
    .line 677
    :cond_5
    move-object/from16 v0, p0

    #@c0
    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@c2
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c5
    move-result-object v8

    #@c6
    check-cast v8, Landroid/printservice/PrintServiceInfo;

    #@c8
    .line 678
    .local v8, "oldService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@cb
    move-result-object v13

    #@cc
    .line 679
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@cf
    move-result-object v14

    #@d0
    .line 678
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@d3
    move-result v13

    #@d4
    if-eqz v13, :cond_6

    #@d6
    .line 680
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@d9
    move-result-object v13

    #@da
    .line 681
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@dd
    move-result-object v14

    #@de
    .line 680
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@e1
    move-result v13

    #@e2
    if-eqz v13, :cond_6

    #@e4
    .line 682
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@e7
    move-result-object v13

    #@e8
    .line 683
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@eb
    move-result-object v14

    #@ec
    .line 682
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@ef
    move-result v13

    #@f0
    if-nez v13, :cond_4

    #@f2
    .line 684
    :cond_6
    const/4 v11, 0x1

    #@f3
    .line 685
    goto :goto_2

    #@f4
    .line 696
    .end local v6    # "newService":Landroid/printservice/PrintServiceInfo;
    .end local v7    # "newService$iterator":Ljava/util/Iterator;
    .end local v8    # "oldService":Landroid/printservice/PrintServiceInfo;
    .end local v9    # "oldServiceIndex":I
    :cond_7
    const/4 v13, 0x0

    #@f5
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
    .line 713
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 714
    iget v5, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@8
    .line 713
    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 715
    .local v1, "settingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 716
    iget-object v2, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@14
    .line 717
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@17
    .line 718
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 719
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 720
    .local v3, "string":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_0

    #@27
    .line 723
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2a
    move-result-object v0

    #@2b
    .line 724
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@2d
    .line 725
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 712
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
    .line 840
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    #@7
    .line 842
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 843
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    #@10
    .line 838
    :goto_0
    return-void

    #@11
    .line 846
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    #@14
    goto :goto_0
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    #@0
    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 885
    :cond_0
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
    .line 452
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 454
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 456
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 455
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@11
    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@13
    .line 459
    new-instance v2, Lcom/android/server/print/UserState$3;

    #@15
    invoke-direct {v2, p0, p0, p1, p2}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    #@18
    .line 458
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 451
    return-void

    #@1d
    .line 452
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 275
    iget-object v3, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@3
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    .line 276
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    #@9
    .line 277
    return-void

    #@a
    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@c
    const/4 v4, 0x1

    #@d
    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    #@10
    .line 283
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x6

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 284
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@1e
    move-result-object v2

    #@1f
    .line 285
    .local v2, "printServiceName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@20
    .line 286
    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@22
    monitor-enter v4

    #@23
    .line 287
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    check-cast v1, Lcom/android/server/print/RemotePrintService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    monitor-exit v4

    #@2c
    .line 289
    if-nez v1, :cond_1

    #@2e
    .line 290
    return-void

    #@2f
    .line 286
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3

    #@32
    .line 292
    .restart local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    #@35
    .line 274
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    :goto_0
    return-void

    #@36
    .line 296
    :cond_2
    iget-object v3, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@38
    const/4 v4, 0x7

    #@39
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@3c
    goto :goto_0
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    #@0
    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 336
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 337
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
    .line 338
    return-void

    #@10
    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 342
    new-instance v0, Lcom/android/server/print/UserState$2;

    #@16
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@18
    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/content/Context;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1d
    .line 349
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1f
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    :goto_0
    monitor-exit v1

    #@23
    .line 334
    return-void

    #@24
    .line 352
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@26
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 335
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public destroyLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 562
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@4
    .line 563
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@6
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    #@9
    .line 564
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
    .line 565
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->destroy()V

    #@22
    goto :goto_0

    #@23
    .line 567
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@28
    .line 568
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@2a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@2d
    .line 569
    iget-object v2, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@2f
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@32
    .line 570
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 571
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@38
    invoke-virtual {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    #@3b
    .line 572
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@3d
    .line 574
    :cond_1
    const/4 v2, 0x1

    #@3e
    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    #@40
    .line 561
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    #@0
    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 361
    return-void

    #@9
    .line 364
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
    .line 357
    return-void

    #@10
    .line 358
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
    .line 578
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
    .line 579
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 581
    const-string/jumbo v13, "  "

    #@23
    .line 583
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
    .line 584
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@39
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@3c
    move-result v10

    #@3d
    .line 585
    .local v10, "installedServiceCount":I
    const/4 v8, 0x0

    #@3e
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    #@40
    .line 586
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
    .line 587
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
    .line 588
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
    .line 589
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@74
    move-result-object v12

    #@75
    .line 590
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@77
    .line 591
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@79
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@7b
    .line 592
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7d
    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@7f
    .line 590
    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    .line 593
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
    .line 594
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    .line 593
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@9a
    move-result-object v14

    #@9b
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@9e
    .line 595
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
    .line 596
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    #@b2
    move-result-object v15

    #@b3
    .line 595
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@ba
    .line 597
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
    .line 598
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    #@ce
    move-result-object v15

    #@cf
    .line 597
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@d2
    move-result-object v14

    #@d3
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@d6
    .line 599
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
    .line 600
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    #@ea
    move-result-object v15

    #@eb
    .line 599
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ee
    move-result-object v14

    #@ef
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@f2
    .line 585
    add-int/lit8 v8, v8, 0x1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 603
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
    const-string/jumbo v15, "enabled services:"

    #@101
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@104
    move-result-object v14

    #@105
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    #@108
    .line 604
    move-object/from16 v0, p0

    #@10a
    iget-object v14, v0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    #@10c
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10f
    move-result-object v6

    #@110
    .local v6, "enabledService$iterator":Ljava/util/Iterator;
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
    .line 605
    .local v5, "enabledService":Landroid/content/ComponentName;
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
    .line 606
    .local v7, "enabledServicePrefix":Ljava/lang/String;
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
    .line 607
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
    .line 608
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@157
    move-result-object v15

    #@158
    .line 607
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@15b
    .line 609
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@15e
    goto :goto_1

    #@15f
    .line 612
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    .end local v7    # "enabledServicePrefix":Ljava/lang/String;
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
    .line 613
    move-object/from16 v0, p0

    #@173
    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@175
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@178
    move-result v3

    #@179
    .line 614
    .local v3, "activeServiceCount":I
    const/4 v8, 0x0

    #@17a
    :goto_2
    if-ge v8, v3, :cond_2

    #@17c
    .line 615
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
    .line 616
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
    .line 617
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1a5
    .line 614
    add-int/lit8 v8, v8, 0x1

    #@1a7
    goto :goto_2

    #@1a8
    .line 620
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
    .line 621
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
    .line 623
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
    .line 624
    move-object/from16 v0, p0

    #@1ee
    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@1f0
    if-eqz v14, :cond_3

    #@1f2
    .line 625
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
    .line 628
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
    .line 629
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
    .line 630
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@249
    .line 577
    return-void
.end method

.method public getEnabledPrintServices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    iget-object v7, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 310
    const/4 v1, 0x0

    #@4
    .line 311
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@6
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v5

    #@a
    .line 312
    .local v5, "installedServiceCount":I
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    move-object v2, v1

    #@c
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v2, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_0
    if-ge v3, v5, :cond_0

    #@e
    .line 313
    :try_start_1
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    #@10
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/printservice/PrintServiceInfo;

    #@16
    .line 314
    .local v4, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@18
    .line 315
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@1b
    move-result-object v6

    #@1c
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1e
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@20
    .line 316
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@23
    move-result-object v8

    #@24
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@26
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@28
    .line 314
    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 317
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 318
    if-nez v2, :cond_1

    #@35
    .line 319
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    .line 321
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_1
    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 312
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    move-object v2, v1

    #@40
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_0

    #@41
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    :cond_0
    monitor-exit v7

    #@42
    .line 324
    return-object v2

    #@43
    .line 309
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "installedServiceCount":I
    :catchall_0
    move-exception v6

    #@44
    :goto_3
    monitor-exit v7

    #@45
    throw v6

    #@46
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v3    # "i":I
    .restart local v5    # "installedServiceCount":I
    :catchall_1
    move-exception v6

    #@47
    move-object v1, v2

    #@48
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3

    #@49
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    :cond_1
    move-object v1, v2

    #@4a
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_1

    #@4b
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_2
    move-object v1, v2

    #@4c
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_2
.end method

.method public getEnabledServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 557
    iget-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 555
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getInstalledPrintServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 329
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    .line 262
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    #@9
    .line 263
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@b
    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@e
    move-result-object v0

    #@f
    .line 265
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 268
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@14
    .line 269
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@17
    .line 271
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
    .line 221
    iget-object v8, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@3
    invoke-virtual {v8, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 229
    .local v2, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v7, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@c
    .line 232
    .local v7, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    .line 233
    .local v1, "cachedPrintJobCount":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@13
    .line 234
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/print/PrintJobInfo;

    #@19
    .line 235
    .local v0, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 238
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@23
    .line 239
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@26
    .line 233
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 243
    .end local v0    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    :cond_0
    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2b
    .line 244
    const/4 v9, -0x1

    #@2c
    .line 243
    invoke-virtual {v8, v10, v9, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    #@2f
    move-result-object v6

    #@30
    .line 245
    .local v6, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v6, :cond_1

    #@32
    .line 246
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@35
    move-result v5

    #@36
    .line 247
    .local v5, "printJobCount":I
    const/4 v3, 0x0

    #@37
    :goto_1
    if-ge v3, v5, :cond_1

    #@39
    .line 248
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Landroid/print/PrintJobInfo;

    #@3f
    .line 249
    .local v4, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 252
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    #@49
    .line 253
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    #@4c
    .line 247
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 257
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

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "printService"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 157
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
    .line 159
    if-eqz v0, :cond_0

    #@11
    .line 160
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    #@14
    .line 153
    :cond_0
    return-void

    #@15
    .line 155
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 139
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@d
    move-result-object v0

    #@e
    .line 140
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
    .line 142
    if-eqz v1, :cond_0

    #@19
    .line 143
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    #@1c
    .line 135
    :goto_0
    return-void

    #@1d
    .line 137
    .end local v0    # "printServiceName":Landroid/content/ComponentName;
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .line 147
    .restart local v0    # "printServiceName":Landroid/content/ComponentName;
    .restart local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@22
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@25
    move-result-object v3

    #@26
    .line 148
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@28
    const v5, 0x1040546

    #@2b
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 147
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
    .line 491
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@5
    .line 492
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    #@7
    .line 493
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@e
    move-result-object v2

    #@f
    .line 492
    const/4 v3, 0x1

    #@10
    .line 493
    const/4 v4, 0x0

    #@11
    .line 492
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 490
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
    .line 498
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 499
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 501
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
    .line 502
    return-void

    #@10
    .line 505
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
    .line 506
    return-void

    #@16
    .line 508
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
    .line 497
    return-void

    #@1d
    .line 498
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
    .line 514
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 515
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 517
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
    .line 518
    return-void

    #@10
    .line 521
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
    .line 522
    return-void

    #@16
    .line 524
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
    .line 513
    return-void

    #@1d
    .line 514
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
    .line 530
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 531
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 533
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
    .line 534
    return-void

    #@10
    .line 537
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    #@17
    .line 538
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    #@1a
    .line 540
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    if-nez v0, :cond_1

    #@1e
    monitor-exit v1

    #@1f
    .line 541
    return-void

    #@20
    .line 543
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
    .line 529
    return-void

    #@27
    .line 530
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
    .line 172
    new-instance v11, Landroid/print/PrintJobInfo;

    #@2
    invoke-direct {v11}, Landroid/print/PrintJobInfo;-><init>()V

    #@5
    .line 173
    .local v11, "printJob":Landroid/print/PrintJobInfo;
    new-instance v2, Landroid/print/PrintJobId;

    #@7
    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    #@a
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    #@d
    .line 174
    move/from16 v0, p5

    #@f
    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAppId(I)V

    #@12
    .line 175
    invoke-virtual {v11, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    #@15
    .line 176
    move-object/from16 v0, p3

    #@17
    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    #@1a
    .line 177
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setState(I)V

    #@1e
    .line 178
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setCopies(I)V

    #@22
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {v11, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    #@29
    .line 182
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
    .line 185
    const/4 v2, 0x0

    #@38
    return-object v2

    #@39
    .line 189
    :cond_0
    new-instance v3, Lcom/android/server/print/UserState$1;

    #@3b
    invoke-direct {v3, p0, v11}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V

    #@3e
    .line 195
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@40
    const/4 v2, 0x0

    #@41
    check-cast v2, [Ljava/lang/Void;

    #@43
    .line 189
    invoke-virtual {v3, v5, v2}, Lcom/android/server/print/UserState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@46
    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@49
    move-result-wide v8

    #@4a
    .line 199
    .local v8, "identity":J
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    #@4c
    const-string/jumbo v2, "android.print.PRINT_DIALOG"

    #@4f
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@52
    .line 200
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
    .line 201
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    #@68
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@6f
    .line 202
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@72
    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@75
    .line 203
    const-string/jumbo v2, "android.content.extra.PACKAGE_NAME"

    #@78
    move-object/from16 v0, p4

    #@7a
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7d
    .line 206
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    #@7f
    .line 208
    new-instance v7, Landroid/os/UserHandle;

    #@81
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    #@83
    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@86
    .line 206
    const/4 v3, 0x0

    #@87
    const/high16 v5, 0x54000000

    #@89
    .line 208
    const/4 v6, 0x0

    #@8a
    .line 205
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@91
    move-result-object v10

    #@92
    .line 210
    .local v10, "intentSender":Landroid/content/IntentSender;
    new-instance v12, Landroid/os/Bundle;

    #@94
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    #@97
    .line 211
    .local v12, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@9a
    invoke-virtual {v12, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@9d
    .line 212
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    #@a0
    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a3
    .line 216
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 214
    return-object v12

    #@a7
    .line 215
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "intentSender":Landroid/content/IntentSender;
    .end local v12    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    #@a8
    .line 216
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 215
    throw v2
.end method

.method public removeObsoletePrintJobs()V
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    #@5
    .line 164
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    #@0
    .prologue
    .line 469
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 470
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 471
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 472
    return-void

    #@c
    .line 474
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 475
    .local v2, "recordCount":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@15
    .line 477
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@17
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    #@1d
    .line 478
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
    .line 479
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    #@2f
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@32
    .line 483
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
    .line 484
    const/4 v3, 0x0

    #@3b
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :cond_2
    monitor-exit v4

    #@3e
    .line 468
    return-void

    #@3f
    .line 475
    .restart local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 469
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

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    #@4
    move-result-object v0

    #@5
    .line 302
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
    .line 303
    :cond_0
    return-void

    #@f
    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@15
    .line 300
    return-void
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
    .line 370
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 373
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
    .line 374
    return-void

    #@10
    .line 377
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
    .line 378
    return-void

    #@16
    .line 381
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 369
    return-void

    #@1d
    .line 370
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 422
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
    .line 423
    return-void

    #@10
    .line 426
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
    .line 427
    return-void

    #@16
    .line 430
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
    .line 418
    return-void

    #@1d
    .line 419
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
    .line 387
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 390
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
    .line 391
    return-void

    #@10
    .line 394
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
    .line 395
    return-void

    #@16
    .line 398
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 386
    return-void

    #@1d
    .line 387
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 436
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 438
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
    .line 439
    return-void

    #@10
    .line 442
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
    .line 443
    return-void

    #@16
    .line 446
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
    .line 434
    return-void

    #@1d
    .line 435
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
    .line 548
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@3
    .line 549
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 550
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    #@c
    .line 547
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
    .line 403
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    #@6
    .line 406
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
    .line 407
    return-void

    #@10
    .line 410
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
    .line 411
    return-void

    #@16
    .line 414
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
    .line 402
    return-void

    #@1d
    .line 403
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
