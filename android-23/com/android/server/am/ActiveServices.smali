.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$1;
    }
.end annotation


# static fields
.field static final BG_START_TIMEOUT:I = 0x3a98

.field private static final DEBUG_DELAYED_SERVICE:Z = false

.field private static final DEBUG_DELAYED_STARTS:Z = false

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x3e8

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@a
    .line 130
    new-instance v2, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@11
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@18
    .line 143
    new-instance v2, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1f
    .line 148
    new-instance v2, Ljava/util/ArrayList;

    #@21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@26
    .line 151
    const/4 v2, 0x0

    #@27
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@29
    .line 158
    new-instance v2, Lcom/android/server/am/ActiveServices$1;

    #@2b
    invoke-direct {v2, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    #@2e
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    #@30
    .line 271
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@32
    .line 272
    const/4 v1, 0x0

    #@33
    .line 274
    .local v1, "maxBg":I
    :try_start_0
    const-string/jumbo v2, "ro.config.max_starting_bg"

    #@36
    const-string/jumbo v3, "0"

    #@39
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result v1

    #@41
    .line 277
    :goto_0
    if-lez v1, :cond_0

    #@43
    .end local v1    # "maxBg":I
    :goto_1
    iput v1, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@45
    .line 270
    return-void

    #@46
    .line 278
    .restart local v1    # "maxBg":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_1

    #@4c
    const/4 v1, 0x1

    #@4d
    goto :goto_1

    #@4e
    :cond_1
    const/16 v1, 0x8

    #@50
    goto :goto_1

    #@51
    .line 275
    :catch_0
    move-exception v0

    #@52
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    #@0
    .prologue
    .line 1669
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1670
    return-void

    #@7
    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1675
    return-void

    #@10
    .line 1678
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@13
    .line 1665
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 1687
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v10

    #@6
    add-int/lit8 v1, v10, -0x1

    #@8
    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 1688
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/ArrayList;

    #@12
    .line 1689
    .local v0, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    #@13
    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v10

    #@17
    if-ge v4, v10, :cond_0

    #@19
    .line 1690
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    #@1f
    .line 1693
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v10, 0x1

    #@20
    iput-boolean v10, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    #@22
    .line 1695
    :try_start_0
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@24
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@26
    const/4 v12, 0x0

    #@27
    invoke-interface {v10, v11, v12}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 1689
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 1696
    :catch_0
    move-exception v3

    #@2e
    .line 1697
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ActivityManager"

    #@31
    new-instance v10, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v12, "Failure disconnecting service "

    #@39
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v10

    #@3d
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@3f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v10

    #@43
    .line 1698
    const-string/jumbo v12, " to connection "

    #@46
    .line 1697
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    .line 1698
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v10

    #@4e
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    #@50
    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@52
    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@55
    move-result-object v10

    #@56
    .line 1697
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    .line 1699
    const-string/jumbo v12, " (in "

    #@5d
    .line 1697
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v12

    #@61
    .line 1699
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v10

    #@65
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    #@67
    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@69
    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@6b
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@6d
    .line 1697
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v10

    #@71
    .line 1699
    const-string/jumbo v12, ")"

    #@74
    .line 1697
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    invoke-static {v11, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7f
    goto :goto_2

    #@80
    .line 1687
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@82
    goto :goto_0

    #@83
    .line 1705
    .end local v0    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@85
    if-eqz v10, :cond_3

    #@87
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@89
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8b
    if-eqz v10, :cond_3

    #@8d
    .line 1706
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@8f
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@92
    move-result v10

    #@93
    add-int/lit8 v4, v10, -0x1

    #@95
    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_3

    #@97
    .line 1707
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@99
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9c
    move-result-object v5

    #@9d
    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    #@9f
    .line 1710
    .local v5, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@a1
    if-eqz v10, :cond_2

    #@a3
    .line 1712
    :try_start_1
    const-string/jumbo v10, "bring down unbind"

    #@a6
    const/4 v11, 0x0

    #@a7
    invoke-direct {p0, p1, v11, v10}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@aa
    .line 1713
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ac
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ae
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@b1
    .line 1714
    const/4 v10, 0x0

    #@b2
    iput-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@b4
    .line 1715
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b6
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b8
    .line 1716
    iget-object v11, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@ba
    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@bd
    move-result-object v11

    #@be
    .line 1715
    invoke-interface {v10, p1, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@c1
    .line 1706
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, -0x1

    #@c3
    goto :goto_3

    #@c4
    .line 1717
    :catch_1
    move-exception v3

    #@c5
    .line 1718
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ActivityManager"

    #@c8
    new-instance v11, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v12, "Exception when unbinding service "

    #@d0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v11

    #@d4
    .line 1719
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@d6
    .line 1718
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v11

    #@de
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e1
    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@e4
    goto :goto_4

    #@e5
    .line 1727
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e8
    move-result-wide v10

    #@e9
    iput-wide v10, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@eb
    .line 1733
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@ed
    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@f0
    move-result-object v7

    #@f1
    .line 1734
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@f3
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@f5
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    .line 1735
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@fa
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@fc
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    .line 1736
    const/4 v10, 0x0

    #@100
    iput v10, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@102
    .line 1737
    const/4 v10, 0x0

    #@103
    const/4 v11, 0x1

    #@104
    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@107
    .line 1740
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@109
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@10c
    move-result v10

    #@10d
    add-int/lit8 v4, v10, -0x1

    #@10f
    .restart local v4    # "i":I
    :goto_5
    if-ltz v4, :cond_5

    #@111
    .line 1741
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v10

    #@117
    if-ne v10, p1, :cond_4

    #@119
    .line 1742
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@11b
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11e
    .line 1740
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@120
    goto :goto_5

    #@121
    .line 1747
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@124
    .line 1748
    const/4 v10, 0x0

    #@125
    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@127
    .line 1749
    const/4 v10, 0x0

    #@128
    iput v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@12a
    .line 1750
    const/4 v10, 0x0

    #@12b
    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@12d
    .line 1753
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    #@130
    .line 1754
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@132
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@135
    .line 1756
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@137
    if-eqz v10, :cond_6

    #@139
    .line 1757
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@13b
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@13e
    move-result-object v11

    #@13f
    monitor-enter v11

    #@140
    .line 1758
    :try_start_2
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@142
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@145
    monitor-exit v11

    #@146
    .line 1760
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@148
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@14a
    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@14d
    .line 1761
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@14f
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@151
    if-eqz v10, :cond_6

    #@153
    .line 1762
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@155
    const/4 v11, 0x0

    #@156
    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@159
    .line 1764
    :try_start_3
    const-string/jumbo v10, "destroy"

    #@15c
    const/4 v11, 0x0

    #@15d
    invoke-direct {p0, p1, v11, v10}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@160
    .line 1765
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@162
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@165
    .line 1766
    const/4 v10, 0x1

    #@166
    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@168
    .line 1767
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16a
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@16c
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@16f
    .line 1768
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@171
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@173
    invoke-interface {v10, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@176
    .line 1783
    :cond_6
    :goto_6
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@178
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@17b
    move-result v10

    #@17c
    if-lez v10, :cond_7

    #@17e
    .line 1784
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@180
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@183
    .line 1787
    :cond_7
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@185
    instance-of v10, v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@187
    if-eqz v10, :cond_8

    #@189
    .line 1788
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@18b
    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@18d
    const/4 v11, 0x0

    #@18e
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    #@191
    .line 1791
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@193
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@195
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@198
    move-result v6

    #@199
    .line 1792
    .local v6, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19c
    move-result-wide v8

    #@19d
    .line 1793
    .local v8, "now":J
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@19f
    if-eqz v10, :cond_9

    #@1a1
    .line 1794
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1a3
    const/4 v11, 0x0

    #@1a4
    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@1a7
    .line 1795
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1a9
    const/4 v11, 0x0

    #@1aa
    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@1ad
    .line 1796
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@1af
    if-nez v10, :cond_9

    #@1b1
    .line 1797
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1b3
    const/4 v11, 0x0

    #@1b4
    invoke-virtual {v10, p1, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@1b7
    .line 1798
    const/4 v10, 0x0

    #@1b8
    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1ba
    .line 1802
    :cond_9
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@1bd
    .line 1681
    return-void

    #@1be
    .line 1757
    .end local v6    # "memFactor":I
    .end local v8    # "now":J
    :catchall_0
    move-exception v10

    #@1bf
    monitor-exit v11

    #@1c0
    throw v10

    #@1c1
    .line 1769
    :catch_2
    move-exception v3

    #@1c2
    .line 1770
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ActivityManager"

    #@1c5
    new-instance v11, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v12, "Exception when destroying service "

    #@1cd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v11

    #@1d1
    .line 1771
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@1d3
    .line 1770
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v11

    #@1d7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v11

    #@1db
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1de
    .line 1772
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@1e1
    goto :goto_6
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 1367
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4
    if-eqz v4, :cond_0

    #@6
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1368
    const/4 v4, 0x0

    #@f
    move-object/from16 v0, p0

    #@11
    move-object/from16 v1, p1

    #@13
    move/from16 v2, p3

    #@15
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@18
    .line 1369
    const/4 v4, 0x0

    #@19
    return-object v4

    #@1a
    .line 1372
    :cond_0
    if-nez p4, :cond_1

    #@1c
    move-object/from16 v0, p1

    #@1e
    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@20
    const-wide/16 v8, 0x0

    #@22
    cmp-long v4, v6, v8

    #@24
    if-lez v4, :cond_1

    #@26
    .line 1374
    const/4 v4, 0x0

    #@27
    return-object v4

    #@28
    .line 1381
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 1382
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    #@37
    .line 1383
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@3a
    .line 1387
    :cond_2
    move-object/from16 v0, p1

    #@3c
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@3e
    if-eqz v4, :cond_3

    #@40
    .line 1389
    move-object/from16 v0, p1

    #@42
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@49
    move-result-object v4

    #@4a
    iget-object v4, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@51
    .line 1390
    const/4 v4, 0x0

    #@52
    move-object/from16 v0, p1

    #@54
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@56
    .line 1395
    :cond_3
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    #@5c
    move-object/from16 v0, p1

    #@5e
    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@60
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    if-nez v4, :cond_4

    #@66
    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v6, "Unable to launch app "

    #@6e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 1397
    move-object/from16 v0, p1

    #@74
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 1397
    const-string/jumbo v6, "/"

    #@7f
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 1398
    move-object/from16 v0, p1

    #@85
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@87
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@89
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 1398
    const-string/jumbo v6, " for service "

    #@90
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 1399
    move-object/from16 v0, p1

    #@96
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@98
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@9b
    move-result-object v6

    #@9c
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 1399
    const-string/jumbo v6, ": user "

    #@a3
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    .line 1399
    move-object/from16 v0, p1

    #@a9
    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@ab
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 1399
    const-string/jumbo v6, " is stopped"

    #@b2
    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v18

    #@ba
    .line 1400
    .local v18, "msg":Ljava/lang/String;
    const-string/jumbo v4, "ActivityManager"

    #@bd
    move-object/from16 v0, v18

    #@bf
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 1401
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@c5
    .line 1402
    return-object v18

    #@c6
    .line 1407
    .end local v18    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@c9
    move-result-object v4

    #@ca
    .line 1408
    move-object/from16 v0, p1

    #@cc
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@ce
    move-object/from16 v0, p1

    #@d0
    iget v7, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@d2
    const/4 v8, 0x0

    #@d3
    .line 1407
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d6
    .line 1415
    :goto_0
    move-object/from16 v0, p1

    #@d8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@da
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@dc
    and-int/lit8 v4, v4, 0x2

    #@de
    if-eqz v4, :cond_5

    #@e0
    const/4 v12, 0x1

    #@e1
    .line 1416
    .local v12, "isolated":Z
    :goto_1
    move-object/from16 v0, p1

    #@e3
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@e5
    .line 1419
    .local v5, "procName":Ljava/lang/String;
    if-nez v12, :cond_7

    #@e7
    .line 1420
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@eb
    move-object/from16 v0, p1

    #@ed
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ef
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@f1
    const/4 v7, 0x0

    #@f2
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@f5
    move-result-object v14

    #@f6
    .line 1423
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_6

    #@f8
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@fa
    if-eqz v4, :cond_6

    #@fc
    .line 1425
    :try_start_1
    move-object/from16 v0, p1

    #@fe
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@100
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@102
    move-object/from16 v0, p1

    #@104
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@106
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10c
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@10e
    invoke-virtual {v14, v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@111
    .line 1426
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, p1

    #@115
    move/from16 v2, p3

    #@117
    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@11a
    .line 1427
    const/4 v4, 0x0

    #@11b
    return-object v4

    #@11c
    .line 1410
    .end local v5    # "procName":Ljava/lang/String;
    .end local v12    # "isolated":Z
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v17

    #@11d
    .line 1411
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ActivityManager"

    #@120
    new-instance v6, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v7, "Failed trying to unstop package "

    #@128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v6

    #@12c
    .line 1412
    move-object/from16 v0, p1

    #@12e
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@130
    .line 1411
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v6

    #@134
    .line 1412
    const-string/jumbo v7, ": "

    #@137
    .line 1411
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v6

    #@13b
    move-object/from16 v0, v17

    #@13d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v6

    #@141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v6

    #@145
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@148
    goto :goto_0

    #@149
    .line 1415
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    const/4 v12, 0x0

    #@14a
    .restart local v12    # "isolated":Z
    goto :goto_1

    #@14b
    .line 1430
    .restart local v5    # "procName":Ljava/lang/String;
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v15

    #@14c
    .line 1431
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ActivityManager"

    #@14f
    new-instance v6, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v7, "Exception when starting service "

    #@157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v6

    #@15b
    move-object/from16 v0, p1

    #@15d
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@15f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v6

    #@163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v6

    #@167
    invoke-static {v4, v6, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16a
    .line 1449
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    if-nez v14, :cond_9

    #@16c
    .line 1450
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@170
    move-object/from16 v0, p1

    #@172
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@174
    .line 1451
    const-string/jumbo v9, "service"

    #@177
    move-object/from16 v0, p1

    #@179
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@17b
    .line 1450
    const/4 v7, 0x1

    #@17c
    .line 1451
    const/4 v11, 0x0

    #@17d
    const/4 v13, 0x0

    #@17e
    move/from16 v8, p2

    #@180
    .line 1450
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@183
    move-result-object v14

    #@184
    if-nez v14, :cond_8

    #@186
    .line 1452
    new-instance v4, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v6, "Unable to launch app "

    #@18e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v4

    #@192
    .line 1453
    move-object/from16 v0, p1

    #@194
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@196
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@198
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v4

    #@19c
    .line 1453
    const-string/jumbo v6, "/"

    #@19f
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v4

    #@1a3
    .line 1454
    move-object/from16 v0, p1

    #@1a5
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1a7
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a9
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v4

    #@1ad
    .line 1454
    const-string/jumbo v6, " for service "

    #@1b0
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v4

    #@1b4
    .line 1455
    move-object/from16 v0, p1

    #@1b6
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@1b8
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@1bb
    move-result-object v6

    #@1bc
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v4

    #@1c0
    .line 1455
    const-string/jumbo v6, ": process is bad"

    #@1c3
    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v4

    #@1c7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v18

    #@1cb
    .line 1456
    .restart local v18    # "msg":Ljava/lang/String;
    const-string/jumbo v4, "ActivityManager"

    #@1ce
    move-object/from16 v0, v18

    #@1d0
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d3
    .line 1457
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@1d6
    .line 1458
    return-object v18

    #@1d7
    .line 1428
    .end local v18    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v16

    #@1d8
    .line 1429
    .local v16, "e":Landroid/os/TransactionTooLargeException;
    throw v16

    #@1d9
    .line 1444
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "e":Landroid/os/TransactionTooLargeException;
    :cond_7
    move-object/from16 v0, p1

    #@1db
    iget-object v14, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@1dd
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_2

    #@1de
    .line 1460
    :cond_8
    if-eqz v12, :cond_9

    #@1e0
    .line 1461
    move-object/from16 v0, p1

    #@1e2
    iput-object v14, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@1e4
    .line 1465
    :cond_9
    move-object/from16 v0, p0

    #@1e6
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@1e8
    move-object/from16 v0, p1

    #@1ea
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1ed
    move-result v4

    #@1ee
    if-nez v4, :cond_a

    #@1f0
    .line 1466
    move-object/from16 v0, p0

    #@1f2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f9
    .line 1469
    :cond_a
    move-object/from16 v0, p1

    #@1fb
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@1fd
    if-eqz v4, :cond_b

    #@1ff
    .line 1471
    const/4 v4, 0x0

    #@200
    move-object/from16 v0, p1

    #@202
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@204
    .line 1472
    move-object/from16 v0, p1

    #@206
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@208
    if-eqz v4, :cond_b

    #@20a
    .line 1475
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@20d
    .line 1479
    :cond_b
    const/4 v4, 0x0

    #@20e
    return-object v4

    #@20f
    .line 1409
    .end local v5    # "procName":Ljava/lang/String;
    .end local v12    # "isolated":Z
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_3
    move-exception v15

    #@210
    .restart local v15    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 1143
    .local v0, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@7
    if-nez v3, :cond_2

    #@9
    .line 1144
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@b
    .line 1145
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    #@e
    move-result-object v2

    #@f
    .line 1146
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    #@11
    .line 1147
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@15
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v5, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@1c
    .line 1149
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1150
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@22
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@24
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@27
    .line 1151
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@29
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@2b
    or-int/2addr v4, p2

    #@2c
    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@2e
    .line 1152
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@30
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@35
    move-result v3

    #@36
    if-ne v3, v5, :cond_1

    #@38
    .line 1153
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3a
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    #@3d
    .line 1160
    .end local v2    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@3f
    or-int/2addr v3, p2

    #@40
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@42
    .line 1161
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@44
    add-int/lit8 v3, v3, 0x1

    #@46
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@48
    .line 1162
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@4a
    .line 1137
    return-void

    #@4b
    .line 1156
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d
    if-eqz v3, :cond_1

    #@4f
    if-eqz p2, :cond_1

    #@51
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@53
    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@55
    if-nez v3, :cond_1

    #@57
    .line 1157
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@59
    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@5b
    .line 1158
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5d
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    #@60
    goto :goto_0
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1344
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1347
    const/4 v1, 0x0

    #@7
    .line 1348
    .local v1, "stillTracking":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@11
    .line 1349
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1b
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 1350
    const/4 v1, 0x1

    #@20
    .line 1354
    :cond_0
    if-nez v1, :cond_1

    #@22
    .line 1355
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@24
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@26
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@2b
    move-result v3

    #@2c
    .line 1356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    .line 1355
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    #@33
    .line 1357
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@35
    .line 1343
    .end local v0    # "i":I
    .end local v1    # "stillTracking":Z
    :cond_1
    return-void

    #@36
    .line 1348
    .restart local v0    # "i":I
    .restart local v1    # "stillTracking":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2089
    const/4 v0, 0x0

    #@3
    .line 2090
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    #@b
    .line 2091
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@11
    .line 2092
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_1

    #@13
    .line 2093
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_3

    #@1b
    .line 2094
    if-eqz p2, :cond_2

    #@1d
    .line 2095
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1f
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 2096
    :goto_1
    if-eqz v2, :cond_0

    #@29
    .line 2097
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2b
    if-eqz v4, :cond_4

    #@2d
    if-nez p3, :cond_4

    #@2f
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@31
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2090
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@37
    goto :goto_0

    #@38
    .line 2092
    :cond_1
    const/4 v2, 0x1

    #@39
    .local v2, "sameComponent":Z
    goto :goto_1

    #@3a
    .line 2094
    .end local v2    # "sameComponent":Z
    :cond_2
    const/4 v2, 0x1

    #@3b
    .restart local v2    # "sameComponent":Z
    goto :goto_1

    #@3c
    .line 2093
    .end local v2    # "sameComponent":Z
    :cond_3
    const/4 v2, 0x0

    #@3d
    .restart local v2    # "sameComponent":Z
    goto :goto_1

    #@3e
    .line 2098
    .end local v2    # "sameComponent":Z
    :cond_4
    if-nez p4, :cond_5

    #@40
    .line 2099
    return v8

    #@41
    .line 2101
    :cond_5
    const/4 v0, 0x1

    #@42
    .line 2102
    const-string/jumbo v4, "ActivityManager"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "  Force stopping service "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 2103
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5e
    if-eqz v4, :cond_6

    #@60
    .line 2104
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@62
    iput-boolean v8, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@64
    .line 2105
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@66
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@68
    if-nez v4, :cond_6

    #@6a
    .line 2106
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6c
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@6e
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@71
    .line 2109
    :cond_6
    iput-object v7, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@73
    .line 2110
    iput-object v7, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@75
    .line 2111
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@77
    if-nez v4, :cond_7

    #@79
    .line 2112
    new-instance v4, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7e
    iput-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@80
    .line 2114
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    goto :goto_2

    #@86
    .line 2117
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_8
    return v0
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    #@0
    .prologue
    .line 2874
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "  "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 2875
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16
    monitor-enter v5

    #@17
    .line 2876
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    const-string/jumbo v4, "SERVICE "

    #@1d
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 2877
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@22
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    const-string/jumbo v4, " "

    #@28
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 2878
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2e
    move-result v4

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 2879
    const-string/jumbo v4, " pid="

    #@39
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 2880
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3e
    if-eqz v4, :cond_2

    #@40
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@42
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@44
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    #@47
    .line 2882
    :goto_0
    if-eqz p6, :cond_0

    #@49
    .line 2883
    invoke-virtual {p4, p3, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    :cond_0
    monitor-exit v5

    #@4d
    .line 2886
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4f
    if-eqz v4, :cond_1

    #@51
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@53
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@55
    if-eqz v4, :cond_1

    #@57
    .line 2887
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v4, "  Client:"

    #@5d
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 2888
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    #@63
    .line 2890
    :try_start_1
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    #@65
    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    .line 2892
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6a
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6c
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@73
    move-result-object v5

    #@74
    invoke-interface {v4, v5, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@77
    .line 2893
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    const-string/jumbo v5, "    "

    #@83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@8e
    .line 2894
    invoke-virtual {v3, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@91
    .line 2896
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@94
    .line 2873
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    #@95
    .line 2881
    :cond_2
    :try_start_4
    const-string/jumbo v4, "(not running)"

    #@98
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9b
    goto :goto_0

    #@9c
    .line 2875
    :catchall_0
    move-exception v4

    #@9d
    monitor-exit v5

    #@9e
    throw v4

    #@9f
    .line 2895
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v4

    #@a0
    .line 2896
    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@a3
    .line 2895
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@a4
    .line 2898
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    #@a5
    .line 2899
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v4

    #@ae
    const-string/jumbo v5, "    Failure while dumping the service: "

    #@b1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c0
    goto :goto_1

    #@c1
    .line 2900
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@c2
    .line 2901
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    const-string/jumbo v5, "    Got a RemoteException while dumping the service"

    #@ce
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 997
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    #@3
    move-result-object v0

    #@4
    .line 998
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    #@6
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 2
    .param p1, "callingUser"    # I

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@8
    .line 295
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    #@a
    .line 296
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@c
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@10
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    #@17
    .line 297
    .restart local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 299
    :cond_0
    return-object v0
.end method

.method private final isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1649
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1650
    return v1

    #@6
    .line 1654
    :cond_0
    if-nez p2, :cond_1

    #@8
    .line 1655
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@b
    move-result p3

    #@c
    .line 1657
    :cond_1
    if-eqz p3, :cond_2

    #@e
    .line 1658
    return v1

    #@f
    .line 1661
    :cond_2
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 1494
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1495
    new-instance v0, Landroid/os/RemoteException;

    #@9
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1500
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f
    .line 1501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@15
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@17
    .line 1503
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@19
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1c
    move-result v9

    #@1d
    .line 1504
    .local v9, "newService":Z
    const-string/jumbo v0, "create"

    #@20
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@23
    .line 1505
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@25
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@28
    .line 1506
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@2d
    .line 1508
    const/4 v6, 0x0

    #@2e
    .line 1517
    .local v6, "created":Z
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@33
    move-result-object v1

    #@34
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@35
    .line 1518
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    :try_start_2
    monitor-exit v1

    #@3b
    .line 1520
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3d
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3f
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@41
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    #@44
    .line 1521
    const/16 v0, 0xa

    #@46
    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@49
    .line 1522
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4b
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4d
    .line 1523
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4f
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@51
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@53
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@56
    move-result-object v3

    #@57
    .line 1524
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@59
    .line 1522
    invoke-interface {v0, p1, v1, v3, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@5c
    .line 1525
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5f
    .line 1526
    const/4 v6, 0x1

    #@60
    .line 1532
    if-nez v6, :cond_2

    #@62
    .line 1534
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@67
    move-result v8

    #@68
    .line 1535
    .local v8, "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@6b
    .line 1538
    if-eqz v9, :cond_1

    #@6d
    .line 1539
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@6f
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@72
    .line 1540
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@74
    .line 1544
    :cond_1
    if-nez v8, :cond_2

    #@76
    .line 1545
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@79
    .line 1550
    .end local v8    # "inDestroying":Z
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    #@7c
    .line 1552
    invoke-direct {p0, p2, v4, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@7f
    .line 1557
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@81
    if-eqz v0, :cond_3

    #@83
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@85
    if-eqz v0, :cond_3

    #@87
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v0

    #@8d
    if-nez v0, :cond_3

    #@8f
    .line 1558
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@91
    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@93
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@96
    move-result v3

    #@97
    move-object v1, p1

    #@98
    move-object v5, v4

    #@99
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@9c
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f
    .line 1562
    :cond_3
    invoke-direct {p0, p1, p3, v11}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@a2
    .line 1564
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@a4
    if-eqz v0, :cond_4

    #@a6
    .line 1566
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@a8
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@ab
    move-result-object v0

    #@ac
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@ae
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b1
    .line 1567
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@b3
    .line 1570
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@b5
    if-eqz v0, :cond_5

    #@b7
    .line 1572
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@b9
    .line 1573
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@bb
    if-eqz v0, :cond_5

    #@bd
    .line 1576
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@c0
    .line 1493
    :cond_5
    return-void

    #@c1
    .line 1517
    :catchall_0
    move-exception v0

    #@c2
    :try_start_3
    monitor-exit v1

    #@c3
    throw v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c4
    .line 1527
    :catch_0
    move-exception v7

    #@c5
    .line 1528
    .local v7, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v0, "ActivityManager"

    #@c8
    new-instance v1, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v3, "Application dead when creating service "

    #@d0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 1529
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e1
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    #@e4
    .line 1530
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e5
    .line 1531
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :catchall_1
    move-exception v0

    #@e6
    .line 1532
    if-nez v6, :cond_7

    #@e8
    .line 1534
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@ea
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@ed
    move-result v8

    #@ee
    .line 1535
    .restart local v8    # "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@f1
    .line 1538
    if-eqz v9, :cond_6

    #@f3
    .line 1539
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@f5
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f8
    .line 1540
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@fa
    .line 1544
    :cond_6
    if-nez v8, :cond_7

    #@fc
    .line 1545
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@ff
    .line 1531
    .end local v8    # "inDestroying":Z
    :cond_7
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1167
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@8
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@a
    if-nez v3, :cond_1

    #@c
    .line 1169
    :cond_0
    return v6

    #@d
    .line 1171
    :cond_1
    iget-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@f
    if-eqz v3, :cond_2

    #@11
    if-eqz p4, :cond_4

    #@13
    :cond_2
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_4

    #@1b
    .line 1173
    :try_start_0
    const-string/jumbo v3, "bind"

    #@1e
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@21
    .line 1174
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@23
    const/16 v4, 0xa

    #@25
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@28
    .line 1175
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2a
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2c
    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@2e
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@31
    move-result-object v4

    #@32
    .line 1176
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@36
    .line 1175
    invoke-interface {v3, p1, v4, p4, v5}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    #@39
    .line 1177
    if-nez p4, :cond_3

    #@3b
    .line 1178
    const/4 v3, 0x1

    #@3c
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@3e
    .line 1180
    :cond_3
    const/4 v3, 0x1

    #@3f
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@41
    .line 1181
    const/4 v3, 0x0

    #@42
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 1196
    :cond_4
    return v7

    #@45
    .line 1188
    :catch_0
    move-exception v0

    #@46
    .line 1191
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    .line 1192
    .local v2, "inDestroying":Z
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@4f
    .line 1193
    return v6

    #@50
    .line 1182
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "inDestroying":Z
    :catch_1
    move-exception v1

    #@51
    .line 1185
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    .line 1186
    .restart local v2    # "inDestroying":Z
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@5a
    .line 1187
    throw v1
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1484
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 1485
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 1486
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1483
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    return-void

    #@1a
    .line 1484
    .restart local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 28
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "createIfNeeded"    # Z
    .param p8, "callingFromFg"    # Z

    #@0
    .prologue
    .line 1028
    const/16 v23, 0x0

    #@2
    .line 1032
    .local v23, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@6
    .line 1033
    const-string/jumbo v9, "service"

    #@9
    const/4 v7, 0x0

    #@a
    const/4 v8, 0x1

    #@b
    const/4 v10, 0x0

    #@c
    move/from16 v4, p4

    #@e
    move/from16 v5, p5

    #@10
    move/from16 v6, p6

    #@12
    .line 1032
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p6

    #@16
    .line 1035
    move-object/from16 v0, p0

    #@18
    move/from16 v1, p6

    #@1a
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@1d
    move-result-object v26

    #@1e
    .line 1036
    .local v26, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@21
    move-result-object v18

    #@22
    .line 1037
    .local v18, "comp":Landroid/content/ComponentName;
    if-eqz v18, :cond_e

    #@24
    .line 1038
    move-object/from16 v0, v26

    #@26
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@28
    move-object/from16 v0, v18

    #@2a
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@30
    .line 1040
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_0

    #@32
    .line 1041
    new-instance v7, Landroid/content/Intent$FilterComparison;

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@39
    .line 1042
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v26

    #@3b
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@3d
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@43
    .line 1044
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    if-nez v3, :cond_6

    #@45
    .line 1047
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@48
    move-result-object v4

    #@49
    .line 1049
    const/16 v9, 0x400

    #@4b
    .line 1047
    move-object/from16 v0, p1

    #@4d
    move-object/from16 v1, p2

    #@4f
    move/from16 v2, p6

    #@51
    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@54
    move-result-object v24

    #@55
    .line 1051
    .local v24, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v24, :cond_1

    #@57
    move-object/from16 v0, v24

    #@59
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5b
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v25, v8

    #@5d
    .line 1052
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v25, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v25, :cond_2

    #@5f
    .line 1053
    const-string/jumbo v4, "ActivityManager"

    #@62
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v11, "Unable to start service "

    #@6a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    move-object/from16 v0, p1

    #@70
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    const-string/jumbo v11, " U="

    #@77
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    move/from16 v0, p6

    #@7d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    .line 1054
    const-string/jumbo v11, ": not found"

    #@84
    .line 1053
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 1055
    const/4 v4, 0x0

    #@90
    return-object v4

    #@91
    .line 1051
    .end local v25    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v8, 0x0

    #@92
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v25, v8

    #@94
    .restart local v25    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_1

    #@95
    .line 1057
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    #@97
    .line 1058
    move-object/from16 v0, v25

    #@99
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9b
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9d
    move-object/from16 v0, v25

    #@9f
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@a1
    .line 1057
    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    .line 1059
    .local v6, "name":Landroid/content/ComponentName;
    if-lez p6, :cond_d

    #@a6
    .line 1060
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@aa
    move-object/from16 v0, v25

    #@ac
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@ae
    move-object/from16 v0, v25

    #@b0
    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b2
    .line 1061
    move-object/from16 v0, v25

    #@b4
    iget-object v12, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@b6
    move-object/from16 v0, v25

    #@b8
    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@ba
    .line 1060
    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    #@bd
    move-result v4

    #@be
    if-eqz v4, :cond_3

    #@c0
    .line 1062
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@c4
    move-object/from16 v0, v25

    #@c6
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c8
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@ca
    move/from16 v0, p5

    #@cc
    invoke-virtual {v4, v0, v9}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    #@cf
    move-result v4

    #@d0
    .line 1060
    if-eqz v4, :cond_3

    #@d2
    .line 1063
    const/16 p6, 0x0

    #@d4
    .line 1064
    const/4 v4, 0x0

    #@d5
    move-object/from16 v0, p0

    #@d7
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@da
    move-result-object v26

    #@db
    .line 1066
    :cond_3
    new-instance v8, Landroid/content/pm/ServiceInfo;

    #@dd
    move-object/from16 v0, v25

    #@df
    invoke-direct {v8, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@e2
    .line 1067
    .end local v25    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    #@e4
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e6
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e8
    move/from16 v0, p6

    #@ea
    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    #@ed
    move-result-object v4

    #@ee
    iput-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f0
    .line 1069
    :goto_2
    move-object/from16 v0, v26

    #@f2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@f4
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    move-result-object v23

    #@f8
    check-cast v23, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@fa
    .line 1070
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .local v23, "r":Lcom/android/server/am/ServiceRecord;
    if-nez v23, :cond_5

    #@fc
    if-eqz p7, :cond_c

    #@fe
    .line 1072
    :try_start_1
    new-instance v7, Landroid/content/Intent$FilterComparison;

    #@100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@103
    move-result-object v4

    #@104
    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@107
    .line 1073
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@109
    const/4 v4, 0x0

    #@10a
    move-object/from16 v0, p0

    #@10c
    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceRestarter;)V

    #@10f
    .line 1074
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    #@110
    .line 1075
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    #@112
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@114
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@116
    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    #@119
    move-result-object v27

    #@11a
    .line 1076
    .local v27, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v27
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@11b
    .line 1078
    :try_start_2
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11d
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@11f
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@121
    .line 1079
    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@123
    .line 1077
    move-object/from16 v0, v27

    #@125
    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@128
    move-result-object v5

    #@129
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :try_start_3
    monitor-exit v27

    #@12a
    .line 1081
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@130
    move/from16 v9, p8

    #@132
    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@135
    .line 1082
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_4
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    #@138
    .line 1083
    move-object/from16 v0, v26

    #@13a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@13c
    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13f
    .line 1084
    move-object/from16 v0, v26

    #@141
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@143
    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 1087
    move-object/from16 v0, p0

    #@148
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@14a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@14d
    move-result v4

    #@14e
    add-int/lit8 v20, v4, -0x1

    #@150
    .local v20, "i":I
    :goto_3
    if-ltz v20, :cond_6

    #@152
    .line 1088
    move-object/from16 v0, p0

    #@154
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@156
    move/from16 v0, v20

    #@158
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15b
    move-result-object v22

    #@15c
    check-cast v22, Lcom/android/server/am/ServiceRecord;

    #@15e
    .line 1089
    .local v22, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v22

    #@160
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@162
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@164
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@166
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@168
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16a
    if-ne v4, v9, :cond_4

    #@16c
    .line 1090
    move-object/from16 v0, v22

    #@16e
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@170
    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@173
    move-result v4

    #@174
    .line 1089
    if-eqz v4, :cond_4

    #@176
    .line 1091
    move-object/from16 v0, p0

    #@178
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@17a
    move/from16 v0, v20

    #@17c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@17f
    .line 1087
    :cond_4
    add-int/lit8 v20, v20, -0x1

    #@181
    goto :goto_3

    #@182
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v20    # "i":I
    .end local v22    # "pr":Lcom/android/server/am/ServiceRecord;
    .end local v27    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    move-object/from16 v3, v23

    #@184
    .line 1099
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v24    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_6
    :goto_4
    if-eqz v3, :cond_b

    #@186
    .line 1100
    move-object/from16 v0, p0

    #@188
    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@18a
    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@18c
    .line 1101
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@18e
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@190
    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@192
    move/from16 v16, v0

    #@194
    move/from16 v13, p4

    #@196
    move/from16 v14, p5

    #@198
    .line 1100
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@19b
    move-result v4

    #@19c
    if-eqz v4, :cond_8

    #@19e
    .line 1103
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@1a0
    if-nez v4, :cond_7

    #@1a2
    .line 1104
    const-string/jumbo v4, "ActivityManager"

    #@1a5
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1aa
    const-string/jumbo v11, "Permission Denial: Accessing service "

    #@1ad
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v9

    #@1b1
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1b3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v9

    #@1b7
    .line 1105
    const-string/jumbo v11, " from pid="

    #@1ba
    .line 1104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v9

    #@1be
    move/from16 v0, p4

    #@1c0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v9

    #@1c4
    .line 1106
    const-string/jumbo v11, ", uid="

    #@1c7
    .line 1104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v9

    #@1cb
    move/from16 v0, p5

    #@1cd
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v9

    #@1d1
    .line 1107
    const-string/jumbo v11, " that is not exported from uid "

    #@1d4
    .line 1104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v9

    #@1d8
    .line 1107
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1da
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1dc
    .line 1104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v9

    #@1e0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v9

    #@1e4
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e7
    .line 1108
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@1e9
    new-instance v9, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v11, "not exported from uid "

    #@1f1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v9

    #@1f5
    .line 1109
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1f7
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1f9
    .line 1108
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v9

    #@1fd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v9

    #@201
    const/4 v11, 0x0

    #@202
    move-object/from16 v0, p0

    #@204
    invoke-direct {v4, v0, v11, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@207
    return-object v4

    #@208
    .line 1076
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v24    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    #@209
    :try_start_5
    monitor-exit v27

    #@20a
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@20b
    .line 1095
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v27    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v19

    #@20c
    .local v19, "ex":Landroid/os/RemoteException;
    move-object/from16 v3, v23

    #@20e
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    #@210
    .line 1111
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v19    # "ex":Landroid/os/RemoteException;
    .end local v24    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    const-string/jumbo v4, "ActivityManager"

    #@213
    new-instance v9, Ljava/lang/StringBuilder;

    #@215
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@218
    const-string/jumbo v11, "Permission Denial: Accessing service "

    #@21b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v9

    #@21f
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@221
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v9

    #@225
    .line 1112
    const-string/jumbo v11, " from pid="

    #@228
    .line 1111
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v9

    #@22c
    move/from16 v0, p4

    #@22e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@231
    move-result-object v9

    #@232
    .line 1113
    const-string/jumbo v11, ", uid="

    #@235
    .line 1111
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v9

    #@239
    move/from16 v0, p5

    #@23b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v9

    #@23f
    .line 1114
    const-string/jumbo v11, " requires "

    #@242
    .line 1111
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v9

    #@246
    .line 1114
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@248
    .line 1111
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v9

    #@24c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24f
    move-result-object v9

    #@250
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@253
    .line 1115
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@255
    iget-object v9, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@257
    const/4 v11, 0x0

    #@258
    move-object/from16 v0, p0

    #@25a
    invoke-direct {v4, v0, v11, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@25d
    return-object v4

    #@25e
    .line 1116
    :cond_8
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@260
    if-eqz v4, :cond_9

    #@262
    if-eqz p3, :cond_9

    #@264
    .line 1117
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@266
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@269
    move-result v21

    #@26a
    .line 1118
    .local v21, "opCode":I
    const/4 v4, -0x1

    #@26b
    move/from16 v0, v21

    #@26d
    if-eq v0, v4, :cond_9

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@273
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@275
    move/from16 v0, v21

    #@277
    move/from16 v1, p5

    #@279
    move-object/from16 v2, p3

    #@27b
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@27e
    move-result v4

    #@27f
    if-eqz v4, :cond_9

    #@281
    .line 1120
    const-string/jumbo v4, "ActivityManager"

    #@284
    new-instance v9, Ljava/lang/StringBuilder;

    #@286
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@289
    const-string/jumbo v11, "Appop Denial: Accessing service "

    #@28c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v9

    #@290
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@292
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v9

    #@296
    .line 1121
    const-string/jumbo v11, " from pid="

    #@299
    .line 1120
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v9

    #@29d
    move/from16 v0, p4

    #@29f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v9

    #@2a3
    .line 1122
    const-string/jumbo v11, ", uid="

    #@2a6
    .line 1120
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v9

    #@2aa
    move/from16 v0, p5

    #@2ac
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v9

    #@2b0
    .line 1123
    const-string/jumbo v11, " requires appop "

    #@2b3
    .line 1120
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v9

    #@2b7
    .line 1123
    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@2ba
    move-result-object v11

    #@2bb
    .line 1120
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v9

    #@2bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v9

    #@2c3
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c6
    .line 1124
    const/4 v4, 0x0

    #@2c7
    return-object v4

    #@2c8
    .line 1128
    .end local v21    # "opCode":I
    :cond_9
    move-object/from16 v0, p0

    #@2ca
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2cc
    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@2ce
    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2d0
    .line 1129
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2d2
    move-object/from16 v17, v0

    #@2d4
    move-object/from16 v13, p1

    #@2d6
    move/from16 v14, p5

    #@2d8
    move/from16 v15, p4

    #@2da
    move-object/from16 v16, p2

    #@2dc
    .line 1128
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    #@2df
    move-result v4

    #@2e0
    if-nez v4, :cond_a

    #@2e2
    .line 1130
    const/4 v4, 0x0

    #@2e3
    return-object v4

    #@2e4
    .line 1132
    :cond_a
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@2e6
    const/4 v9, 0x0

    #@2e7
    move-object/from16 v0, p0

    #@2e9
    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@2ec
    return-object v4

    #@2ed
    .line 1134
    :cond_b
    const/4 v4, 0x0

    #@2ee
    return-object v4

    #@2ef
    .line 1095
    :catch_1
    move-exception v19

    #@2f0
    .restart local v19    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_4

    #@2f2
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v24    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_c
    move-object/from16 v3, v23

    #@2f4
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    #@2f6
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v25    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_d
    move-object/from16 v8, v25

    #@2f8
    .end local v25    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto/16 :goto_2

    #@2fa
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v24    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v23, "r":Lcom/android/server/am/ServiceRecord;
    :cond_e
    move-object/from16 v3, v23

    #@2fc
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    #@0
    .prologue
    .line 1201
    const/4 v5, 0x0

    #@1
    .line 1203
    .local v5, "canceled":Z
    move-object/from16 v0, p1

    #@3
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@5
    move/from16 v20, v0

    #@7
    move-object/from16 v0, p0

    #@9
    move/from16 v1, v20

    #@b
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@e
    move-result-object v19

    #@f
    .line 1204
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, v19

    #@11
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@13
    move-object/from16 v20, v0

    #@15
    move-object/from16 v0, p1

    #@17
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@19
    move-object/from16 v21, v0

    #@1b
    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v20

    #@1f
    move-object/from16 v0, v20

    #@21
    move-object/from16 v1, p1

    #@23
    if-eq v0, v1, :cond_0

    #@25
    .line 1205
    move-object/from16 v0, v19

    #@27
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@29
    move-object/from16 v20, v0

    #@2b
    move-object/from16 v0, p1

    #@2d
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2f
    move-object/from16 v21, v0

    #@31
    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    #@37
    .line 1206
    .local v6, "cur":Lcom/android/server/am/ServiceRecord;
    const-string/jumbo v20, "ActivityManager"

    #@3a
    new-instance v21, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v22, "Attempting to schedule restart of "

    #@42
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v21

    #@46
    move-object/from16 v0, v21

    #@48
    move-object/from16 v1, p1

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v21

    #@4e
    .line 1207
    const-string/jumbo v22, " when found in map: "

    #@51
    .line 1206
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v21

    #@55
    move-object/from16 v0, v21

    #@57
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v21

    #@5b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v21

    #@5f
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1208
    const/16 v20, 0x0

    #@64
    return v20

    #@65
    .line 1211
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@68
    move-result-wide v12

    #@69
    .line 1213
    .local v12, "now":J
    move-object/from16 v0, p1

    #@6b
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6d
    move-object/from16 v20, v0

    #@6f
    move-object/from16 v0, v20

    #@71
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@73
    move-object/from16 v20, v0

    #@75
    move-object/from16 v0, v20

    #@77
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@79
    move/from16 v20, v0

    #@7b
    and-int/lit8 v20, v20, 0x8

    #@7d
    if-nez v20, :cond_f

    #@7f
    .line 1215
    const-wide/16 v10, 0x3e8

    #@81
    .line 1216
    .local v10, "minDuration":J
    const-wide/32 v16, 0xea60

    #@84
    .line 1220
    .local v16, "resetTime":J
    move-object/from16 v0, p1

    #@86
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@88
    move-object/from16 v20, v0

    #@8a
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@8d
    move-result v4

    #@8e
    .line 1221
    .local v4, "N":I
    if-lez v4, :cond_7

    #@90
    .line 1222
    add-int/lit8 v7, v4, -0x1

    #@92
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_6

    #@94
    .line 1223
    move-object/from16 v0, p1

    #@96
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@98
    move-object/from16 v20, v0

    #@9a
    move-object/from16 v0, v20

    #@9c
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9f
    move-result-object v18

    #@a0
    check-cast v18, Lcom/android/server/am/ServiceRecord$StartItem;

    #@a2
    .line 1224
    .local v18, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    #@a5
    .line 1225
    move-object/from16 v0, v18

    #@a7
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@a9
    move-object/from16 v20, v0

    #@ab
    if-nez v20, :cond_2

    #@ad
    .line 1222
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@af
    goto :goto_0

    #@b0
    .line 1227
    :cond_2
    if-eqz p2, :cond_3

    #@b2
    move-object/from16 v0, v18

    #@b4
    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@b6
    move/from16 v20, v0

    #@b8
    const/16 v21, 0x3

    #@ba
    move/from16 v0, v20

    #@bc
    move/from16 v1, v21

    #@be
    if-ge v0, v1, :cond_5

    #@c0
    .line 1228
    move-object/from16 v0, v18

    #@c2
    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@c4
    move/from16 v20, v0

    #@c6
    const/16 v21, 0x6

    #@c8
    move/from16 v0, v20

    #@ca
    move/from16 v1, v21

    #@cc
    if-ge v0, v1, :cond_5

    #@ce
    .line 1229
    :cond_3
    move-object/from16 v0, p1

    #@d0
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@d2
    move-object/from16 v20, v0

    #@d4
    const/16 v21, 0x0

    #@d6
    move-object/from16 v0, v20

    #@d8
    move/from16 v1, v21

    #@da
    move-object/from16 v2, v18

    #@dc
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@df
    .line 1230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e2
    move-result-wide v20

    #@e3
    move-object/from16 v0, v18

    #@e5
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@e7
    move-wide/from16 v22, v0

    #@e9
    sub-long v8, v20, v22

    #@eb
    .line 1231
    .local v8, "dur":J
    const-wide/16 v20, 0x2

    #@ed
    mul-long v8, v8, v20

    #@ef
    .line 1232
    cmp-long v20, v10, v8

    #@f1
    if-gez v20, :cond_4

    #@f3
    move-wide v10, v8

    #@f4
    .line 1233
    :cond_4
    cmp-long v20, v16, v8

    #@f6
    if-gez v20, :cond_1

    #@f8
    move-wide/from16 v16, v8

    #@fa
    goto :goto_1

    #@fb
    .line 1235
    .end local v8    # "dur":J
    :cond_5
    const-string/jumbo v20, "ActivityManager"

    #@fe
    new-instance v21, Ljava/lang/StringBuilder;

    #@100
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v22, "Canceling start item "

    #@106
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v21

    #@10a
    move-object/from16 v0, v18

    #@10c
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@10e
    move-object/from16 v22, v0

    #@110
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v21

    #@114
    const-string/jumbo v22, " in service "

    #@117
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v21

    #@11b
    .line 1236
    move-object/from16 v0, p1

    #@11d
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@11f
    move-object/from16 v22, v0

    #@121
    .line 1235
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v21

    #@125
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v21

    #@129
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12c
    .line 1237
    const/4 v5, 0x1

    #@12d
    goto :goto_1

    #@12e
    .line 1240
    .end local v18    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_6
    move-object/from16 v0, p1

    #@130
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@132
    move-object/from16 v20, v0

    #@134
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    #@137
    .line 1243
    .end local v7    # "i":I
    :cond_7
    move-object/from16 v0, p1

    #@139
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@13b
    move/from16 v20, v0

    #@13d
    add-int/lit8 v20, v20, 0x1

    #@13f
    move/from16 v0, v20

    #@141
    move-object/from16 v1, p1

    #@143
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@145
    .line 1244
    move-object/from16 v0, p1

    #@147
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@149
    move-wide/from16 v20, v0

    #@14b
    const-wide/16 v22, 0x0

    #@14d
    cmp-long v20, v20, v22

    #@14f
    if-nez v20, :cond_c

    #@151
    .line 1245
    move-object/from16 v0, p1

    #@153
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@155
    move/from16 v20, v0

    #@157
    add-int/lit8 v20, v20, 0x1

    #@159
    move/from16 v0, v20

    #@15b
    move-object/from16 v1, p1

    #@15d
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@15f
    .line 1246
    move-object/from16 v0, p1

    #@161
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@163
    .line 1264
    :cond_8
    :goto_2
    move-object/from16 v0, p1

    #@165
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@167
    move-wide/from16 v20, v0

    #@169
    add-long v20, v20, v12

    #@16b
    move-wide/from16 v0, v20

    #@16d
    move-object/from16 v2, p1

    #@16f
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@171
    .line 1270
    :cond_9
    const/4 v15, 0x0

    #@172
    .line 1271
    .local v15, "repeat":Z
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@176
    move-object/from16 v20, v0

    #@178
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@17b
    move-result v20

    #@17c
    add-int/lit8 v7, v20, -0x1

    #@17e
    .restart local v7    # "i":I
    :goto_3
    if-ltz v7, :cond_a

    #@180
    .line 1272
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@184
    move-object/from16 v20, v0

    #@186
    move-object/from16 v0, v20

    #@188
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18b
    move-result-object v14

    #@18c
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@18e
    .line 1273
    .local v14, "r2":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    #@190
    if-eq v14, v0, :cond_e

    #@192
    move-object/from16 v0, p1

    #@194
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@196
    move-wide/from16 v20, v0

    #@198
    .line 1274
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@19a
    move-wide/from16 v22, v0

    #@19c
    const-wide/16 v24, 0x2710

    #@19e
    sub-long v22, v22, v24

    #@1a0
    .line 1273
    cmp-long v20, v20, v22

    #@1a2
    if-ltz v20, :cond_e

    #@1a4
    .line 1275
    move-object/from16 v0, p1

    #@1a6
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1a8
    move-wide/from16 v20, v0

    #@1aa
    .line 1276
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1ac
    move-wide/from16 v22, v0

    #@1ae
    const-wide/16 v24, 0x2710

    #@1b0
    add-long v22, v22, v24

    #@1b2
    .line 1275
    cmp-long v20, v20, v22

    #@1b4
    if-gez v20, :cond_e

    #@1b6
    .line 1277
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1b8
    move-wide/from16 v20, v0

    #@1ba
    const-wide/16 v22, 0x2710

    #@1bc
    add-long v20, v20, v22

    #@1be
    move-wide/from16 v0, v20

    #@1c0
    move-object/from16 v2, p1

    #@1c2
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1c4
    .line 1278
    move-object/from16 v0, p1

    #@1c6
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1c8
    move-wide/from16 v20, v0

    #@1ca
    sub-long v20, v20, v12

    #@1cc
    move-wide/from16 v0, v20

    #@1ce
    move-object/from16 v2, p1

    #@1d0
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@1d2
    .line 1279
    const/4 v15, 0x1

    #@1d3
    .line 1283
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    :cond_a
    if-nez v15, :cond_9

    #@1d5
    .line 1294
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :goto_4
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1d9
    move-object/from16 v20, v0

    #@1db
    move-object/from16 v0, v20

    #@1dd
    move-object/from16 v1, p1

    #@1df
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1e2
    move-result v20

    #@1e3
    if-nez v20, :cond_b

    #@1e5
    .line 1295
    const/16 v20, 0x0

    #@1e7
    move/from16 v0, v20

    #@1e9
    move-object/from16 v1, p1

    #@1eb
    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@1ed
    .line 1296
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1f1
    move-object/from16 v20, v0

    #@1f3
    move-object/from16 v0, v20

    #@1f5
    move-object/from16 v1, p1

    #@1f7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1fa
    .line 1297
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1fe
    move-object/from16 v20, v0

    #@200
    move-object/from16 v0, v20

    #@202
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@204
    move-object/from16 v20, v0

    #@206
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@209
    move-result v20

    #@20a
    move-object/from16 v0, p1

    #@20c
    move/from16 v1, v20

    #@20e
    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    #@211
    .line 1300
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@214
    .line 1302
    move-object/from16 v0, p0

    #@216
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@218
    move-object/from16 v20, v0

    #@21a
    move-object/from16 v0, v20

    #@21c
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21e
    move-object/from16 v20, v0

    #@220
    move-object/from16 v0, p1

    #@222
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@224
    move-object/from16 v21, v0

    #@226
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@229
    .line 1303
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@22d
    move-object/from16 v20, v0

    #@22f
    move-object/from16 v0, v20

    #@231
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@233
    move-object/from16 v20, v0

    #@235
    move-object/from16 v0, p1

    #@237
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@239
    move-object/from16 v21, v0

    #@23b
    move-object/from16 v0, p1

    #@23d
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@23f
    move-wide/from16 v22, v0

    #@241
    invoke-virtual/range {v20 .. v23}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@244
    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@247
    move-result-wide v20

    #@248
    move-object/from16 v0, p1

    #@24a
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@24c
    move-wide/from16 v22, v0

    #@24e
    add-long v20, v20, v22

    #@250
    move-wide/from16 v0, v20

    #@252
    move-object/from16 v2, p1

    #@254
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@256
    .line 1305
    const-string/jumbo v20, "ActivityManager"

    #@259
    new-instance v21, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v22, "Scheduling restart of crashed service "

    #@261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v21

    #@265
    .line 1306
    move-object/from16 v0, p1

    #@267
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@269
    move-object/from16 v22, v0

    #@26b
    .line 1305
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v21

    #@26f
    .line 1306
    const-string/jumbo v22, " in "

    #@272
    .line 1305
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v21

    #@276
    .line 1306
    move-object/from16 v0, p1

    #@278
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@27a
    move-wide/from16 v22, v0

    #@27c
    .line 1305
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v21

    #@280
    .line 1306
    const-string/jumbo v22, "ms"

    #@283
    .line 1305
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v21

    #@287
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28a
    move-result-object v21

    #@28b
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28e
    .line 1307
    const/16 v20, 0x3

    #@290
    move/from16 v0, v20

    #@292
    new-array v0, v0, [Ljava/lang/Object;

    #@294
    move-object/from16 v20, v0

    #@296
    .line 1308
    move-object/from16 v0, p1

    #@298
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@29a
    move/from16 v21, v0

    #@29c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29f
    move-result-object v21

    #@2a0
    const/16 v22, 0x0

    #@2a2
    aput-object v21, v20, v22

    #@2a4
    move-object/from16 v0, p1

    #@2a6
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@2a8
    move-object/from16 v21, v0

    #@2aa
    const/16 v22, 0x1

    #@2ac
    aput-object v21, v20, v22

    #@2ae
    move-object/from16 v0, p1

    #@2b0
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2b2
    move-wide/from16 v22, v0

    #@2b4
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b7
    move-result-object v21

    #@2b8
    const/16 v22, 0x2

    #@2ba
    aput-object v21, v20, v22

    #@2bc
    .line 1307
    const/16 v21, 0x7553

    #@2be
    move/from16 v0, v21

    #@2c0
    move-object/from16 v1, v20

    #@2c2
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2c5
    .line 1310
    return v5

    #@2c6
    .line 1253
    .restart local v4    # "N":I
    .restart local v10    # "minDuration":J
    .restart local v16    # "resetTime":J
    :cond_c
    move-object/from16 v0, p1

    #@2c8
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@2ca
    move-wide/from16 v20, v0

    #@2cc
    add-long v20, v20, v16

    #@2ce
    cmp-long v20, v12, v20

    #@2d0
    if-lez v20, :cond_d

    #@2d2
    .line 1254
    const/16 v20, 0x1

    #@2d4
    move/from16 v0, v20

    #@2d6
    move-object/from16 v1, p1

    #@2d8
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@2da
    .line 1255
    move-object/from16 v0, p1

    #@2dc
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2de
    goto/16 :goto_2

    #@2e0
    .line 1257
    :cond_d
    move-object/from16 v0, p1

    #@2e2
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2e4
    move-wide/from16 v20, v0

    #@2e6
    const-wide/16 v22, 0x4

    #@2e8
    mul-long v20, v20, v22

    #@2ea
    move-wide/from16 v0, v20

    #@2ec
    move-object/from16 v2, p1

    #@2ee
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2f0
    .line 1258
    move-object/from16 v0, p1

    #@2f2
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2f4
    move-wide/from16 v20, v0

    #@2f6
    cmp-long v20, v20, v10

    #@2f8
    if-gez v20, :cond_8

    #@2fa
    .line 1259
    move-object/from16 v0, p1

    #@2fc
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2fe
    goto/16 :goto_2

    #@300
    .line 1271
    .restart local v7    # "i":I
    .restart local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "repeat":Z
    :cond_e
    add-int/lit8 v7, v7, -0x1

    #@302
    goto/16 :goto_3

    #@304
    .line 1288
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :cond_f
    move-object/from16 v0, p1

    #@306
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@308
    move/from16 v20, v0

    #@30a
    add-int/lit8 v20, v20, 0x1

    #@30c
    move/from16 v0, v20

    #@30e
    move-object/from16 v1, p1

    #@310
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@312
    .line 1289
    const/16 v20, 0x0

    #@314
    move/from16 v0, v20

    #@316
    move-object/from16 v1, p1

    #@318
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@31a
    .line 1290
    const-wide/16 v20, 0x0

    #@31c
    move-wide/from16 v0, v20

    #@31e
    move-object/from16 v2, p1

    #@320
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@322
    .line 1291
    move-object/from16 v0, p1

    #@324
    iput-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@326
    goto/16 :goto_4
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 1583
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v6

    #@6
    .line 1584
    .local v6, "N":I
    if-nez v6, :cond_0

    #@8
    .line 1585
    return-void

    #@9
    .line 1588
    .end local p3    # "oomAdjusted":Z
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_6

    #@11
    .line 1589
    const/4 v7, 0x0

    #@12
    .line 1592
    .local v7, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@18
    move-result-object v12

    #@19
    check-cast v12, Lcom/android/server/am/ServiceRecord$StartItem;

    #@1b
    .line 1595
    .local v12, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@1d
    if-nez v0, :cond_1

    #@1f
    const/4 v0, 0x1

    #@20
    if-gt v6, v0, :cond_0

    #@22
    .line 1602
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@28
    .line 1603
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 1604
    iget v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    iput v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@33
    .line 1605
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 1606
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@39
    iget-object v1, v12, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@3b
    .line 1607
    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@3e
    move-result-object v2

    #@3f
    .line 1606
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    #@42
    .line 1609
    :cond_2
    const-string/jumbo v0, "start"

    #@45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@48
    .line 1610
    if-nez p3, :cond_3

    #@4a
    .line 1611
    const/16 p3, 0x1

    #@4c
    .line 1612
    .local p3, "oomAdjusted":Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4e
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@50
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@53
    .line 1614
    .end local p3    # "oomAdjusted":Z
    :cond_3
    const/4 v4, 0x0

    #@54
    .line 1615
    .local v4, "flags":I
    iget v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@56
    const/4 v1, 0x1

    #@57
    if-le v0, v1, :cond_4

    #@59
    .line 1616
    const/4 v4, 0x2

    #@5a
    .line 1618
    :cond_4
    iget v0, v12, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@5c
    if-lez v0, :cond_5

    #@5e
    .line 1619
    or-int/lit8 v4, v4, 0x1

    #@60
    .line 1621
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@62
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@64
    iget-boolean v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    #@66
    iget v3, v12, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@68
    iget-object v5, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@6a
    move-object v1, p1

    #@6b
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 1635
    .end local v4    # "flags":I
    .end local v7    # "caughtException":Ljava/lang/Exception;
    .end local v12    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :goto_0
    if-eqz v7, :cond_0

    #@70
    .line 1637
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@75
    move-result v11

    #@76
    .line 1638
    .local v11, "inDestroying":Z
    invoke-direct {p0, p1, v11, v11}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@79
    .line 1639
    instance-of v0, v7, Landroid/os/TransactionTooLargeException;

    #@7b
    if-eqz v0, :cond_6

    #@7d
    .line 1640
    check-cast v7, Landroid/os/TransactionTooLargeException;

    #@7f
    throw v7

    #@80
    .line 1630
    .end local v11    # "inDestroying":Z
    .restart local v7    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v10

    #@81
    .line 1631
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    #@84
    const-string/jumbo v1, "Unexpected exception"

    #@87
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    .line 1632
    move-object v7, v10

    #@8b
    .local v7, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@8c
    .line 1626
    .end local v10    # "e":Ljava/lang/Exception;
    .local v7, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@8d
    .line 1629
    .local v8, "e":Landroid/os/RemoteException;
    move-object v7, v8

    #@8e
    .local v7, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@8f
    .line 1622
    .end local v8    # "e":Landroid/os/RemoteException;
    .local v7, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    #@90
    .line 1625
    .local v9, "e":Landroid/os/TransactionTooLargeException;
    move-object v7, v9

    #@91
    .local v7, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@92
    .line 1582
    .end local v7    # "caughtException":Ljava/lang/Exception;
    .end local v9    # "e":Landroid/os/TransactionTooLargeException;
    :cond_6
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1980
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@8
    .line 1981
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@a
    if-gtz v1, :cond_5

    #@c
    .line 1982
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 1985
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@12
    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@14
    .line 1986
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@16
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1b
    .line 1987
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1d
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@1f
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_6

    #@25
    .line 1990
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@27
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@29
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2b
    const/16 v3, 0xc

    #@2d
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    #@30
    .line 2000
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@32
    .line 2003
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@37
    .line 2004
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@3c
    .line 2006
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3e
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@40
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@43
    .line 2008
    :cond_2
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@45
    .line 2009
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 2010
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@4b
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4d
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@4f
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@52
    move-result v2

    #@53
    .line 2011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@56
    move-result-wide v4

    #@57
    .line 2010
    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@5a
    .line 2012
    if-eqz p3, :cond_3

    #@5c
    .line 2013
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@5e
    invoke-virtual {v1, p1, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@61
    .line 2014
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@63
    .line 2017
    :cond_3
    if-eqz p3, :cond_5

    #@65
    .line 2018
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@67
    if-eqz v1, :cond_4

    #@69
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6b
    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@6d
    if-eqz v1, :cond_8

    #@6f
    .line 2021
    :cond_4
    :goto_1
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@71
    .line 1974
    :cond_5
    return-void

    #@72
    .line 1991
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@74
    if-eqz v1, :cond_0

    #@76
    .line 1993
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@78
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@7a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@7d
    move-result v1

    #@7e
    add-int/lit8 v0, v1, -0x1

    #@80
    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_0

    #@82
    .line 1994
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@84
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@86
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@8c
    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@8e
    if-eqz v1, :cond_7

    #@90
    .line 1995
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@92
    const/4 v2, 0x1

    #@93
    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@95
    goto :goto_0

    #@96
    .line 1993
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@98
    goto :goto_2

    #@99
    .line 2019
    .end local v0    # "i":I
    :cond_8
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9b
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@9d
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@a0
    goto :goto_1
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1963
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1964
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@d
    move-result v0

    #@e
    .line 1965
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 1966
    .local v2, "now":J
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@14
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@17
    .line 1967
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@19
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@1c
    .line 1968
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1e
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@21
    .line 1970
    .end local v0    # "memFactor":I
    .end local v2    # "now":J
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@24
    .line 1962
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 460
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 465
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@8
    .line 466
    return-void

    #@9
    .line 468
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 469
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 471
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@18
    .line 472
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 473
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@1e
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@20
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@22
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@25
    move-result v1

    #@26
    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    .line 473
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@2d
    .line 476
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@2f
    .line 477
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@32
    .line 459
    return-void

    #@33
    .line 468
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    #@0
    .prologue
    .line 1326
    if-nez p3, :cond_0

    #@2
    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1327
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1332
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 1333
    .local v0, "removed":Z
    if-nez v0, :cond_1

    #@14
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    if-eq p2, v1, :cond_2

    #@1a
    .line 1334
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    #@1d
    .line 1336
    :cond_2
    if-eqz v0, :cond_3

    #@1f
    .line 1337
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@22
    .line 1339
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@26
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@28
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2b
    .line 1340
    const/4 v1, 0x1

    #@2c
    return v1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 10
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 661
    if-eqz p2, :cond_0

    #@4
    iget-object v7, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@6
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 662
    iget-object v7, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@c
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@e
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v7

    #@14
    if-gtz v7, :cond_0

    #@16
    .line 665
    return v8

    #@17
    .line 669
    :cond_0
    const/4 v0, 0x0

    #@18
    .line 670
    .local v0, "anyClientActivities":Z
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@1a
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@1d
    move-result v7

    #@1e
    add-int/lit8 v5, v7, -0x1

    #@20
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 687
    :cond_1
    iget-boolean v7, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@26
    if-eq v0, v7, :cond_9

    #@28
    .line 688
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@2a
    .line 689
    if-eqz p3, :cond_2

    #@2c
    .line 690
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2e
    invoke-virtual {v7, p1, v0, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@31
    .line 692
    :cond_2
    const/4 v7, 0x1

    #@32
    return v7

    #@33
    .line 671
    :cond_3
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@35
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    #@3b
    .line 672
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3d
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@40
    move-result v7

    #@41
    add-int/lit8 v2, v7, -0x1

    #@43
    .local v2, "conni":I
    :goto_1
    if-ltz v2, :cond_4

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 670
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 673
    :cond_5
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Ljava/util/ArrayList;

    #@52
    .line 674
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v7

    #@56
    add-int/lit8 v4, v7, -0x1

    #@58
    .local v4, "cri":I
    :goto_2
    if-ltz v4, :cond_8

    #@5a
    .line 675
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    #@60
    .line 676
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@62
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@64
    if-eqz v7, :cond_6

    #@66
    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@68
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@6a
    if-ne v7, p1, :cond_7

    #@6c
    .line 674
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@6e
    goto :goto_2

    #@6f
    .line 680
    :cond_7
    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@71
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@73
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v7

    #@79
    if-lez v7, :cond_6

    #@7b
    .line 681
    const/4 v0, 0x1

    #@7c
    .line 672
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_8
    add-int/lit8 v2, v2, -0x1

    #@7e
    goto :goto_1

    #@7f
    .line 694
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "conni":I
    .end local v4    # "cri":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_9
    return v8
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    #@0
    .prologue
    .line 631
    const/4 v0, 0x0

    #@1
    .line 632
    .local v0, "anyForeground":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 633
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    #@13
    .line 634
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 635
    const/4 v0, 0x1

    #@18
    .line 639
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1a
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    #@1d
    .line 630
    return-void

    #@1e
    .line 632
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2028
    const/4 v1, 0x0

    #@1
    .line 2030
    .local v1, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    if-lez v5, :cond_2

    #@9
    .line 2031
    const/4 v4, 0x0

    #@a
    .line 2033
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    #@b
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v5

    #@11
    if-ge v3, v5, :cond_2

    #@13
    .line 2034
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    move-object v0, v5

    #@1a
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    #@1c
    move-object v4, v0

    #@1d
    .line 2035
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@1f
    if-eq p1, v5, :cond_0

    #@21
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@23
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@27
    if-ne v5, v6, :cond_1

    #@29
    .line 2036
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@2b
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_1

    #@31
    .line 2040
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@36
    .line 2041
    add-int/lit8 v3, v3, -0x1

    #@38
    .line 2042
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3a
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3c
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3e
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@40
    .line 2043
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@42
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@44
    .line 2042
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@47
    .line 2044
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@49
    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 2045
    const/4 v1, 0x1

    #@4d
    .line 2033
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 2047
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v2

    #@51
    .line 2048
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityManager"

    #@54
    new-instance v6, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v7, "Exception in new application when starting service "

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    .line 2049
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@62
    .line 2048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 2050
    throw v2

    #@6e
    .line 2057
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@73
    move-result v5

    #@74
    if-lez v5, :cond_5

    #@76
    .line 2058
    const/4 v4, 0x0

    #@77
    .line 2059
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    #@78
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v5

    #@7e
    if-ge v3, v5, :cond_5

    #@80
    .line 2060
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v4

    #@86
    check-cast v4, Lcom/android/server/am/ServiceRecord;

    #@88
    .line 2061
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@8a
    if-eq p1, v5, :cond_3

    #@8c
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@8e
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@90
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@92
    if-ne v5, v6, :cond_4

    #@94
    .line 2062
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@96
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_4

    #@9c
    .line 2065
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9e
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@a0
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@a2
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@a5
    .line 2066
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a7
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@a9
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@ab
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@ae
    .line 2059
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@b0
    goto :goto_1

    #@b1
    .line 2069
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 24
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@9
    move-result-object v13

    #@a
    .line 704
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v13, :cond_0

    #@c
    .line 705
    new-instance v4, Ljava/lang/SecurityException;

    #@e
    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "Unable to find app for caller "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 707
    const-string/jumbo v6, " (pid="

    #@23
    .line 706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 707
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v6

    #@2b
    .line 706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 708
    const-string/jumbo v6, ") when binding service "

    #@32
    .line 706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    .line 705
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4

    #@44
    .line 711
    :cond_0
    const/4 v11, 0x0

    #@45
    .line 712
    .local v11, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_1

    #@47
    .line 713
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4a
    move-result-object v11

    #@4b
    .line 714
    .local v11, "activity":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_1

    #@4d
    .line 715
    const-string/jumbo v4, "ActivityManager"

    #@50
    new-instance v5, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v6, "Binding with unknown activity: "

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    move-object/from16 v0, p2

    #@5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 716
    const/4 v4, 0x0

    #@6a
    return v4

    #@6b
    .line 720
    .end local v11    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v15, 0x0

    #@6c
    .line 721
    .local v15, "clientLabel":I
    const/4 v14, 0x0

    #@6d
    .line 723
    .local v14, "clientIntent":Landroid/app/PendingIntent;
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@6f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@71
    const/16 v5, 0x3e8

    #@73
    if-ne v4, v5, :cond_2

    #@75
    .line 728
    :try_start_0
    const-string/jumbo v4, "android.intent.extra.client_intent"

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7d
    move-result-object v4

    #@7e
    move-object v0, v4

    #@7f
    check-cast v0, Landroid/app/PendingIntent;

    #@81
    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@82
    .line 731
    .end local v14    # "clientIntent":Landroid/app/PendingIntent;
    :goto_0
    if-eqz v14, :cond_2

    #@84
    .line 732
    const-string/jumbo v4, "android.intent.extra.client_label"

    #@87
    const/4 v5, 0x0

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8d
    move-result v15

    #@8e
    .line 733
    if-eqz v15, :cond_2

    #@90
    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@93
    move-result-object p3

    #@94
    .line 742
    :cond_2
    const/high16 v4, 0x8000000

    #@96
    and-int v4, v4, p6

    #@98
    if-eqz v4, :cond_3

    #@9a
    .line 743
    move-object/from16 v0, p0

    #@9c
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9e
    const-string/jumbo v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    #@a1
    .line 744
    const-string/jumbo v6, "BIND_TREAT_LIKE_ACTIVITY"

    #@a4
    .line 743
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    .line 747
    :cond_3
    iget v4, v13, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@a9
    if-eqz v4, :cond_4

    #@ab
    const/4 v10, 0x1

    #@ac
    .line 751
    .local v10, "callerFg":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@af
    move-result v6

    #@b0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b3
    move-result v7

    #@b4
    const/4 v9, 0x1

    #@b5
    move-object/from16 v2, p0

    #@b7
    move-object/from16 v3, p3

    #@b9
    move-object/from16 v4, p4

    #@bb
    move-object/from16 v5, p7

    #@bd
    move/from16 v8, p8

    #@bf
    .line 750
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@c2
    move-result-object v19

    #@c3
    .line 752
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v19, :cond_5

    #@c5
    .line 753
    const/4 v4, 0x0

    #@c6
    return v4

    #@c7
    .line 747
    .end local v10    # "callerFg":Z
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_4
    const/4 v10, 0x0

    #@c8
    .restart local v10    # "callerFg":Z
    goto :goto_1

    #@c9
    .line 755
    .restart local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_5
    move-object/from16 v0, v19

    #@cb
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@cd
    if-nez v4, :cond_6

    #@cf
    .line 756
    const/4 v4, -0x1

    #@d0
    return v4

    #@d1
    .line 758
    :cond_6
    move-object/from16 v0, v19

    #@d3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@d5
    move-object/from16 v22, v0

    #@d7
    .line 760
    .local v22, "s":Lcom/android/server/am/ServiceRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@da
    move-result-wide v20

    #@db
    .line 763
    .local v20, "origId":J
    :try_start_1
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@dd
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@df
    const/4 v5, 0x0

    #@e0
    move-object/from16 v0, p0

    #@e2
    move-object/from16 v1, v22

    #@e4
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@e7
    move-result v4

    #@e8
    if-eqz v4, :cond_7

    #@ea
    .line 768
    :cond_7
    and-int/lit8 v4, p6, 0x1

    #@ec
    if-eqz v4, :cond_8

    #@ee
    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f1
    move-result-wide v4

    #@f2
    move-object/from16 v0, v22

    #@f4
    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@f6
    .line 770
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@f9
    move-result v4

    #@fa
    if-nez v4, :cond_8

    #@fc
    .line 772
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    #@ff
    move-result-object v23

    #@100
    .line 773
    .local v23, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v23, :cond_8

    #@102
    .line 774
    move-object/from16 v0, p0

    #@104
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@106
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@108
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@10b
    move-result v4

    #@10c
    .line 775
    move-object/from16 v0, v22

    #@10e
    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@110
    .line 774
    const/4 v5, 0x1

    #@111
    move-object/from16 v0, v23

    #@113
    invoke-virtual {v0, v5, v4, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@116
    .line 780
    .end local v23    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_8
    move-object/from16 v0, p0

    #@118
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@11a
    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    #@11c
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@11e
    .line 781
    move-object/from16 v0, v22

    #@120
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@122
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@124
    move-object/from16 v0, v22

    #@126
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@128
    move-object/from16 v0, v22

    #@12a
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@12c
    .line 780
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    #@12f
    .line 783
    move-object/from16 v0, v22

    #@131
    move-object/from16 v1, p3

    #@133
    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    #@136
    move-result-object v3

    #@137
    .line 784
    .local v3, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v2, Lcom/android/server/am/ConnectionRecord;

    #@139
    move-object v4, v11

    #@13a
    move-object/from16 v5, p5

    #@13c
    move/from16 v6, p6

    #@13e
    move v7, v15

    #@13f
    move-object v8, v14

    #@140
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    #@143
    .line 787
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@146
    move-result-object v12

    #@147
    .line 788
    .local v12, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v22

    #@149
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@14b
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    move-result-object v16

    #@14f
    check-cast v16, Ljava/util/ArrayList;

    #@151
    .line 789
    .local v16, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v16, :cond_9

    #@153
    .line 790
    new-instance v16, Ljava/util/ArrayList;

    #@155
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@158
    .line 791
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, v22

    #@15a
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@15c
    move-object/from16 v0, v16

    #@15e
    invoke-virtual {v4, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    .line 793
    :cond_9
    move-object/from16 v0, v16

    #@163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@166
    .line 794
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@168
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16b
    .line 795
    if-eqz v11, :cond_b

    #@16d
    .line 796
    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@16f
    if-nez v4, :cond_a

    #@171
    .line 797
    new-instance v4, Ljava/util/HashSet;

    #@173
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@176
    iput-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@178
    .line 799
    :cond_a
    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@17a
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17d
    .line 801
    :cond_b
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@17f
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@181
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@184
    .line 802
    iget v4, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@186
    and-int/lit8 v4, v4, 0x8

    #@188
    if-eqz v4, :cond_c

    #@18a
    .line 803
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@18c
    const/4 v5, 0x1

    #@18d
    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@18f
    .line 805
    :cond_c
    move-object/from16 v0, v22

    #@191
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@193
    if-eqz v4, :cond_d

    #@195
    .line 806
    move-object/from16 v0, v22

    #@197
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@199
    const/4 v5, 0x1

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@19f
    .line 808
    :cond_d
    move-object/from16 v0, p0

    #@1a1
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@1a3
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a6
    move-result-object v16

    #@1a7
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v16, Ljava/util/ArrayList;

    #@1a9
    .line 809
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v16, :cond_e

    #@1ab
    .line 810
    new-instance v16, Ljava/util/ArrayList;

    #@1ad
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@1b0
    .line 811
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    #@1b2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@1b4
    move-object/from16 v0, v16

    #@1b6
    invoke-virtual {v4, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b9
    .line 813
    :cond_e
    move-object/from16 v0, v16

    #@1bb
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1be
    .line 815
    and-int/lit8 v4, p6, 0x1

    #@1c0
    if-eqz v4, :cond_f

    #@1c2
    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c5
    move-result-wide v4

    #@1c6
    move-object/from16 v0, v22

    #@1c8
    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@1ca
    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    #@1cd
    move-result v4

    #@1ce
    const/4 v5, 0x0

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move-object/from16 v1, v22

    #@1d3
    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d6
    move-result-object v4

    #@1d7
    if-eqz v4, :cond_f

    #@1d9
    .line 818
    const/4 v4, 0x0

    #@1da
    .line 861
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1dd
    .line 818
    return v4

    #@1de
    .line 822
    :cond_f
    :try_start_2
    move-object/from16 v0, v22

    #@1e0
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1e2
    if-eqz v4, :cond_11

    #@1e4
    .line 823
    const/high16 v4, 0x8000000

    #@1e6
    and-int v4, v4, p6

    #@1e8
    if-eqz v4, :cond_10

    #@1ea
    .line 824
    move-object/from16 v0, v22

    #@1ec
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1ee
    const/4 v5, 0x1

    #@1ef
    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@1f1
    .line 827
    :cond_10
    move-object/from16 v0, p0

    #@1f3
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1f5
    move-object/from16 v0, v22

    #@1f7
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1f9
    move-object/from16 v0, v22

    #@1fb
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1fd
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@1ff
    if-nez v4, :cond_13

    #@201
    .line 828
    move-object/from16 v0, v22

    #@203
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@205
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@207
    :goto_2
    iget-object v7, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@209
    .line 827
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@20c
    .line 829
    move-object/from16 v0, p0

    #@20e
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@210
    move-object/from16 v0, v22

    #@212
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@214
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@217
    .line 837
    :cond_11
    move-object/from16 v0, v22

    #@219
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@21b
    if-eqz v4, :cond_14

    #@21d
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@21f
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@221
    if-eqz v4, :cond_14

    #@223
    .line 841
    :try_start_3
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@225
    move-object/from16 v0, v22

    #@227
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@229
    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@22b
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@22d
    invoke-interface {v4, v5, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@230
    .line 851
    :goto_3
    :try_start_4
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@232
    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@234
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@237
    move-result v4

    #@238
    const/4 v5, 0x1

    #@239
    if-ne v4, v5, :cond_12

    #@23b
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@23d
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@23f
    if-eqz v4, :cond_12

    #@241
    .line 852
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@243
    const/4 v5, 0x1

    #@244
    move-object/from16 v0, p0

    #@246
    move-object/from16 v1, v22

    #@248
    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    #@24b
    .line 858
    :cond_12
    :goto_4
    move-object/from16 v0, v22

    #@24d
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@24f
    move-object/from16 v0, p0

    #@251
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@254
    move-result-object v4

    #@255
    move-object/from16 v0, v22

    #@257
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@25a
    .line 861
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25d
    .line 864
    const/4 v4, 0x1

    #@25e
    return v4

    #@25f
    .line 827
    :cond_13
    const/4 v4, 0x1

    #@260
    goto :goto_2

    #@261
    .line 842
    :catch_0
    move-exception v17

    #@262
    .line 843
    .local v17, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "ActivityManager"

    #@265
    new-instance v5, Ljava/lang/StringBuilder;

    #@267
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    const-string/jumbo v6, "Failure sending service "

    #@26d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v5

    #@271
    move-object/from16 v0, v22

    #@273
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v5

    #@279
    .line 844
    const-string/jumbo v6, " to connection "

    #@27c
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v5

    #@280
    .line 844
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@282
    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@285
    move-result-object v6

    #@286
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v5

    #@28a
    .line 845
    const-string/jumbo v6, " (in "

    #@28d
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v5

    #@291
    .line 845
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@293
    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@295
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@297
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v5

    #@29b
    .line 845
    const-string/jumbo v6, ")"

    #@29e
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v5

    #@2a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v5

    #@2a6
    move-object/from16 v0, v17

    #@2a8
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2ab
    goto :goto_3

    #@2ac
    .line 860
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12    # "binder":Landroid/os/IBinder;
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2ad
    .line 861
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b0
    .line 860
    throw v4

    #@2b1
    .line 854
    .restart local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v12    # "binder":Landroid/os/IBinder;
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_14
    :try_start_6
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@2b3
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@2b5
    if-nez v4, :cond_12

    #@2b7
    .line 855
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@2b9
    const/4 v5, 0x0

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    move-object/from16 v1, v22

    #@2be
    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@2c1
    goto :goto_4

    #@2c2
    .line 729
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v10    # "callerFg":Z
    .end local v12    # "binder":Landroid/os/IBinder;
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v20    # "origId":J
    .end local v22    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v14    # "clientIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v18

    #@2c3
    .local v18, "e":Ljava/lang/RuntimeException;
    goto/16 :goto_0
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZ)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2122
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 2124
    .local v6, "didSomething":Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2125
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 2128
    :cond_0
    const/4 v0, -0x1

    #@b
    if-ne p3, v0, :cond_2

    #@d
    .line 2129
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v7, v0, -0x1

    #@15
    .end local v6    # "didSomething":Z
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_3

    #@17
    .line 2131
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@1f
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@21
    move-object v0, p0

    #@22
    move-object v1, p1

    #@23
    move-object v2, p2

    #@24
    move v3, p4

    #@25
    move v4, p5

    #@26
    .line 2130
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    #@29
    move-result v0

    #@2a
    or-int/2addr v6, v0

    #@2b
    .line 2132
    .local v6, "didSomething":Z
    if-nez p5, :cond_1

    #@2d
    if-eqz v6, :cond_1

    #@2f
    .line 2133
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 2129
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@33
    goto :goto_0

    #@34
    .line 2137
    .end local v7    # "i":I
    .local v6, "didSomething":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v8

    #@3a
    check-cast v8, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@3c
    .line 2138
    .local v8, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v8, :cond_3

    #@3e
    .line 2139
    iget-object v5, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@40
    .local v5, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, p0

    #@41
    move-object v1, p1

    #@42
    move-object v2, p2

    #@43
    move v3, p4

    #@44
    move v4, p5

    #@45
    .line 2140
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    #@48
    move-result v6

    #@49
    .line 2145
    .end local v5    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v6    # "didSomething":Z
    .end local v8    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@4b
    if-eqz v0, :cond_5

    #@4d
    .line 2146
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v0

    #@53
    add-int/lit8 v7, v0, -0x1

    #@55
    .restart local v7    # "i":I
    :goto_1
    if-ltz v7, :cond_4

    #@57
    .line 2147
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    #@5f
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@62
    .line 2146
    add-int/lit8 v7, v7, -0x1

    #@64
    goto :goto_1

    #@65
    .line 2149
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@6a
    .line 2151
    .end local v7    # "i":I
    :cond_5
    return v6
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 11
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2155
    new-instance v9, Ljava/util/ArrayList;

    #@4
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 2156
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@c
    move-result-object v6

    #@d
    .line 2157
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v0

    #@11
    add-int/lit8 v8, v0, -0x1

    #@13
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@15
    .line 2158
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@1b
    .line 2159
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@1d
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 2160
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 2157
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2165
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v0

    #@31
    add-int/lit8 v8, v0, -0x1

    #@33
    :goto_1
    if-ltz v8, :cond_4

    #@35
    .line 2166
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@3b
    .line 2167
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@3d
    if-eqz v0, :cond_2

    #@3f
    .line 2168
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@43
    and-int/lit8 v0, v0, 0x1

    #@45
    if-eqz v0, :cond_3

    #@47
    .line 2169
    const-string/jumbo v0, "ActivityManager"

    #@4a
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v4, "Stopping service "

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    const-string/jumbo v4, ": remove task"

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 2170
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@6d
    .line 2165
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    #@6f
    goto :goto_1

    #@70
    .line 2172
    :cond_3
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@72
    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@74
    .line 2173
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@77
    move-result v3

    #@78
    move-object v4, p3

    #@79
    .line 2172
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@7c
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    .line 2174
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@81
    if-eqz v0, :cond_2

    #@83
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@85
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@87
    if-eqz v0, :cond_2

    #@89
    .line 2178
    const/4 v0, 0x1

    #@8a
    const/4 v3, 0x0

    #@8b
    :try_start_0
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    goto :goto_2

    #@8f
    .line 2179
    :catch_0
    move-exception v7

    #@90
    .local v7, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_2

    #@91
    .line 2154
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "e":Landroid/os/TransactionTooLargeException;
    :cond_4
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    #@0
    .prologue
    .line 2799
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2801
    .local v15, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9
    monitor-enter v2

    #@a
    .line 2802
    :try_start_0
    move-object/from16 v0, p0

    #@c
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    #@11
    move-result-object v18

    #@12
    .line 2803
    .local v18, "users":[I
    const-string/jumbo v1, "all"

    #@15
    move-object/from16 v0, p3

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 2804
    const/4 v1, 0x0

    #@1e
    move-object/from16 v0, v18

    #@20
    array-length v3, v0

    #@21
    :goto_0
    if-ge v1, v3, :cond_a

    #@23
    aget v17, v18, v1

    #@25
    .line 2805
    .local v17, "user":I
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@29
    move/from16 v0, v17

    #@2b
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v16

    #@2f
    check-cast v16, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@31
    .line 2806
    .local v16, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v16, :cond_1

    #@33
    .line 2804
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 2809
    :cond_1
    move-object/from16 v0, v16

    #@38
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@3a
    .line 2810
    .local v8, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    #@3b
    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@3e
    move-result v4

    #@3f
    if-ge v11, v4, :cond_0

    #@41
    .line 2811
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v14

    #@45
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@47
    .line 2812
    .local v14, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    .line 2810
    add-int/lit8 v11, v11, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 2816
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    :cond_2
    if-eqz p3, :cond_5

    #@4f
    .line 2817
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    move-result-object v9

    #@53
    .line 2818
    :goto_2
    const/4 v13, 0x0

    #@54
    .line 2819
    .local v13, "objectId":I
    if-nez v9, :cond_3

    #@56
    .line 2822
    const/16 v1, 0x10

    #@58
    :try_start_1
    move-object/from16 v0, p3

    #@5a
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    move-result v13

    #@5e
    .line 2823
    const/16 p3, 0x0

    #@60
    .line 2824
    .local p3, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@61
    .line 2829
    .end local p3    # "name":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v1, 0x0

    #@62
    :try_start_2
    move-object/from16 v0, v18

    #@64
    array-length v3, v0

    #@65
    :goto_4
    if-ge v1, v3, :cond_a

    #@67
    aget v17, v18, v1

    #@69
    .line 2830
    .restart local v17    # "user":I
    move-object/from16 v0, p0

    #@6b
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@6d
    move/from16 v0, v17

    #@6f
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v16

    #@73
    check-cast v16, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@75
    .line 2831
    .restart local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v16, :cond_6

    #@77
    .line 2829
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_4

    #@7a
    .line 2817
    .end local v13    # "objectId":I
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    .local p3, "name":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    #@7b
    .local v9, "componentName":Landroid/content/ComponentName;
    goto :goto_2

    #@7c
    .line 2825
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "objectId":I
    :catch_0
    move-exception v10

    #@7d
    .local v10, "e":Ljava/lang/RuntimeException;
    goto :goto_3

    #@7e
    .line 2834
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local p3    # "name":Ljava/lang/String;
    .restart local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v17    # "user":I
    :cond_6
    move-object/from16 v0, v16

    #@80
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@82
    .line 2835
    .restart local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    #@83
    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@86
    move-result v4

    #@87
    if-ge v11, v4, :cond_4

    #@89
    .line 2836
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v14

    #@8d
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@8f
    .line 2837
    .restart local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    if-eqz v9, :cond_8

    #@91
    .line 2838
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@93
    invoke-virtual {v4, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v4

    #@97
    if-eqz v4, :cond_7

    #@99
    .line 2839
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 2835
    :cond_7
    :goto_6
    add-int/lit8 v11, v11, 0x1

    #@9e
    goto :goto_5

    #@9f
    .line 2841
    :cond_8
    if-eqz p3, :cond_9

    #@a1
    .line 2842
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@a3
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    move-object/from16 v0, p3

    #@a9
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_7

    #@af
    .line 2843
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b2
    goto :goto_6

    #@b3
    .line 2801
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v13    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    .end local v18    # "users":[I
    :catchall_0
    move-exception v1

    #@b4
    monitor-exit v2

    #@b5
    throw v1

    #@b6
    .line 2845
    .restart local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .restart local v11    # "i":I
    .restart local v13    # "objectId":I
    .restart local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v17    # "user":I
    .restart local v18    # "users":[I
    :cond_9
    :try_start_3
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@b9
    move-result v4

    #@ba
    if-ne v4, v13, :cond_7

    #@bc
    .line 2846
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bf
    goto :goto_6

    #@c0
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v13    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    :cond_a
    monitor-exit v2

    #@c1
    .line 2853
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@c4
    move-result v1

    #@c5
    if-gtz v1, :cond_b

    #@c7
    .line 2854
    const/4 v1, 0x0

    #@c8
    return v1

    #@c9
    .line 2857
    :cond_b
    const/4 v12, 0x0

    #@ca
    .line 2858
    .local v12, "needSep":Z
    const/4 v11, 0x0

    #@cb
    .restart local v11    # "i":I
    :goto_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@ce
    move-result v1

    #@cf
    if-ge v11, v1, :cond_d

    #@d1
    .line 2859
    if-eqz v12, :cond_c

    #@d3
    .line 2860
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@d6
    .line 2862
    :cond_c
    const/4 v12, 0x1

    #@d7
    .line 2863
    const-string/jumbo v2, ""

    #@da
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@dd
    move-result-object v5

    #@de
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@e0
    move-object/from16 v1, p0

    #@e2
    move-object/from16 v3, p1

    #@e4
    move-object/from16 v4, p2

    #@e6
    move-object/from16 v6, p4

    #@e8
    move/from16 v7, p6

    #@ea
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    #@ed
    .line 2858
    add-int/lit8 v11, v11, 0x1

    #@ef
    goto :goto_7

    #@f0
    .line 2865
    :cond_d
    const/4 v1, 0x1

    #@f1
    return v1
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2552
    const/16 v17, 0x0

    #@2
    .line 2553
    .local v17, "needSep":Z
    const/16 v21, 0x0

    #@4
    .line 2555
    .local v21, "printedAnything":Z
    new-instance v16, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@6
    invoke-direct/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    #@9
    .line 2556
    .local v16, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    move-object/from16 v0, v16

    #@b
    move-object/from16 v1, p3

    #@d
    move/from16 v2, p4

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    #@12
    .line 2558
    const-string/jumbo v30, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    #@15
    move-object/from16 v0, p2

    #@17
    move-object/from16 v1, v30

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 2560
    :try_start_0
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@20
    move-object/from16 v30, v0

    #@22
    if-eqz v30, :cond_0

    #@24
    .line 2561
    const-string/jumbo v30, "  Last ANR service:"

    #@27
    move-object/from16 v0, p2

    #@29
    move-object/from16 v1, v30

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 2562
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@32
    move-object/from16 v30, v0

    #@34
    move-object/from16 v0, p2

    #@36
    move-object/from16 v1, v30

    #@38
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 2563
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@3e
    .line 2565
    :cond_0
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@42
    move-object/from16 v30, v0

    #@44
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    #@47
    move-result-object v29

    #@48
    .line 2566
    .local v29, "users":[I
    const/16 v30, 0x0

    #@4a
    move-object/from16 v0, v29

    #@4c
    array-length v0, v0

    #@4d
    move/from16 v32, v0

    #@4f
    move/from16 v31, v30

    #@51
    .end local v17    # "needSep":Z
    :goto_0
    move/from16 v0, v31

    #@53
    move/from16 v1, v32

    #@55
    if-ge v0, v1, :cond_b

    #@57
    aget v28, v29, v31

    #@59
    .line 2567
    .local v28, "user":I
    move-object/from16 v0, p0

    #@5b
    move/from16 v1, v28

    #@5d
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@60
    move-result-object v26

    #@61
    .line 2568
    .local v26, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v20, 0x0

    #@63
    .line 2569
    .local v20, "printed":Z
    move-object/from16 v0, v26

    #@65
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@67
    move-object/from16 v30, v0

    #@69
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@6c
    move-result v30

    #@6d
    if-lez v30, :cond_e

    #@6f
    .line 2570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@72
    move-result-wide v18

    #@73
    .line 2571
    .local v18, "nowReal":J
    const/16 v17, 0x0

    #@75
    .line 2572
    .restart local v17    # "needSep":Z
    const/16 v25, 0x0

    #@77
    .local v25, "si":I
    :goto_1
    move-object/from16 v0, v26

    #@79
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@7b
    move-object/from16 v30, v0

    #@7d
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@80
    move-result v30

    #@81
    move/from16 v0, v25

    #@83
    move/from16 v1, v30

    #@85
    if-ge v0, v1, :cond_d

    #@87
    .line 2573
    move-object/from16 v0, v26

    #@89
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@8b
    move-object/from16 v30, v0

    #@8d
    move-object/from16 v0, v30

    #@8f
    move/from16 v1, v25

    #@91
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@94
    move-result-object v23

    #@95
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@97
    .line 2574
    .local v23, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@99
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@9b
    move-object/from16 v30, v0

    #@9d
    move-object/from16 v0, v16

    #@9f
    move-object/from16 v1, v23

    #@a1
    move-object/from16 v2, v30

    #@a3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@a6
    move-result v30

    #@a7
    if-nez v30, :cond_2

    #@a9
    .line 2572
    :cond_1
    :goto_2
    add-int/lit8 v25, v25, 0x1

    #@ab
    goto :goto_1

    #@ac
    .line 2577
    :cond_2
    if-eqz p7, :cond_3

    #@ae
    move-object/from16 v0, v23

    #@b0
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@b2
    move-object/from16 v30, v0

    #@b4
    move-object/from16 v0, v30

    #@b6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b8
    move-object/from16 v30, v0

    #@ba
    move-object/from16 v0, p7

    #@bc
    move-object/from16 v1, v30

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v30

    #@c2
    if-eqz v30, :cond_1

    #@c4
    .line 2580
    :cond_3
    if-nez v20, :cond_5

    #@c6
    .line 2581
    if-eqz v21, :cond_4

    #@c8
    .line 2582
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@cb
    .line 2584
    :cond_4
    new-instance v30, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v33, "  User "

    #@d3
    move-object/from16 v0, v30

    #@d5
    move-object/from16 v1, v33

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v30

    #@db
    move-object/from16 v0, v30

    #@dd
    move/from16 v1, v28

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v30

    #@e3
    const-string/jumbo v33, " active services:"

    #@e6
    move-object/from16 v0, v30

    #@e8
    move-object/from16 v1, v33

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v30

    #@ee
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v30

    #@f2
    move-object/from16 v0, p2

    #@f4
    move-object/from16 v1, v30

    #@f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 2585
    const/16 v20, 0x1

    #@fb
    .line 2587
    :cond_5
    const/16 v21, 0x1

    #@fd
    .line 2588
    if-eqz v17, :cond_6

    #@ff
    .line 2589
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@102
    .line 2591
    :cond_6
    const-string/jumbo v30, "  * "

    #@105
    move-object/from16 v0, p2

    #@107
    move-object/from16 v1, v30

    #@109
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    .line 2592
    move-object/from16 v0, p2

    #@10e
    move-object/from16 v1, v23

    #@110
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@113
    .line 2593
    if-eqz p5, :cond_8

    #@115
    .line 2594
    const-string/jumbo v30, "    "

    #@118
    move-object/from16 v0, v23

    #@11a
    move-object/from16 v1, p2

    #@11c
    move-object/from16 v2, v30

    #@11e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@121
    .line 2595
    const/16 v17, 0x1

    #@123
    .line 2621
    :cond_7
    if-eqz p6, :cond_1

    #@125
    move-object/from16 v0, v23

    #@127
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@129
    move-object/from16 v30, v0

    #@12b
    if-eqz v30, :cond_1

    #@12d
    move-object/from16 v0, v23

    #@12f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@131
    move-object/from16 v30, v0

    #@133
    move-object/from16 v0, v30

    #@135
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@137
    move-object/from16 v30, v0

    #@139
    if-eqz v30, :cond_1

    #@13b
    .line 2622
    const-string/jumbo v30, "    Client:"

    #@13e
    move-object/from16 v0, p2

    #@140
    move-object/from16 v1, v30

    #@142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@145
    .line 2623
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@148
    .line 2625
    :try_start_1
    new-instance v27, Lcom/android/internal/os/TransferPipe;

    #@14a
    invoke-direct/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@14d
    .line 2627
    .local v27, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    move-object/from16 v0, v23

    #@14f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@151
    move-object/from16 v30, v0

    #@153
    move-object/from16 v0, v30

    #@155
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@157
    move-object/from16 v30, v0

    #@159
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@15c
    move-result-object v33

    #@15d
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@160
    move-result-object v33

    #@161
    move-object/from16 v0, v30

    #@163
    move-object/from16 v1, v33

    #@165
    move-object/from16 v2, v23

    #@167
    move-object/from16 v3, p3

    #@169
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@16c
    .line 2629
    const-string/jumbo v30, "      "

    #@16f
    move-object/from16 v0, v27

    #@171
    move-object/from16 v1, v30

    #@173
    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@176
    .line 2632
    const-wide/16 v34, 0x7d0

    #@178
    move-object/from16 v0, v27

    #@17a
    move-object/from16 v1, p1

    #@17c
    move-wide/from16 v2, v34

    #@17e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@181
    .line 2634
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@184
    .line 2641
    .end local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_3
    const/16 v17, 0x1

    #@186
    goto/16 :goto_2

    #@188
    .line 2597
    :cond_8
    :try_start_4
    const-string/jumbo v30, "    app="

    #@18b
    move-object/from16 v0, p2

    #@18d
    move-object/from16 v1, v30

    #@18f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@192
    .line 2598
    move-object/from16 v0, v23

    #@194
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@196
    move-object/from16 v30, v0

    #@198
    move-object/from16 v0, p2

    #@19a
    move-object/from16 v1, v30

    #@19c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19f
    .line 2599
    const-string/jumbo v30, "    created="

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    move-object/from16 v1, v30

    #@1a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a9
    .line 2600
    move-object/from16 v0, v23

    #@1ab
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@1ad
    move-wide/from16 v34, v0

    #@1af
    move-wide/from16 v0, v34

    #@1b1
    move-wide/from16 v2, v18

    #@1b3
    move-object/from16 v4, p2

    #@1b5
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1b8
    .line 2601
    const-string/jumbo v30, " started="

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    move-object/from16 v1, v30

    #@1bf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    .line 2602
    move-object/from16 v0, v23

    #@1c4
    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@1c6
    move/from16 v30, v0

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    move/from16 v1, v30

    #@1cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1cf
    .line 2603
    const-string/jumbo v30, " connections="

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    move-object/from16 v1, v30

    #@1d6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d9
    .line 2604
    move-object/from16 v0, v23

    #@1db
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1dd
    move-object/from16 v30, v0

    #@1df
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@1e2
    move-result v30

    #@1e3
    move-object/from16 v0, p2

    #@1e5
    move/from16 v1, v30

    #@1e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@1ea
    .line 2605
    move-object/from16 v0, v23

    #@1ec
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1ee
    move-object/from16 v30, v0

    #@1f0
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@1f3
    move-result v30

    #@1f4
    if-lez v30, :cond_7

    #@1f6
    .line 2606
    const-string/jumbo v30, "    Connections:"

    #@1f9
    move-object/from16 v0, p2

    #@1fb
    move-object/from16 v1, v30

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@200
    .line 2607
    const/4 v9, 0x0

    #@201
    .local v9, "conni":I
    :goto_4
    move-object/from16 v0, v23

    #@203
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@205
    move-object/from16 v30, v0

    #@207
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@20a
    move-result v30

    #@20b
    move/from16 v0, v30

    #@20d
    if-ge v9, v0, :cond_7

    #@20f
    .line 2608
    move-object/from16 v0, v23

    #@211
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@213
    move-object/from16 v30, v0

    #@215
    move-object/from16 v0, v30

    #@217
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@21a
    move-result-object v7

    #@21b
    check-cast v7, Ljava/util/ArrayList;

    #@21d
    .line 2609
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v14, 0x0

    #@21e
    .local v14, "i":I
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@221
    move-result v30

    #@222
    move/from16 v0, v30

    #@224
    if-ge v14, v0, :cond_a

    #@226
    .line 2610
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@229
    move-result-object v8

    #@22a
    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    #@22c
    .line 2611
    .local v8, "conn":Lcom/android/server/am/ConnectionRecord;
    const-string/jumbo v30, "      "

    #@22f
    move-object/from16 v0, p2

    #@231
    move-object/from16 v1, v30

    #@233
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@236
    .line 2612
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@238
    move-object/from16 v30, v0

    #@23a
    move-object/from16 v0, v30

    #@23c
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@23e
    move-object/from16 v30, v0

    #@240
    move-object/from16 v0, v30

    #@242
    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@244
    move-object/from16 v30, v0

    #@246
    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@249
    move-result-object v30

    #@24a
    .line 2613
    const/16 v33, 0x0

    #@24c
    const/16 v34, 0x0

    #@24e
    const/16 v35, 0x0

    #@250
    const/16 v36, 0x0

    #@252
    .line 2612
    move-object/from16 v0, v30

    #@254
    move/from16 v1, v33

    #@256
    move/from16 v2, v34

    #@258
    move/from16 v3, v35

    #@25a
    move/from16 v4, v36

    #@25c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@25f
    move-result-object v30

    #@260
    move-object/from16 v0, p2

    #@262
    move-object/from16 v1, v30

    #@264
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@267
    .line 2614
    const-string/jumbo v30, " -> "

    #@26a
    move-object/from16 v0, p2

    #@26c
    move-object/from16 v1, v30

    #@26e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@271
    .line 2615
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@273
    move-object/from16 v30, v0

    #@275
    move-object/from16 v0, v30

    #@277
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@279
    move-object/from16 v22, v0

    #@27b
    .line 2616
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v22, :cond_9

    #@27d
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@280
    move-result-object v30

    #@281
    :goto_6
    move-object/from16 v0, p2

    #@283
    move-object/from16 v1, v30

    #@285
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@288
    .line 2609
    add-int/lit8 v14, v14, 0x1

    #@28a
    goto :goto_5

    #@28b
    .line 2616
    :cond_9
    const-string/jumbo v30, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@28e
    goto :goto_6

    #@28f
    .line 2607
    .end local v8    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    #@291
    goto/16 :goto_4

    #@293
    .line 2633
    .end local v7    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v9    # "conni":I
    .end local v14    # "i":I
    .restart local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v30

    #@294
    .line 2634
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@297
    .line 2633
    throw v30
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@298
    .line 2636
    .end local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v12

    #@299
    .line 2637
    .local v12, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v30, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v33, "      Failure while dumping the service: "

    #@2a1
    move-object/from16 v0, v30

    #@2a3
    move-object/from16 v1, v33

    #@2a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v30

    #@2a9
    move-object/from16 v0, v30

    #@2ab
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v30

    #@2af
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b2
    move-result-object v30

    #@2b3
    move-object/from16 v0, p2

    #@2b5
    move-object/from16 v1, v30

    #@2b7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    #@2ba
    goto/16 :goto_3

    #@2bc
    .line 2685
    .end local v12    # "e":Ljava/io/IOException;
    .end local v17    # "needSep":Z
    .end local v18    # "nowReal":J
    .end local v20    # "printed":Z
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v25    # "si":I
    .end local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v28    # "user":I
    .end local v29    # "users":[I
    :catch_1
    move-exception v13

    #@2bd
    .line 2686
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v30, "ActivityManager"

    #@2c0
    const-string/jumbo v31, "Exception in dumpServicesLocked"

    #@2c3
    move-object/from16 v0, v30

    #@2c5
    move-object/from16 v1, v31

    #@2c7
    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2ca
    .line 2689
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2ce
    move-object/from16 v30, v0

    #@2d0
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@2d3
    move-result v30

    #@2d4
    if-lez v30, :cond_20

    #@2d6
    .line 2690
    const/16 v20, 0x0

    #@2d8
    .line 2691
    .restart local v20    # "printed":Z
    const/4 v14, 0x0

    #@2d9
    .restart local v14    # "i":I
    :goto_7
    move-object/from16 v0, p0

    #@2db
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2dd
    move-object/from16 v30, v0

    #@2df
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@2e2
    move-result v30

    #@2e3
    move/from16 v0, v30

    #@2e5
    if-ge v14, v0, :cond_1f

    #@2e7
    .line 2692
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2eb
    move-object/from16 v30, v0

    #@2ed
    move-object/from16 v0, v30

    #@2ef
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f2
    move-result-object v23

    #@2f3
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@2f5
    .line 2693
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@2f7
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2f9
    move-object/from16 v30, v0

    #@2fb
    move-object/from16 v0, v16

    #@2fd
    move-object/from16 v1, v23

    #@2ff
    move-object/from16 v2, v30

    #@301
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@304
    move-result v30

    #@305
    if-nez v30, :cond_1b

    #@307
    .line 2691
    :cond_c
    :goto_8
    add-int/lit8 v14, v14, 0x1

    #@309
    goto :goto_7

    #@30a
    .line 2638
    .end local v14    # "i":I
    .restart local v17    # "needSep":Z
    .restart local v18    # "nowReal":J
    .restart local v25    # "si":I
    .restart local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v28    # "user":I
    .restart local v29    # "users":[I
    :catch_2
    move-exception v11

    #@30b
    .line 2639
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v30, "      Got a RemoteException while dumping the service"

    #@30e
    move-object/from16 v0, p2

    #@310
    move-object/from16 v1, v30

    #@312
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@315
    goto/16 :goto_3

    #@317
    .line 2644
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_d
    or-int v17, v17, v20

    #@319
    .line 2646
    .end local v17    # "needSep":Z
    .end local v18    # "nowReal":J
    .end local v25    # "si":I
    :cond_e
    const/16 v20, 0x0

    #@31b
    .line 2647
    const/16 v25, 0x0

    #@31d
    .restart local v25    # "si":I
    move-object/from16 v0, v26

    #@31f
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@321
    move-object/from16 v30, v0

    #@323
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@326
    move-result v6

    #@327
    .local v6, "SN":I
    :goto_9
    move/from16 v0, v25

    #@329
    if-ge v0, v6, :cond_14

    #@32b
    .line 2648
    move-object/from16 v0, v26

    #@32d
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@32f
    move-object/from16 v30, v0

    #@331
    move-object/from16 v0, v30

    #@333
    move/from16 v1, v25

    #@335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@338
    move-result-object v23

    #@339
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@33b
    .line 2649
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@33d
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@33f
    move-object/from16 v30, v0

    #@341
    move-object/from16 v0, v16

    #@343
    move-object/from16 v1, v23

    #@345
    move-object/from16 v2, v30

    #@347
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@34a
    move-result v30

    #@34b
    if-nez v30, :cond_10

    #@34d
    .line 2647
    :cond_f
    :goto_a
    add-int/lit8 v25, v25, 0x1

    #@34f
    goto :goto_9

    #@350
    .line 2652
    :cond_10
    if-eqz p7, :cond_11

    #@352
    move-object/from16 v0, v23

    #@354
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@356
    move-object/from16 v30, v0

    #@358
    move-object/from16 v0, v30

    #@35a
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@35c
    move-object/from16 v30, v0

    #@35e
    move-object/from16 v0, p7

    #@360
    move-object/from16 v1, v30

    #@362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@365
    move-result v30

    #@366
    if-eqz v30, :cond_f

    #@368
    .line 2655
    :cond_11
    if-nez v20, :cond_13

    #@36a
    .line 2656
    if-eqz v21, :cond_12

    #@36c
    .line 2657
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@36f
    .line 2659
    :cond_12
    new-instance v30, Ljava/lang/StringBuilder;

    #@371
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@374
    const-string/jumbo v33, "  User "

    #@377
    move-object/from16 v0, v30

    #@379
    move-object/from16 v1, v33

    #@37b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v30

    #@37f
    move-object/from16 v0, v30

    #@381
    move/from16 v1, v28

    #@383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@386
    move-result-object v30

    #@387
    const-string/jumbo v33, " delayed start services:"

    #@38a
    move-object/from16 v0, v30

    #@38c
    move-object/from16 v1, v33

    #@38e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v30

    #@392
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@395
    move-result-object v30

    #@396
    move-object/from16 v0, p2

    #@398
    move-object/from16 v1, v30

    #@39a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39d
    .line 2660
    const/16 v20, 0x1

    #@39f
    .line 2662
    :cond_13
    const/16 v21, 0x1

    #@3a1
    .line 2663
    const-string/jumbo v30, "  * Delayed start "

    #@3a4
    move-object/from16 v0, p2

    #@3a6
    move-object/from16 v1, v30

    #@3a8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    move-object/from16 v1, v23

    #@3af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3b2
    goto :goto_a

    #@3b3
    .line 2665
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    const/16 v20, 0x0

    #@3b5
    .line 2666
    const/16 v25, 0x0

    #@3b7
    move-object/from16 v0, v26

    #@3b9
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@3bb
    move-object/from16 v30, v0

    #@3bd
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@3c0
    move-result v6

    #@3c1
    :goto_b
    move/from16 v0, v25

    #@3c3
    if-ge v0, v6, :cond_1a

    #@3c5
    .line 2667
    move-object/from16 v0, v26

    #@3c7
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@3c9
    move-object/from16 v30, v0

    #@3cb
    move-object/from16 v0, v30

    #@3cd
    move/from16 v1, v25

    #@3cf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d2
    move-result-object v23

    #@3d3
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@3d5
    .line 2668
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@3d7
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@3d9
    move-object/from16 v30, v0

    #@3db
    move-object/from16 v0, v16

    #@3dd
    move-object/from16 v1, v23

    #@3df
    move-object/from16 v2, v30

    #@3e1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@3e4
    move-result v30

    #@3e5
    if-nez v30, :cond_16

    #@3e7
    .line 2666
    :cond_15
    :goto_c
    add-int/lit8 v25, v25, 0x1

    #@3e9
    goto :goto_b

    #@3ea
    .line 2671
    :cond_16
    if-eqz p7, :cond_17

    #@3ec
    move-object/from16 v0, v23

    #@3ee
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3f0
    move-object/from16 v30, v0

    #@3f2
    move-object/from16 v0, v30

    #@3f4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3f6
    move-object/from16 v30, v0

    #@3f8
    move-object/from16 v0, p7

    #@3fa
    move-object/from16 v1, v30

    #@3fc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ff
    move-result v30

    #@400
    if-eqz v30, :cond_15

    #@402
    .line 2674
    :cond_17
    if-nez v20, :cond_19

    #@404
    .line 2675
    if-eqz v21, :cond_18

    #@406
    .line 2676
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@409
    .line 2678
    :cond_18
    new-instance v30, Ljava/lang/StringBuilder;

    #@40b
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@40e
    const-string/jumbo v33, "  User "

    #@411
    move-object/from16 v0, v30

    #@413
    move-object/from16 v1, v33

    #@415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v30

    #@419
    move-object/from16 v0, v30

    #@41b
    move/from16 v1, v28

    #@41d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@420
    move-result-object v30

    #@421
    const-string/jumbo v33, " starting in background:"

    #@424
    move-object/from16 v0, v30

    #@426
    move-object/from16 v1, v33

    #@428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v30

    #@42c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v30

    #@430
    move-object/from16 v0, p2

    #@432
    move-object/from16 v1, v30

    #@434
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@437
    .line 2679
    const/16 v20, 0x1

    #@439
    .line 2681
    :cond_19
    const/16 v21, 0x1

    #@43b
    .line 2682
    const-string/jumbo v30, "  * Starting bg "

    #@43e
    move-object/from16 v0, p2

    #@440
    move-object/from16 v1, v30

    #@442
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@445
    move-object/from16 v0, p2

    #@447
    move-object/from16 v1, v23

    #@449
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    #@44c
    goto :goto_c

    #@44d
    .line 2566
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1a
    add-int/lit8 v30, v31, 0x1

    #@44f
    move/from16 v31, v30

    #@451
    goto/16 :goto_0

    #@453
    .line 2696
    .end local v6    # "SN":I
    .end local v25    # "si":I
    .end local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v28    # "user":I
    .end local v29    # "users":[I
    .restart local v14    # "i":I
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1b
    if-eqz p7, :cond_1c

    #@455
    move-object/from16 v0, v23

    #@457
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@459
    move-object/from16 v30, v0

    #@45b
    move-object/from16 v0, v30

    #@45d
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@45f
    move-object/from16 v30, v0

    #@461
    move-object/from16 v0, p7

    #@463
    move-object/from16 v1, v30

    #@465
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@468
    move-result v30

    #@469
    if-eqz v30, :cond_c

    #@46b
    .line 2699
    :cond_1c
    const/16 v21, 0x1

    #@46d
    .line 2700
    if-nez v20, :cond_1e

    #@46f
    .line 2701
    if-eqz v17, :cond_1d

    #@471
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@474
    .line 2702
    :cond_1d
    const/16 v17, 0x1

    #@476
    .line 2703
    .restart local v17    # "needSep":Z
    const-string/jumbo v30, "  Pending services:"

    #@479
    move-object/from16 v0, p2

    #@47b
    move-object/from16 v1, v30

    #@47d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@480
    .line 2704
    const/16 v20, 0x1

    #@482
    .line 2706
    .end local v17    # "needSep":Z
    :cond_1e
    const-string/jumbo v30, "  * Pending "

    #@485
    move-object/from16 v0, p2

    #@487
    move-object/from16 v1, v30

    #@489
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48c
    move-object/from16 v0, p2

    #@48e
    move-object/from16 v1, v23

    #@490
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@493
    .line 2707
    const-string/jumbo v30, "    "

    #@496
    move-object/from16 v0, v23

    #@498
    move-object/from16 v1, p2

    #@49a
    move-object/from16 v2, v30

    #@49c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@49f
    goto/16 :goto_8

    #@4a1
    .line 2709
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1f
    const/16 v17, 0x1

    #@4a3
    .line 2712
    .end local v14    # "i":I
    .end local v20    # "printed":Z
    :cond_20
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@4a7
    move-object/from16 v30, v0

    #@4a9
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@4ac
    move-result v30

    #@4ad
    if-lez v30, :cond_27

    #@4af
    .line 2713
    const/16 v20, 0x0

    #@4b1
    .line 2714
    .restart local v20    # "printed":Z
    const/4 v14, 0x0

    #@4b2
    .restart local v14    # "i":I
    :goto_d
    move-object/from16 v0, p0

    #@4b4
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@4b6
    move-object/from16 v30, v0

    #@4b8
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@4bb
    move-result v30

    #@4bc
    move/from16 v0, v30

    #@4be
    if-ge v14, v0, :cond_26

    #@4c0
    .line 2715
    move-object/from16 v0, p0

    #@4c2
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@4c4
    move-object/from16 v30, v0

    #@4c6
    move-object/from16 v0, v30

    #@4c8
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4cb
    move-result-object v23

    #@4cc
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@4ce
    .line 2716
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@4d0
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@4d2
    move-object/from16 v30, v0

    #@4d4
    move-object/from16 v0, v16

    #@4d6
    move-object/from16 v1, v23

    #@4d8
    move-object/from16 v2, v30

    #@4da
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@4dd
    move-result v30

    #@4de
    if-nez v30, :cond_22

    #@4e0
    .line 2714
    :cond_21
    :goto_e
    add-int/lit8 v14, v14, 0x1

    #@4e2
    goto :goto_d

    #@4e3
    .line 2719
    :cond_22
    if-eqz p7, :cond_23

    #@4e5
    move-object/from16 v0, v23

    #@4e7
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@4e9
    move-object/from16 v30, v0

    #@4eb
    move-object/from16 v0, v30

    #@4ed
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4ef
    move-object/from16 v30, v0

    #@4f1
    move-object/from16 v0, p7

    #@4f3
    move-object/from16 v1, v30

    #@4f5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f8
    move-result v30

    #@4f9
    if-eqz v30, :cond_21

    #@4fb
    .line 2722
    :cond_23
    const/16 v21, 0x1

    #@4fd
    .line 2723
    if-nez v20, :cond_25

    #@4ff
    .line 2724
    if-eqz v17, :cond_24

    #@501
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@504
    .line 2725
    :cond_24
    const/16 v17, 0x1

    #@506
    .line 2726
    .restart local v17    # "needSep":Z
    const-string/jumbo v30, "  Restarting services:"

    #@509
    move-object/from16 v0, p2

    #@50b
    move-object/from16 v1, v30

    #@50d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@510
    .line 2727
    const/16 v20, 0x1

    #@512
    .line 2729
    .end local v17    # "needSep":Z
    :cond_25
    const-string/jumbo v30, "  * Restarting "

    #@515
    move-object/from16 v0, p2

    #@517
    move-object/from16 v1, v30

    #@519
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51c
    move-object/from16 v0, p2

    #@51e
    move-object/from16 v1, v23

    #@520
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@523
    .line 2730
    const-string/jumbo v30, "    "

    #@526
    move-object/from16 v0, v23

    #@528
    move-object/from16 v1, p2

    #@52a
    move-object/from16 v2, v30

    #@52c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@52f
    goto :goto_e

    #@530
    .line 2732
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_26
    const/16 v17, 0x1

    #@532
    .line 2735
    .end local v14    # "i":I
    .end local v20    # "printed":Z
    :cond_27
    move-object/from16 v0, p0

    #@534
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@536
    move-object/from16 v30, v0

    #@538
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@53b
    move-result v30

    #@53c
    if-lez v30, :cond_2e

    #@53e
    .line 2736
    const/16 v20, 0x0

    #@540
    .line 2737
    .restart local v20    # "printed":Z
    const/4 v14, 0x0

    #@541
    .restart local v14    # "i":I
    :goto_f
    move-object/from16 v0, p0

    #@543
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@545
    move-object/from16 v30, v0

    #@547
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@54a
    move-result v30

    #@54b
    move/from16 v0, v30

    #@54d
    if-ge v14, v0, :cond_2d

    #@54f
    .line 2738
    move-object/from16 v0, p0

    #@551
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@553
    move-object/from16 v30, v0

    #@555
    move-object/from16 v0, v30

    #@557
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55a
    move-result-object v23

    #@55b
    check-cast v23, Lcom/android/server/am/ServiceRecord;

    #@55d
    .line 2739
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    #@55f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@561
    move-object/from16 v30, v0

    #@563
    move-object/from16 v0, v16

    #@565
    move-object/from16 v1, v23

    #@567
    move-object/from16 v2, v30

    #@569
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@56c
    move-result v30

    #@56d
    if-nez v30, :cond_29

    #@56f
    .line 2737
    :cond_28
    :goto_10
    add-int/lit8 v14, v14, 0x1

    #@571
    goto :goto_f

    #@572
    .line 2742
    :cond_29
    if-eqz p7, :cond_2a

    #@574
    move-object/from16 v0, v23

    #@576
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@578
    move-object/from16 v30, v0

    #@57a
    move-object/from16 v0, v30

    #@57c
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@57e
    move-object/from16 v30, v0

    #@580
    move-object/from16 v0, p7

    #@582
    move-object/from16 v1, v30

    #@584
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@587
    move-result v30

    #@588
    if-eqz v30, :cond_28

    #@58a
    .line 2745
    :cond_2a
    const/16 v21, 0x1

    #@58c
    .line 2746
    if-nez v20, :cond_2c

    #@58e
    .line 2747
    if-eqz v17, :cond_2b

    #@590
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@593
    .line 2748
    :cond_2b
    const/16 v17, 0x1

    #@595
    .line 2749
    .restart local v17    # "needSep":Z
    const-string/jumbo v30, "  Destroying services:"

    #@598
    move-object/from16 v0, p2

    #@59a
    move-object/from16 v1, v30

    #@59c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59f
    .line 2750
    const/16 v20, 0x1

    #@5a1
    .line 2752
    .end local v17    # "needSep":Z
    :cond_2c
    const-string/jumbo v30, "  * Destroy "

    #@5a4
    move-object/from16 v0, p2

    #@5a6
    move-object/from16 v1, v30

    #@5a8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    move-object/from16 v1, v23

    #@5af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5b2
    .line 2753
    const-string/jumbo v30, "    "

    #@5b5
    move-object/from16 v0, v23

    #@5b7
    move-object/from16 v1, p2

    #@5b9
    move-object/from16 v2, v30

    #@5bb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@5be
    goto :goto_10

    #@5bf
    .line 2755
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2d
    const/16 v17, 0x1

    #@5c1
    .line 2758
    .end local v14    # "i":I
    .end local v20    # "printed":Z
    :cond_2e
    if-eqz p5, :cond_35

    #@5c3
    .line 2759
    const/16 v20, 0x0

    #@5c5
    .line 2760
    .restart local v20    # "printed":Z
    const/4 v15, 0x0

    #@5c6
    .local v15, "ic":I
    :goto_11
    move-object/from16 v0, p0

    #@5c8
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@5ca
    move-object/from16 v30, v0

    #@5cc
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    #@5cf
    move-result v30

    #@5d0
    move/from16 v0, v30

    #@5d2
    if-ge v15, v0, :cond_35

    #@5d4
    .line 2761
    move-object/from16 v0, p0

    #@5d6
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@5d8
    move-object/from16 v30, v0

    #@5da
    move-object/from16 v0, v30

    #@5dc
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5df
    move-result-object v24

    #@5e0
    check-cast v24, Ljava/util/ArrayList;

    #@5e2
    .line 2762
    .local v24, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v14, 0x0

    #@5e3
    .restart local v14    # "i":I
    :goto_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@5e6
    move-result v30

    #@5e7
    move/from16 v0, v30

    #@5e9
    if-ge v14, v0, :cond_34

    #@5eb
    .line 2763
    move-object/from16 v0, v24

    #@5ed
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f0
    move-result-object v10

    #@5f1
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    #@5f3
    .line 2764
    .local v10, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@5f5
    move-object/from16 v30, v0

    #@5f7
    move-object/from16 v0, v30

    #@5f9
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@5fb
    move-object/from16 v30, v0

    #@5fd
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@5ff
    move-object/from16 v31, v0

    #@601
    move-object/from16 v0, v31

    #@603
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@605
    move-object/from16 v31, v0

    #@607
    move-object/from16 v0, v31

    #@609
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@60b
    move-object/from16 v31, v0

    #@60d
    move-object/from16 v0, v16

    #@60f
    move-object/from16 v1, v30

    #@611
    move-object/from16 v2, v31

    #@613
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@616
    move-result v30

    #@617
    if-nez v30, :cond_30

    #@619
    .line 2762
    :cond_2f
    :goto_13
    add-int/lit8 v14, v14, 0x1

    #@61b
    goto :goto_12

    #@61c
    .line 2767
    :cond_30
    if-eqz p7, :cond_31

    #@61e
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@620
    move-object/from16 v30, v0

    #@622
    move-object/from16 v0, v30

    #@624
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@626
    move-object/from16 v30, v0

    #@628
    if-eqz v30, :cond_2f

    #@62a
    .line 2768
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@62c
    move-object/from16 v30, v0

    #@62e
    move-object/from16 v0, v30

    #@630
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@632
    move-object/from16 v30, v0

    #@634
    move-object/from16 v0, v30

    #@636
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@638
    move-object/from16 v30, v0

    #@63a
    move-object/from16 v0, v30

    #@63c
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@63e
    move-object/from16 v30, v0

    #@640
    move-object/from16 v0, p7

    #@642
    move-object/from16 v1, v30

    #@644
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@647
    move-result v30

    #@648
    if-eqz v30, :cond_2f

    #@64a
    .line 2771
    :cond_31
    const/16 v21, 0x1

    #@64c
    .line 2772
    if-nez v20, :cond_33

    #@64e
    .line 2773
    if-eqz v17, :cond_32

    #@650
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@653
    .line 2774
    :cond_32
    const/16 v17, 0x1

    #@655
    .line 2775
    .restart local v17    # "needSep":Z
    const-string/jumbo v30, "  Connection bindings to services:"

    #@658
    move-object/from16 v0, p2

    #@65a
    move-object/from16 v1, v30

    #@65c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65f
    .line 2776
    const/16 v20, 0x1

    #@661
    .line 2778
    .end local v17    # "needSep":Z
    :cond_33
    const-string/jumbo v30, "  * "

    #@664
    move-object/from16 v0, p2

    #@666
    move-object/from16 v1, v30

    #@668
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66b
    move-object/from16 v0, p2

    #@66d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@670
    .line 2779
    const-string/jumbo v30, "    "

    #@673
    move-object/from16 v0, p2

    #@675
    move-object/from16 v1, v30

    #@677
    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@67a
    goto :goto_13

    #@67b
    .line 2760
    .end local v10    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_34
    add-int/lit8 v15, v15, 0x1

    #@67d
    goto/16 :goto_11

    #@67f
    .line 2784
    .end local v14    # "i":I
    .end local v15    # "ic":I
    .end local v20    # "printed":Z
    .end local v24    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_35
    if-nez v21, :cond_36

    #@681
    .line 2785
    const-string/jumbo v30, "  (nothing)"

    #@684
    move-object/from16 v0, p2

    #@686
    move-object/from16 v1, v30

    #@688
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68b
    .line 2551
    :cond_36
    return-void
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v5

    #@5
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v4

    #@9
    .line 2474
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    #@c
    move-result-object v3

    #@d
    .line 2475
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    #@f
    .line 2476
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v5

    #@15
    add-int/lit8 v1, v5, -0x1

    #@17
    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    #@19
    .line 2477
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/ArrayList;

    #@21
    .line 2478
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v5

    #@26
    if-ge v2, v5, :cond_1

    #@28
    .line 2479
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    #@2e
    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 2480
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    #@38
    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    #@3a
    return-object v5

    #@3b
    .line 2478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2476
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_0

    #@41
    .line 2485
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :cond_2
    return-object v6
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .locals 14
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2423
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2425
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v9

    #@9
    .line 2426
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v2

    #@d
    .line 2429
    .local v2, "ident":J
    :try_start_0
    const-string/jumbo v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@10
    .line 2428
    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@13
    move-result v12

    #@14
    if-nez v12, :cond_2

    #@16
    .line 2431
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@18
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    #@1b
    move-result-object v11

    #@1c
    .line 2432
    .local v11, "users":[I
    const/4 v8, 0x0

    #@1d
    .local v8, "ui":I
    :goto_0
    array-length v12, v11

    #@1e
    if-ge v8, v12, :cond_1

    #@20
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v12

    #@24
    if-ge v12, p1, :cond_1

    #@26
    .line 2433
    aget v12, v11, v8

    #@28
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@2b
    move-result-object v0

    #@2c
    .line 2434
    .local v0, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@30
    move-result v12

    #@31
    if-ge v1, v12, :cond_0

    #@33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v12

    #@37
    if-ge v12, p1, :cond_0

    #@39
    .line 2435
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v7

    #@3d
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@3f
    .line 2436
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@42
    move-result-object v12

    #@43
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 2434
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 2432
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 2440
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@4d
    .restart local v1    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v12

    #@53
    if-ge v1, v12, :cond_5

    #@55
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v12

    #@59
    if-ge v12, p1, :cond_5

    #@5b
    .line 2441
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v5

    #@61
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@63
    .line 2443
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@66
    move-result-object v4

    #@67
    .line 2444
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@69
    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@6b
    .line 2445
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 2440
    add-int/lit8 v1, v1, 0x1

    #@70
    goto :goto_2

    #@71
    .line 2448
    .end local v1    # "i":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "ui":I
    .end local v11    # "users":[I
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@74
    move-result v10

    #@75
    .line 2449
    .local v10, "userId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@78
    move-result-object v0

    #@79
    .line 2450
    .restart local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    #@7a
    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@7d
    move-result v12

    #@7e
    if-ge v1, v12, :cond_3

    #@80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v12

    #@84
    if-ge v12, p1, :cond_3

    #@86
    .line 2451
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@89
    move-result-object v7

    #@8a
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@8c
    .line 2452
    .restart local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@8f
    move-result-object v12

    #@90
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@93
    .line 2450
    add-int/lit8 v1, v1, 0x1

    #@95
    goto :goto_3

    #@96
    .line 2455
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v1, 0x0

    #@97
    :goto_4
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@99
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@9c
    move-result v12

    #@9d
    if-ge v1, v12, :cond_5

    #@9f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v12

    #@a3
    if-ge v12, p1, :cond_5

    #@a5
    .line 2456
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@a7
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v5

    #@ab
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@ad
    .line 2457
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    #@af
    if-ne v12, v10, :cond_4

    #@b1
    .line 2459
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@b4
    move-result-object v4

    #@b5
    .line 2460
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@b7
    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@b9
    .line 2461
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bc
    .line 2455
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@be
    goto :goto_4

    #@bf
    .line 2466
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "userId":I
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c2
    .line 2469
    return-object v6

    #@c3
    .line 2465
    .end local v1    # "i":I
    :catchall_0
    move-exception v12

    #@c4
    .line 2466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c7
    .line 2465
    throw v12
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    #@0
    .prologue
    .line 285
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    #@c
    return-object v0
.end method

.method getServices(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@6
    return-object v0
.end method

.method hasBackgroundServices(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 289
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@9
    .line 290
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_0

    #@b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@13
    if-lt v2, v3, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :cond_0
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    #@0
    .prologue
    .line 2218
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@4
    move-object/from16 v22, v0

    #@6
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@9
    move-result v22

    #@a
    add-int/lit8 v15, v22, -0x1

    #@c
    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_0

    #@e
    .line 2219
    move-object/from16 v0, p1

    #@10
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@12
    move-object/from16 v22, v0

    #@14
    move-object/from16 v0, v22

    #@16
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v18

    #@1a
    check-cast v18, Lcom/android/server/am/ConnectionRecord;

    #@1c
    .line 2220
    .local v18, "r":Lcom/android/server/am/ConnectionRecord;
    const/16 v22, 0x0

    #@1e
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v18

    #@22
    move-object/from16 v2, p1

    #@24
    move-object/from16 v3, v22

    #@26
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    #@29
    .line 2218
    add-int/lit8 v15, v15, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2222
    .end local v18    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@2f
    .line 2223
    move-object/from16 v0, p1

    #@31
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@33
    move-object/from16 v22, v0

    #@35
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@38
    .line 2226
    move-object/from16 v0, p1

    #@3a
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@3c
    move-object/from16 v22, v0

    #@3e
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@41
    move-result v22

    #@42
    add-int/lit8 v15, v22, -0x1

    #@44
    :goto_1
    if-ltz v15, :cond_a

    #@46
    .line 2227
    move-object/from16 v0, p1

    #@48
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@4a
    move-object/from16 v22, v0

    #@4c
    move-object/from16 v0, v22

    #@4e
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@51
    move-result-object v21

    #@52
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@54
    .line 2228
    .local v21, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@56
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@58
    move-object/from16 v22, v0

    #@5a
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@5d
    move-result-object v23

    #@5e
    monitor-enter v23

    #@5f
    .line 2229
    :try_start_0
    move-object/from16 v0, v21

    #@61
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@63
    move-object/from16 v22, v0

    #@65
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v23

    #@69
    .line 2231
    move-object/from16 v0, v21

    #@6b
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6d
    move-object/from16 v22, v0

    #@6f
    move-object/from16 v0, v22

    #@71
    move-object/from16 v1, p1

    #@73
    if-eq v0, v1, :cond_1

    #@75
    move-object/from16 v0, v21

    #@77
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@79
    move-object/from16 v22, v0

    #@7b
    if-eqz v22, :cond_1

    #@7d
    move-object/from16 v0, v21

    #@7f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@81
    move-object/from16 v22, v0

    #@83
    move-object/from16 v0, v22

    #@85
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@87
    move/from16 v22, v0

    #@89
    if-eqz v22, :cond_4

    #@8b
    .line 2234
    :cond_1
    :goto_2
    const/16 v22, 0x0

    #@8d
    move-object/from16 v0, v22

    #@8f
    move-object/from16 v1, v21

    #@91
    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@93
    .line 2235
    const/16 v22, 0x0

    #@95
    move-object/from16 v0, v22

    #@97
    move-object/from16 v1, v21

    #@99
    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@9b
    .line 2236
    const/16 v22, 0x0

    #@9d
    move/from16 v0, v22

    #@9f
    move-object/from16 v1, v21

    #@a1
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@a3
    .line 2237
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    #@a6
    .line 2238
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@aa
    move-object/from16 v22, v0

    #@ac
    move-object/from16 v0, v22

    #@ae
    move-object/from16 v1, v21

    #@b0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b3
    move-result v22

    #@b4
    if-eqz v22, :cond_2

    #@b6
    .line 2242
    :cond_2
    move-object/from16 v0, v21

    #@b8
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@ba
    move-object/from16 v22, v0

    #@bc
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    #@bf
    move-result v16

    #@c0
    .line 2243
    .local v16, "numClients":I
    add-int/lit8 v9, v16, -0x1

    #@c2
    .local v9, "bindingi":I
    :goto_3
    if-ltz v9, :cond_9

    #@c4
    .line 2244
    move-object/from16 v0, v21

    #@c6
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@c8
    move-object/from16 v22, v0

    #@ca
    move-object/from16 v0, v22

    #@cc
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@cf
    move-result-object v8

    #@d0
    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    #@d2
    .line 2247
    .local v8, "b":Lcom/android/server/am/IntentBindRecord;
    const/16 v22, 0x0

    #@d4
    move-object/from16 v0, v22

    #@d6
    iput-object v0, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@d8
    .line 2248
    const/16 v22, 0x0

    #@da
    move/from16 v0, v22

    #@dc
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@de
    const/16 v22, 0x0

    #@e0
    move/from16 v0, v22

    #@e2
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@e4
    const/16 v22, 0x0

    #@e6
    move/from16 v0, v22

    #@e8
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@ea
    .line 2253
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@ec
    move-object/from16 v22, v0

    #@ee
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    #@f1
    move-result v22

    #@f2
    add-int/lit8 v7, v22, -0x1

    #@f4
    .local v7, "appi":I
    :goto_4
    if-ltz v7, :cond_8

    #@f6
    .line 2254
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@f8
    move-object/from16 v22, v0

    #@fa
    move-object/from16 v0, v22

    #@fc
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ff
    move-result-object v17

    #@100
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    #@102
    .line 2256
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v17

    #@104
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@106
    move/from16 v22, v0

    #@108
    if-nez v22, :cond_3

    #@10a
    move-object/from16 v0, v17

    #@10c
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@10e
    move-object/from16 v22, v0

    #@110
    if-nez v22, :cond_5

    #@112
    .line 2253
    :cond_3
    :goto_5
    add-int/lit8 v7, v7, -0x1

    #@114
    goto :goto_4

    #@115
    .line 2228
    .end local v7    # "appi":I
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v9    # "bindingi":I
    .end local v16    # "numClients":I
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v22

    #@116
    monitor-exit v23

    #@117
    throw v22

    #@118
    .line 2232
    :cond_4
    move-object/from16 v0, v21

    #@11a
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@11c
    move-object/from16 v22, v0

    #@11e
    move-object/from16 v0, v22

    #@120
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@122
    move-object/from16 v22, v0

    #@124
    move-object/from16 v0, v22

    #@126
    move-object/from16 v1, v21

    #@128
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@12b
    goto/16 :goto_2

    #@12d
    .line 2262
    .restart local v7    # "appi":I
    .restart local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v9    # "bindingi":I
    .restart local v16    # "numClients":I
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@12f
    move-object/from16 v22, v0

    #@131
    move-object/from16 v0, v22

    #@133
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@136
    move-result-object v6

    #@137
    check-cast v6, Lcom/android/server/am/AppBindRecord;

    #@139
    .line 2263
    .local v6, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v14, 0x0

    #@13a
    .line 2264
    .local v14, "hasCreate":Z
    iget-object v0, v6, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@13c
    move-object/from16 v22, v0

    #@13e
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@141
    move-result v22

    #@142
    add-int/lit8 v12, v22, -0x1

    #@144
    .local v12, "conni":I
    :goto_6
    if-ltz v12, :cond_6

    #@146
    .line 2265
    iget-object v0, v6, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@148
    move-object/from16 v22, v0

    #@14a
    move-object/from16 v0, v22

    #@14c
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@14f
    move-result-object v11

    #@150
    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    #@152
    .line 2266
    .local v11, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@154
    move/from16 v22, v0

    #@156
    and-int/lit8 v22, v22, 0x31

    #@158
    .line 2267
    const/16 v23, 0x1

    #@15a
    .line 2266
    move/from16 v0, v22

    #@15c
    move/from16 v1, v23

    #@15e
    if-ne v0, v1, :cond_7

    #@160
    .line 2268
    const/4 v14, 0x1

    #@161
    .line 2272
    .end local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    if-nez v14, :cond_3

    #@163
    goto :goto_5

    #@164
    .line 2264
    .restart local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v12, v12, -0x1

    #@166
    goto :goto_6

    #@167
    .line 2243
    .end local v6    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "conni":I
    .end local v14    # "hasCreate":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    add-int/lit8 v9, v9, -0x1

    #@169
    goto/16 :goto_3

    #@16b
    .line 2226
    .end local v7    # "appi":I
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    :cond_9
    add-int/lit8 v15, v15, -0x1

    #@16d
    goto/16 :goto_1

    #@16f
    .line 2286
    .end local v9    # "bindingi":I
    .end local v16    # "numClients":I
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    move-object/from16 v0, p1

    #@171
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@173
    move/from16 v22, v0

    #@175
    move-object/from16 v0, p0

    #@177
    move/from16 v1, v22

    #@179
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@17c
    move-result-object v20

    #@17d
    .line 2289
    .local v20, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, p1

    #@17f
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@181
    move-object/from16 v22, v0

    #@183
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@186
    move-result v22

    #@187
    add-int/lit8 v15, v22, -0x1

    #@189
    :goto_7
    if-ltz v15, :cond_12

    #@18b
    .line 2290
    move-object/from16 v0, p1

    #@18d
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@18f
    move-object/from16 v22, v0

    #@191
    move-object/from16 v0, v22

    #@193
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@196
    move-result-object v21

    #@197
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@199
    .line 2294
    .restart local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    #@19b
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@19d
    move/from16 v22, v0

    #@19f
    if-nez v22, :cond_b

    #@1a1
    .line 2295
    move-object/from16 v0, p1

    #@1a3
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@1a5
    move-object/from16 v22, v0

    #@1a7
    move-object/from16 v0, v22

    #@1a9
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@1ac
    .line 2300
    :cond_b
    move-object/from16 v0, v20

    #@1ae
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@1b0
    move-object/from16 v22, v0

    #@1b2
    move-object/from16 v0, v21

    #@1b4
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1b6
    move-object/from16 v23, v0

    #@1b8
    invoke-virtual/range {v22 .. v23}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1bb
    move-result-object v13

    #@1bc
    check-cast v13, Lcom/android/server/am/ServiceRecord;

    #@1be
    .line 2301
    .local v13, "curRec":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@1c0
    if-eq v13, v0, :cond_d

    #@1c2
    .line 2302
    if-eqz v13, :cond_c

    #@1c4
    .line 2303
    const-string/jumbo v22, "ActivityManager"

    #@1c7
    new-instance v23, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v24, "Service "

    #@1cf
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v23

    #@1d3
    move-object/from16 v0, v23

    #@1d5
    move-object/from16 v1, v21

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v23

    #@1db
    const-string/jumbo v24, " in process "

    #@1de
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v23

    #@1e2
    move-object/from16 v0, v23

    #@1e4
    move-object/from16 v1, p1

    #@1e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v23

    #@1ea
    .line 2304
    const-string/jumbo v24, " not same as in map: "

    #@1ed
    .line 2303
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v23

    #@1f1
    move-object/from16 v0, v23

    #@1f3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v23

    #@1f7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v23

    #@1fb
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1fe
    .line 2289
    :cond_c
    :goto_8
    add-int/lit8 v15, v15, -0x1

    #@200
    goto :goto_7

    #@201
    .line 2311
    :cond_d
    if-eqz p2, :cond_e

    #@203
    move-object/from16 v0, v21

    #@205
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@207
    move/from16 v22, v0

    #@209
    const/16 v23, 0x2

    #@20b
    move/from16 v0, v22

    #@20d
    move/from16 v1, v23

    #@20f
    if-lt v0, v1, :cond_e

    #@211
    move-object/from16 v0, v21

    #@213
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@215
    move-object/from16 v22, v0

    #@217
    move-object/from16 v0, v22

    #@219
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21b
    move-object/from16 v22, v0

    #@21d
    move-object/from16 v0, v22

    #@21f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@221
    move/from16 v22, v0

    #@223
    and-int/lit8 v22, v22, 0x8

    #@225
    if-nez v22, :cond_e

    #@227
    .line 2313
    const-string/jumbo v22, "ActivityManager"

    #@22a
    new-instance v23, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v24, "Service crashed "

    #@232
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v23

    #@236
    move-object/from16 v0, v21

    #@238
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@23a
    move/from16 v24, v0

    #@23c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v23

    #@240
    .line 2314
    const-string/jumbo v24, " times, stopping: "

    #@243
    .line 2313
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v23

    #@247
    move-object/from16 v0, v23

    #@249
    move-object/from16 v1, v21

    #@24b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v23

    #@24f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v23

    #@253
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@256
    .line 2315
    const/16 v22, 0x4

    #@258
    move/from16 v0, v22

    #@25a
    new-array v0, v0, [Ljava/lang/Object;

    #@25c
    move-object/from16 v22, v0

    #@25e
    .line 2316
    move-object/from16 v0, v21

    #@260
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@262
    move/from16 v23, v0

    #@264
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@267
    move-result-object v23

    #@268
    const/16 v24, 0x0

    #@26a
    aput-object v23, v22, v24

    #@26c
    move-object/from16 v0, v21

    #@26e
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@270
    move/from16 v23, v0

    #@272
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@275
    move-result-object v23

    #@276
    const/16 v24, 0x1

    #@278
    aput-object v23, v22, v24

    #@27a
    move-object/from16 v0, v21

    #@27c
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@27e
    move-object/from16 v23, v0

    #@280
    const/16 v24, 0x2

    #@282
    aput-object v23, v22, v24

    #@284
    move-object/from16 v0, p1

    #@286
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@288
    move/from16 v23, v0

    #@28a
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28d
    move-result-object v23

    #@28e
    const/16 v24, 0x3

    #@290
    aput-object v23, v22, v24

    #@292
    .line 2315
    const/16 v23, 0x7552

    #@294
    move/from16 v0, v23

    #@296
    move-object/from16 v1, v22

    #@298
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@29b
    .line 2317
    move-object/from16 v0, p0

    #@29d
    move-object/from16 v1, v21

    #@29f
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@2a2
    goto/16 :goto_8

    #@2a4
    .line 2318
    :cond_e
    if-eqz p2, :cond_11

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2aa
    move-object/from16 v22, v0

    #@2ac
    move-object/from16 v0, v21

    #@2ae
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@2b0
    move/from16 v23, v0

    #@2b2
    const/16 v24, 0x0

    #@2b4
    invoke-virtual/range {v22 .. v24}, Lcom/android/server/am/ActivityManagerService;->isUserRunningLocked(IZ)Z

    #@2b7
    move-result v22

    #@2b8
    if-eqz v22, :cond_11

    #@2ba
    .line 2321
    const/16 v22, 0x1

    #@2bc
    move-object/from16 v0, p0

    #@2be
    move-object/from16 v1, v21

    #@2c0
    move/from16 v2, v22

    #@2c2
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@2c5
    move-result v10

    #@2c6
    .line 2326
    .local v10, "canceled":Z
    move-object/from16 v0, v21

    #@2c8
    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@2ca
    move/from16 v22, v0

    #@2cc
    if-eqz v22, :cond_c

    #@2ce
    move-object/from16 v0, v21

    #@2d0
    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@2d2
    move/from16 v22, v0

    #@2d4
    if-nez v22, :cond_f

    #@2d6
    if-eqz v10, :cond_c

    #@2d8
    .line 2327
    :cond_f
    move-object/from16 v0, v21

    #@2da
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@2dc
    move-object/from16 v22, v0

    #@2de
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@2e1
    move-result v22

    #@2e2
    if-nez v22, :cond_c

    #@2e4
    .line 2328
    const/16 v22, 0x0

    #@2e6
    move/from16 v0, v22

    #@2e8
    move-object/from16 v1, v21

    #@2ea
    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@2ec
    .line 2329
    move-object/from16 v0, v21

    #@2ee
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2f0
    move-object/from16 v22, v0

    #@2f2
    if-eqz v22, :cond_10

    #@2f4
    .line 2330
    move-object/from16 v0, v21

    #@2f6
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2f8
    move-object/from16 v22, v0

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2fe
    move-object/from16 v23, v0

    #@300
    move-object/from16 v0, v23

    #@302
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@304
    move-object/from16 v23, v0

    #@306
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@309
    move-result v23

    #@30a
    .line 2331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30d
    move-result-wide v24

    #@30e
    .line 2330
    const/16 v26, 0x0

    #@310
    move-object/from16 v0, v22

    #@312
    move/from16 v1, v26

    #@314
    move/from16 v2, v23

    #@316
    move-wide/from16 v3, v24

    #@318
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@31b
    .line 2333
    :cond_10
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@31e
    move-result v22

    #@31f
    if-nez v22, :cond_c

    #@321
    .line 2335
    move-object/from16 v0, p0

    #@323
    move-object/from16 v1, v21

    #@325
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@328
    goto/16 :goto_8

    #@32a
    .line 2319
    .end local v10    # "canceled":Z
    :cond_11
    move-object/from16 v0, p0

    #@32c
    move-object/from16 v1, v21

    #@32e
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@331
    goto/16 :goto_8

    #@333
    .line 2342
    .end local v13    # "curRec":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_12
    if-nez p2, :cond_16

    #@335
    .line 2343
    move-object/from16 v0, p1

    #@337
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@339
    move-object/from16 v22, v0

    #@33b
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@33e
    .line 2346
    move-object/from16 v0, p0

    #@340
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@342
    move-object/from16 v22, v0

    #@344
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@347
    move-result v22

    #@348
    add-int/lit8 v15, v22, -0x1

    #@34a
    :goto_9
    if-ltz v15, :cond_14

    #@34c
    .line 2347
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@350
    move-object/from16 v22, v0

    #@352
    move-object/from16 v0, v22

    #@354
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@357
    move-result-object v19

    #@358
    check-cast v19, Lcom/android/server/am/ServiceRecord;

    #@35a
    .line 2348
    .local v19, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v19

    #@35c
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@35e
    move-object/from16 v22, v0

    #@360
    move-object/from16 v0, p1

    #@362
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@364
    move-object/from16 v23, v0

    #@366
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@369
    move-result v22

    #@36a
    if-eqz v22, :cond_13

    #@36c
    .line 2349
    move-object/from16 v0, v19

    #@36e
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@370
    move-object/from16 v22, v0

    #@372
    move-object/from16 v0, v22

    #@374
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@376
    move-object/from16 v22, v0

    #@378
    move-object/from16 v0, v22

    #@37a
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@37c
    move/from16 v22, v0

    #@37e
    move-object/from16 v0, p1

    #@380
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@382
    move-object/from16 v23, v0

    #@384
    move-object/from16 v0, v23

    #@386
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@388
    move/from16 v23, v0

    #@38a
    move/from16 v0, v22

    #@38c
    move/from16 v1, v23

    #@38e
    if-ne v0, v1, :cond_13

    #@390
    .line 2350
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@394
    move-object/from16 v22, v0

    #@396
    move-object/from16 v0, v22

    #@398
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@39b
    .line 2351
    move-object/from16 v0, p0

    #@39d
    move-object/from16 v1, v19

    #@39f
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@3a2
    .line 2346
    :cond_13
    add-int/lit8 v15, v15, -0x1

    #@3a4
    goto :goto_9

    #@3a5
    .line 2354
    .end local v19    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    move-object/from16 v0, p0

    #@3a7
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3a9
    move-object/from16 v22, v0

    #@3ab
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@3ae
    move-result v22

    #@3af
    add-int/lit8 v15, v22, -0x1

    #@3b1
    :goto_a
    if-ltz v15, :cond_16

    #@3b3
    .line 2355
    move-object/from16 v0, p0

    #@3b5
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3b7
    move-object/from16 v22, v0

    #@3b9
    move-object/from16 v0, v22

    #@3bb
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3be
    move-result-object v19

    #@3bf
    check-cast v19, Lcom/android/server/am/ServiceRecord;

    #@3c1
    .line 2356
    .restart local v19    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v19

    #@3c3
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@3c5
    move-object/from16 v22, v0

    #@3c7
    move-object/from16 v0, p1

    #@3c9
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@3cb
    move-object/from16 v23, v0

    #@3cd
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d0
    move-result v22

    #@3d1
    if-eqz v22, :cond_15

    #@3d3
    .line 2357
    move-object/from16 v0, v19

    #@3d5
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3d7
    move-object/from16 v22, v0

    #@3d9
    move-object/from16 v0, v22

    #@3db
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3dd
    move-object/from16 v22, v0

    #@3df
    move-object/from16 v0, v22

    #@3e1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3e3
    move/from16 v22, v0

    #@3e5
    move-object/from16 v0, p1

    #@3e7
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@3e9
    move-object/from16 v23, v0

    #@3eb
    move-object/from16 v0, v23

    #@3ed
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3ef
    move/from16 v23, v0

    #@3f1
    move/from16 v0, v22

    #@3f3
    move/from16 v1, v23

    #@3f5
    if-ne v0, v1, :cond_15

    #@3f7
    .line 2358
    move-object/from16 v0, p0

    #@3f9
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3fb
    move-object/from16 v22, v0

    #@3fd
    move-object/from16 v0, v22

    #@3ff
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@402
    .line 2354
    :cond_15
    add-int/lit8 v15, v15, -0x1

    #@404
    goto :goto_a

    #@405
    .line 2364
    .end local v19    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_16
    move-object/from16 v0, p0

    #@407
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@409
    move-object/from16 v22, v0

    #@40b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@40e
    move-result v15

    #@40f
    .line 2365
    :cond_17
    :goto_b
    if-lez v15, :cond_18

    #@411
    .line 2366
    add-int/lit8 v15, v15, -0x1

    #@413
    .line 2367
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@417
    move-object/from16 v22, v0

    #@419
    move-object/from16 v0, v22

    #@41b
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41e
    move-result-object v21

    #@41f
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@421
    .line 2368
    .restart local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@423
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@425
    move-object/from16 v22, v0

    #@427
    move-object/from16 v0, v22

    #@429
    move-object/from16 v1, p1

    #@42b
    if-ne v0, v1, :cond_17

    #@42d
    .line 2369
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    #@430
    .line 2370
    move-object/from16 v0, p0

    #@432
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@434
    move-object/from16 v22, v0

    #@436
    move-object/from16 v0, v22

    #@438
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@43b
    goto :goto_b

    #@43c
    .line 2375
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_18
    move-object/from16 v0, p1

    #@43e
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@440
    move-object/from16 v22, v0

    #@442
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@445
    .line 2188
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 2380
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    #@2
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    #@5
    .line 2381
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@7
    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@9
    .line 2382
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 2383
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    #@11
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    #@13
    .line 2385
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    #@19
    .line 2386
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@1b
    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    #@1d
    .line 2387
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@1f
    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    #@21
    .line 2388
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@23
    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    #@25
    .line 2389
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@27
    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    #@29
    .line 2390
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@2e
    move-result v5

    #@2f
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    #@31
    .line 2391
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@33
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    #@35
    .line 2392
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@37
    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    #@39
    .line 2393
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@3b
    if-eqz v5, :cond_1

    #@3d
    .line 2394
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@3f
    or-int/lit8 v5, v5, 0x2

    #@41
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@43
    .line 2396
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@45
    if-eqz v5, :cond_2

    #@47
    .line 2397
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@49
    or-int/lit8 v5, v5, 0x1

    #@4b
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@4d
    .line 2399
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4f
    if-eqz v5, :cond_3

    #@51
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@53
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    #@55
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@57
    if-ne v5, v6, :cond_3

    #@59
    .line 2400
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@5b
    or-int/lit8 v5, v5, 0x4

    #@5d
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@5f
    .line 2402
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61
    if-eqz v5, :cond_4

    #@63
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@65
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@67
    if-eqz v5, :cond_4

    #@69
    .line 2403
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@6b
    or-int/lit8 v5, v5, 0x8

    #@6d
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@6f
    .line 2406
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@71
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@74
    move-result v5

    #@75
    add-int/lit8 v1, v5, -0x1

    #@77
    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_7

    #@79
    .line 2407
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@7b
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7e
    move-result-object v2

    #@7f
    check-cast v2, Ljava/util/ArrayList;

    #@81
    .line 2408
    .local v2, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    #@82
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v5

    #@86
    if-ge v3, v5, :cond_6

    #@88
    .line 2409
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@8e
    .line 2410
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    #@90
    if-eqz v5, :cond_5

    #@92
    .line 2411
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@94
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@96
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@98
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9a
    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    #@9c
    .line 2412
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    #@9e
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    #@a0
    .line 2413
    return-object v4

    #@a1
    .line 2408
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@a3
    goto :goto_1

    #@a4
    .line 2406
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    #@a6
    goto :goto_0

    #@a7
    .line 2417
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_7
    return-object v4
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 514
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v4

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v5

    #@9
    .line 515
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@c
    move-result v6

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v2, p2

    #@10
    move-object v3, p3

    #@11
    move v8, v7

    #@12
    .line 513
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@15
    move-result-object v10

    #@16
    .line 517
    .local v10, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v11, 0x0

    #@17
    .line 518
    .local v11, "ret":Landroid/os/IBinder;
    if-eqz v10, :cond_1

    #@19
    .line 520
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 521
    new-instance v0, Ljava/lang/SecurityException;

    #@1f
    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Permission Denial: Accessing service from pid="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 523
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2e
    move-result v2

    #@2f
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 524
    const-string/jumbo v2, ", uid="

    #@36
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3d
    move-result v2

    #@3e
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 525
    const-string/jumbo v2, " requires "

    #@45
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 525
    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@4b
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 527
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@59
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@5b
    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@5d
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@5f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    move-result-object v9

    #@63
    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    #@65
    .line 528
    .local v9, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v9, :cond_1

    #@67
    .line 529
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@69
    .line 533
    .end local v9    # "ib":Lcom/android/server/am/IntentBindRecord;
    .end local v11    # "ret":Landroid/os/IBinder;
    :cond_1
    return-object v11
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1315
    return-void

    #@9
    .line 1318
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@b
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    #@12
    move-result v1

    #@13
    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@15
    const/4 v3, 0x1

    #@16
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1313
    :goto_0
    return-void

    #@1a
    .line 1319
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2073
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_3

    #@9
    .line 2074
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@11
    .line 2075
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@13
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 2076
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@1b
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 2075
    if-nez v2, :cond_1

    #@23
    .line 2077
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@25
    if-ne v2, p1, :cond_2

    #@27
    .line 2078
    :cond_1
    const-string/jumbo v2, "ActivityManager"

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Forcing bringing down service: "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 2079
    const/4 v2, 0x0

    #@42
    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@44
    .line 2080
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@49
    .line 2081
    add-int/lit8 v0, v0, -0x1

    #@4b
    .line 2082
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@4e
    .line 2073
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 2072
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 872
    .local v8, "origId":J
    if-eqz p1, :cond_1

    #@6
    .line 874
    :try_start_0
    new-instance v5, Landroid/content/Intent$FilterComparison;

    #@8
    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@b
    .line 875
    .local v5, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 876
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_0

    #@15
    iget-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@17
    if-eqz v7, :cond_2

    #@19
    .line 905
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v7

    #@1f
    const/4 v10, 0x0

    #@20
    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 908
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 867
    return-void

    #@27
    .line 877
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_2
    :try_start_1
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@29
    .line 878
    const/4 v7, 0x1

    #@2a
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@2c
    .line 879
    const/4 v7, 0x1

    #@2d
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@2f
    .line 880
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@34
    move-result v7

    #@35
    add-int/lit8 v3, v7, -0x1

    #@37
    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_0

    #@39
    .line 881
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Ljava/util/ArrayList;

    #@41
    .line 882
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    #@42
    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v7

    #@46
    if-ge v6, v7, :cond_4

    #@48
    .line 883
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    #@4e
    .line 884
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@50
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@52
    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@54
    invoke-virtual {v5, v7}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    move-result v7

    #@58
    if-nez v7, :cond_3

    #@5a
    .line 882
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 895
    :cond_3
    :try_start_2
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@5f
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@61
    invoke-interface {v7, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    goto :goto_2

    #@65
    .line 896
    :catch_0
    move-exception v4

    #@66
    .line 897
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "ActivityManager"

    #@69
    new-instance v10, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v11, "Failure sending service "

    #@71
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v10

    #@7b
    .line 898
    const-string/jumbo v11, " to connection "

    #@7e
    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v10

    #@82
    .line 898
    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@84
    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@87
    move-result-object v11

    #@88
    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    .line 899
    const-string/jumbo v11, " (in "

    #@8f
    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    .line 899
    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@95
    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@97
    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@99
    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    .line 899
    const-string/jumbo v11, ")"

    #@a0
    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v10

    #@a8
    invoke-static {v7, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ab
    goto :goto_2

    #@ac
    .line 907
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    #@ad
    .line 908
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 907
    throw v7

    #@b1
    .line 880
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "conni":I
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    #@b3
    goto :goto_0
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1807
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@2
    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    .line 1808
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@8
    .line 1809
    .local v0, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@a
    .line 1810
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/ArrayList;

    #@12
    .line 1811
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    #@14
    .line 1812
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 1813
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 1814
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1817
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@24
    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@27
    .line 1818
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@29
    if-eqz v6, :cond_1

    #@2b
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@2d
    if-eq v6, p3, :cond_1

    #@2f
    .line 1819
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@31
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@33
    if-eqz v6, :cond_1

    #@35
    .line 1820
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@37
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@39
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@3c
    .line 1823
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@3e
    if-eq v6, p2, :cond_3

    #@40
    .line 1824
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@42
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@44
    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@47
    .line 1825
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@49
    and-int/lit8 v6, v6, 0x8

    #@4b
    if-eqz v6, :cond_2

    #@4d
    .line 1826
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@4f
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    #@52
    .line 1828
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@54
    if-eqz v6, :cond_3

    #@56
    .line 1829
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@58
    const/4 v7, 0x1

    #@59
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@5c
    .line 1832
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@5e
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    #@64
    .line 1833
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_4

    #@66
    .line 1834
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    .line 1835
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_4

    #@6f
    .line 1836
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@71
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 1840
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@76
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@78
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    #@7a
    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@7c
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@7e
    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@80
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@82
    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@84
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;)V

    #@87
    .line 1842
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@89
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@8c
    move-result v6

    #@8d
    if-nez v6, :cond_5

    #@8f
    .line 1843
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@91
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@93
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@95
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 1846
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    #@9a
    if-nez v6, :cond_9

    #@9c
    .line 1849
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9e
    if-eqz v6, :cond_7

    #@a0
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a2
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@a4
    if-eqz v6, :cond_7

    #@a6
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@a8
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@aa
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@ad
    move-result v6

    #@ae
    if-nez v6, :cond_7

    #@b0
    .line 1850
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@b2
    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@b4
    .line 1849
    if-eqz v6, :cond_7

    #@b6
    .line 1852
    :try_start_0
    const-string/jumbo v6, "unbind"

    #@b9
    const/4 v7, 0x0

    #@ba
    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@bd
    .line 1853
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@bf
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c1
    if-eq v6, v7, :cond_6

    #@c3
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@c5
    and-int/lit8 v6, v6, 0x20

    #@c7
    if-nez v6, :cond_6

    #@c9
    .line 1854
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@cb
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@cd
    const/16 v7, 0xb

    #@cf
    if-gt v6, v7, :cond_6

    #@d1
    .line 1858
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@d3
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d5
    const/4 v8, 0x0

    #@d6
    const/4 v9, 0x0

    #@d7
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@da
    .line 1860
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@dc
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@de
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@e1
    .line 1861
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@e3
    const/4 v7, 0x0

    #@e4
    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@e6
    .line 1864
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@e8
    const/4 v7, 0x0

    #@e9
    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@eb
    .line 1865
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ed
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@ef
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@f1
    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@f3
    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@f6
    move-result-object v7

    #@f7
    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@fa
    .line 1872
    :cond_7
    :goto_0
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@fc
    and-int/lit8 v6, v6, 0x1

    #@fe
    if-eqz v6, :cond_9

    #@100
    .line 1873
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@103
    move-result v4

    #@104
    .line 1874
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_8

    #@106
    .line 1875
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@108
    if-eqz v6, :cond_8

    #@10a
    .line 1876
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@10c
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10e
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@110
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@113
    move-result v7

    #@114
    .line 1877
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@117
    move-result-wide v8

    #@118
    .line 1876
    const/4 v10, 0x0

    #@119
    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@11c
    .line 1880
    :cond_8
    const/4 v6, 0x1

    #@11d
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@120
    .line 1806
    .end local v4    # "hasAutoCreate":Z
    :cond_9
    return-void

    #@121
    .line 1866
    :catch_0
    move-exception v3

    #@122
    .line 1867
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ActivityManager"

    #@125
    new-instance v7, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v8, "Exception when unbinding service "

    #@12d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v7

    #@131
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v7

    #@137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v7

    #@13b
    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13e
    .line 1868
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@141
    goto :goto_0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2536
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 2537
    :cond_0
    return-void

    #@d
    .line 2539
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 2540
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@15
    .line 2541
    const/16 v4, 0xc

    #@17
    .line 2540
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 2542
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    .line 2543
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21
    .line 2544
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@23
    if-eqz v4, :cond_2

    #@25
    const-wide/16 v4, 0x4e20

    #@27
    add-long/2addr v4, v2

    #@28
    .line 2543
    :goto_0
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@2b
    .line 2535
    return-void

    #@2c
    .line 2544
    :cond_2
    const-wide/32 v4, 0x30d40

    #@2f
    add-long/2addr v4, v2

    #@30
    goto :goto_0
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 1886
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    .line 1887
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_4

    #@a
    .line 1888
    if-ne p2, v7, :cond_2

    #@c
    .line 1891
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@e
    .line 1892
    sparse-switch p4, :sswitch_data_0

    #@11
    .line 1931
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Unknown service start result: "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 1931
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 1896
    :sswitch_0
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@2e
    .line 1898
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@30
    .line 1934
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    #@32
    .line 1935
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@34
    .line 1953
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@37
    move-result-wide v2

    #@38
    .line 1954
    .local v2, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@3b
    .line 1955
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 1885
    .end local v2    # "origId":J
    :goto_2
    return-void

    #@3f
    .line 1903
    :sswitch_1
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@42
    .line 1904
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    #@45
    move-result v4

    #@46
    if-ne v4, p3, :cond_0

    #@48
    .line 1907
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@4a
    goto :goto_0

    #@4b
    .line 1915
    :sswitch_2
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@4e
    move-result-object v1

    #@4f
    .line 1916
    .local v1, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v1, :cond_0

    #@51
    .line 1917
    iput v5, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@53
    .line 1918
    iget v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@55
    add-int/lit8 v4, v4, 0x1

    #@57
    iput v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@59
    .line 1920
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@5b
    goto :goto_0

    #@5c
    .line 1927
    .end local v1    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@5f
    goto :goto_0

    #@60
    .line 1937
    :cond_2
    const/4 v4, 0x2

    #@61
    if-ne p2, v4, :cond_1

    #@63
    .line 1941
    if-nez v0, :cond_3

    #@65
    .line 1944
    const-string/jumbo v4, "ActivityManager"

    #@68
    new-instance v5, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v6, "Service done with onDestroy, but not inDestroying: "

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_1

    #@80
    .line 1946
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@82
    if-eq v4, v7, :cond_1

    #@84
    .line 1947
    const-string/jumbo v4, "ActivityManager"

    #@87
    new-instance v5, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v6, "Service done with onDestroy, but executeNesting="

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    .line 1948
    iget v6, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@95
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    .line 1948
    const-string/jumbo v6, ": "

    #@9c
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 1950
    iput v7, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@ad
    goto :goto_1

    #@ae
    .line 1957
    :cond_4
    const-string/jumbo v4, "ActivityManager"

    #@b1
    new-instance v5, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v6, "Done executing unknown service from pid "

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    .line 1958
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c0
    move-result v6

    #@c1
    .line 1957
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    goto/16 :goto_2

    #@ce
    .line 1892
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 22
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2489
    const/4 v7, 0x0

    #@1
    .line 2491
    .local v7, "anrMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v4

    #@6
    .line 2492
    :try_start_0
    move-object/from16 v0, p1

    #@8
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-nez v2, :cond_1

    #@16
    :cond_0
    monitor-exit v4

    #@17
    .line 2493
    return-void

    #@18
    .line 2495
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v14

    #@1c
    .line 2497
    .local v14, "now":J
    move-object/from16 v0, p1

    #@1e
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@20
    if-eqz v2, :cond_4

    #@22
    const/16 v2, 0x4e20

    #@24
    :goto_0
    int-to-long v2, v2

    #@25
    .line 2496
    sub-long v10, v14, v2

    #@27
    .line 2498
    .local v10, "maxTime":J
    const/16 v19, 0x0

    #@29
    .line 2499
    .local v19, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v12, 0x0

    #@2b
    .line 2500
    .local v12, "nextTime":J
    move-object/from16 v0, p1

    #@2d
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@2f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@32
    move-result v2

    #@33
    add-int/lit8 v8, v2, -0x1

    #@35
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    #@37
    .line 2501
    move-object/from16 v0, p1

    #@39
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@3b
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v17

    #@3f
    check-cast v17, Lcom/android/server/am/ServiceRecord;

    #@41
    .line 2502
    .local v17, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v17

    #@43
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@45
    cmp-long v2, v2, v10

    #@47
    if-gez v2, :cond_5

    #@49
    .line 2503
    move-object/from16 v19, v17

    #@4b
    .line 2510
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_2
    if-eqz v19, :cond_7

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@51
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_7

    #@5b
    .line 2511
    const-string/jumbo v2, "ActivityManager"

    #@5e
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "Timeout executing service: "

    #@66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    move-object/from16 v0, v19

    #@6c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 2512
    new-instance v18, Ljava/io/StringWriter;

    #@79
    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    #@7c
    .line 2513
    .local v18, "sw":Ljava/io/StringWriter;
    new-instance v16, Lcom/android/internal/util/FastPrintWriter;

    #@7e
    const/4 v2, 0x0

    #@7f
    const/16 v3, 0x400

    #@81
    move-object/from16 v0, v16

    #@83
    move-object/from16 v1, v18

    #@85
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@88
    .line 2514
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    #@8a
    move-object/from16 v1, v19

    #@8c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@8f
    .line 2515
    const-string/jumbo v2, "    "

    #@92
    move-object/from16 v0, v19

    #@94
    move-object/from16 v1, v16

    #@96
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@99
    .line 2516
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    #@9c
    .line 2517
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@a4
    .line 2518
    move-object/from16 v0, p0

    #@a6
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    #@ae
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b1
    .line 2519
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@b5
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    #@bb
    const-wide/32 v20, 0x6ddd00

    #@be
    move-wide/from16 v0, v20

    #@c0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c3
    .line 2520
    new-instance v2, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v3, "executing service "

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    move-object/from16 v0, v19

    #@d1
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@d3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@da
    move-result-object v7

    #@db
    .end local v7    # "anrMessage":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "sw":Ljava/io/StringWriter;
    :goto_2
    monitor-exit v4

    #@dc
    .line 2530
    if-eqz v7, :cond_3

    #@de
    .line 2531
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e2
    const/4 v4, 0x0

    #@e3
    const/4 v5, 0x0

    #@e4
    const/4 v6, 0x0

    #@e5
    move-object/from16 v3, p1

    #@e7
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    #@ea
    .line 2488
    :cond_3
    return-void

    #@eb
    .line 2497
    .end local v8    # "i":I
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .restart local v7    # "anrMessage":Ljava/lang/String;
    :cond_4
    const v2, 0x30d40

    #@ee
    goto/16 :goto_0

    #@f0
    .line 2506
    .restart local v8    # "i":I
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_2
    move-object/from16 v0, v17

    #@f2
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@f4
    cmp-long v2, v2, v12

    #@f6
    if-lez v2, :cond_6

    #@f8
    .line 2507
    move-object/from16 v0, v17

    #@fa
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@fc
    .line 2500
    :cond_6
    add-int/lit8 v8, v8, -0x1

    #@fe
    goto/16 :goto_1

    #@100
    .line 2522
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_7
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@104
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@106
    .line 2523
    const/16 v3, 0xc

    #@108
    .line 2522
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@10b
    move-result-object v9

    #@10c
    .line 2524
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@10e
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@110
    .line 2525
    move-object/from16 v0, p0

    #@112
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@114
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@116
    move-object/from16 v0, p1

    #@118
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@11a
    if-eqz v2, :cond_8

    #@11c
    .line 2526
    const-wide/16 v2, 0x4e20

    #@11e
    add-long/2addr v2, v12

    #@11f
    .line 2525
    :goto_3
    invoke-virtual {v5, v9, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@122
    goto :goto_2

    #@123
    .line 2491
    .end local v8    # "i":I
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    #@124
    monitor-exit v4

    #@125
    throw v2

    #@126
    .line 2526
    .restart local v8    # "i":I
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v14    # "now":J
    :cond_8
    const-wide/32 v2, 0x30d40

    #@129
    add-long/2addr v2, v12

    #@12a
    goto :goto_3
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z

    #@0
    .prologue
    .line 587
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 588
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 590
    .local v0, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    #@b
    move-result-object v2

    #@c
    .line 591
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_3

    #@e
    .line 592
    if-eqz p3, :cond_4

    #@10
    .line 593
    if-nez p4, :cond_0

    #@12
    .line 594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v5, "null notification"

    #@17
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 625
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    #@1c
    .line 626
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 625
    throw v4

    #@20
    .line 596
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@22
    if-eq v4, p3, :cond_1

    #@24
    .line 597
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@27
    .line 598
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@29
    .line 600
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    #@2b
    or-int/lit8 v4, v4, 0x40

    #@2d
    iput v4, p4, Landroid/app/Notification;->flags:I

    #@2f
    .line 601
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@31
    .line 602
    const/4 v4, 0x1

    #@32
    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@34
    .line 603
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    #@37
    .line 604
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 605
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3d
    const/4 v5, 0x1

    #@3e
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@41
    .line 607
    :cond_2
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    #@43
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 626
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 586
    return-void

    #@4e
    .line 609
    :cond_4
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@50
    if-eqz v4, :cond_5

    #@52
    .line 610
    const/4 v4, 0x0

    #@53
    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@55
    .line 611
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@57
    if-eqz v4, :cond_5

    #@59
    .line 612
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5b
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5d
    const/4 v6, 0x0

    #@5e
    const/4 v7, 0x0

    #@5f
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@62
    .line 613
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@64
    const/4 v5, 0x1

    #@65
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@68
    .line 616
    :cond_5
    if-eqz p5, :cond_6

    #@6a
    .line 617
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@6d
    .line 618
    const/4 v4, 0x0

    #@6e
    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@70
    .line 619
    const/4 v4, 0x0

    #@71
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@73
    goto :goto_0

    #@74
    .line 620
    :cond_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@78
    const/16 v5, 0x15

    #@7a
    if-lt v4, v5, :cond_3

    #@7c
    .line 621
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    goto :goto_0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 8
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 425
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    #@4
    move-result-object v2

    #@5
    .line 426
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    #@7
    .line 427
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@b
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@e
    move-result v3

    #@f
    iget-wide v4, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@11
    const/4 v6, 0x1

    #@12
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@15
    .line 429
    :cond_0
    iput-boolean v7, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@17
    .line 430
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@19
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@1c
    move-result-object v4

    #@1d
    monitor-enter v4

    #@1e
    .line 431
    :try_start_0
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@20
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v4

    #@24
    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    #@27
    move-result v3

    #@28
    invoke-direct {p0, p3, v3, p4, v7}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 434
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@2e
    .line 435
    new-instance v3, Landroid/content/ComponentName;

    #@30
    const-string/jumbo v4, "!!"

    #@33
    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    return-object v3

    #@37
    .line 430
    .end local v0    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3

    #@3a
    .line 438
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-boolean v3, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@3c
    if-eqz v3, :cond_4

    #@3e
    if-eqz p5, :cond_4

    #@40
    .line 439
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_3

    #@48
    const/4 v1, 0x1

    #@49
    .line 440
    .local v1, "first":Z
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@51
    move-result-wide v4

    #@52
    const-wide/16 v6, 0x3a98

    #@54
    add-long/2addr v4, v6

    #@55
    iput-wide v4, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@57
    .line 449
    if-eqz v1, :cond_2

    #@59
    .line 450
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    #@5c
    .line 456
    .end local v1    # "first":Z
    :cond_2
    :goto_1
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@5e
    return-object v3

    #@5f
    .line 439
    :cond_3
    const/4 v1, 0x0

    #@60
    .restart local v1    # "first":Z
    goto :goto_0

    #@61
    .line 452
    .end local v1    # "first":Z
    :cond_4
    if-eqz p4, :cond_2

    #@63
    .line 453
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@66
    goto :goto_1
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/ComponentName;
    .locals 20
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    if-eqz p1, :cond_2

    #@2
    .line 314
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@b
    move-result-object v17

    #@c
    .line 315
    .local v17, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_0

    #@e
    .line 316
    new-instance v2, Ljava/lang/SecurityException;

    #@10
    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unable to find app for caller "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 318
    const-string/jumbo v4, " (pid="

    #@25
    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2c
    move-result v4

    #@2d
    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 319
    const-string/jumbo v4, ") when starting service "

    #@34
    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 316
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 321
    :cond_0
    move-object/from16 v0, v17

    #@48
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@4a
    if-eqz v2, :cond_1

    #@4c
    const/4 v10, 0x1

    #@4d
    .line 329
    .end local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerFg":Z
    :goto_0
    const/4 v9, 0x1

    #@4e
    move-object/from16 v2, p0

    #@50
    move-object/from16 v3, p2

    #@52
    move-object/from16 v4, p3

    #@54
    move-object/from16 v5, p6

    #@56
    move/from16 v6, p4

    #@58
    move/from16 v7, p5

    #@5a
    move/from16 v8, p7

    #@5c
    .line 328
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@5f
    move-result-object v19

    #@60
    .line 330
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v19, :cond_3

    #@62
    .line 331
    const/4 v2, 0x0

    #@63
    return-object v2

    #@64
    .line 321
    .end local v10    # "callerFg":Z
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v10, 0x0

    #@65
    .restart local v10    # "callerFg":Z
    goto :goto_0

    #@66
    .line 323
    .end local v10    # "callerFg":Z
    .end local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v10, 0x1

    #@67
    .restart local v10    # "callerFg":Z
    goto :goto_0

    #@68
    .line 333
    .restart local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_3
    move-object/from16 v0, v19

    #@6a
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@6c
    if-nez v2, :cond_5

    #@6e
    .line 334
    new-instance v3, Landroid/content/ComponentName;

    #@70
    const-string/jumbo v4, "!"

    #@73
    move-object/from16 v0, v19

    #@75
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@77
    if-eqz v2, :cond_4

    #@79
    .line 335
    move-object/from16 v0, v19

    #@7b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@7d
    .line 334
    :goto_1
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@80
    return-object v3

    #@81
    .line 335
    :cond_4
    const-string/jumbo v2, "private to package"

    #@84
    goto :goto_1

    #@85
    .line 338
    :cond_5
    move-object/from16 v0, v19

    #@87
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@89
    .line 340
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8d
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    #@90
    move-result-object v2

    #@91
    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    #@93
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@96
    move-result v2

    #@97
    if-nez v2, :cond_6

    #@99
    .line 341
    const-string/jumbo v2, "ActivityManager"

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, "Trying to start service with non-existent user! "

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    iget v4, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    .line 342
    const/4 v2, 0x0

    #@b6
    return-object v2

    #@b7
    .line 345
    :cond_6
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@bb
    .line 346
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@bd
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@c0
    move-result v6

    #@c1
    iget v8, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    #@c3
    const/4 v7, 0x0

    #@c4
    move/from16 v3, p5

    #@c6
    move-object/from16 v5, p2

    #@c8
    .line 345
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;I)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@cb
    move-result-object v7

    #@cc
    .line 347
    .local v7, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    const/4 v2, 0x0

    #@cd
    move-object/from16 v0, p0

    #@cf
    move/from16 v1, p5

    #@d1
    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@d4
    move-result v2

    #@d5
    if-eqz v2, :cond_7

    #@d7
    .line 350
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@da
    move-result-wide v2

    #@db
    iput-wide v2, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@dd
    .line 351
    const/4 v2, 0x1

    #@de
    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@e0
    .line 352
    const/4 v2, 0x0

    #@e1
    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@e3
    .line 353
    iget-object v8, v14, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@e5
    new-instance v2, Lcom/android/server/am/ServiceRecord$StartItem;

    #@e7
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@ea
    move-result v5

    #@eb
    const/4 v4, 0x0

    #@ec
    move-object v3, v14

    #@ed
    move-object/from16 v6, p2

    #@ef
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@f2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f5
    .line 356
    iget v2, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@fc
    move-result-object v12

    #@fd
    .line 357
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v16, 0x0

    #@ff
    .line 358
    .local v16, "addToStarting":Z
    if-nez v10, :cond_b

    #@101
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@103
    if-nez v2, :cond_b

    #@105
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@109
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    #@10b
    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    #@10d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@110
    move-result-object v2

    #@111
    if-eqz v2, :cond_b

    #@113
    .line 359
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@117
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@119
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@11b
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@11d
    const/4 v5, 0x0

    #@11e
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@121
    move-result-object v18

    #@122
    .line 360
    .local v18, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v18, :cond_8

    #@124
    move-object/from16 v0, v18

    #@126
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@128
    const/16 v3, 0xb

    #@12a
    if-le v2, v3, :cond_c

    #@12c
    .line 373
    :cond_8
    iget-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@12e
    if-eqz v2, :cond_9

    #@130
    .line 377
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@132
    return-object v2

    #@133
    .line 379
    :cond_9
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@138
    move-result v2

    #@139
    move-object/from16 v0, p0

    #@13b
    iget v3, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@13d
    if-lt v2, v3, :cond_a

    #@13f
    .line 381
    const-string/jumbo v2, "ActivityManager"

    #@142
    new-instance v3, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v4, "Delaying start of: "

    #@14a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v3

    #@14e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v3

    #@156
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    .line 382
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@15b
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15e
    .line 383
    const/4 v2, 0x1

    #@15f
    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@161
    .line 384
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@163
    return-object v2

    #@164
    .line 387
    :cond_a
    const/16 v16, 0x1

    #@166
    .end local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    :goto_2
    move-object/from16 v11, p0

    #@168
    move-object/from16 v13, p2

    #@16a
    move v15, v10

    #@16b
    .line 420
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    #@16e
    move-result-object v2

    #@16f
    return-object v2

    #@170
    .line 388
    .restart local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_c
    move-object/from16 v0, v18

    #@172
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@174
    const/16 v3, 0xa

    #@176
    if-lt v2, v3, :cond_b

    #@178
    .line 392
    const/16 v16, 0x1

    #@17a
    goto :goto_2
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@5
    move-result-object v9

    #@6
    .line 486
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    #@8
    if-nez v9, :cond_0

    #@a
    .line 487
    new-instance v0, Ljava/lang/SecurityException;

    #@c
    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unable to find app for caller "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 489
    const-string/jumbo v2, " (pid="

    #@1f
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 489
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@26
    move-result v2

    #@27
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 490
    const-string/jumbo v2, ") when stopping service "

    #@2e
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 487
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 495
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v4

    #@42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v5

    #@46
    .line 494
    const/4 v3, 0x0

    #@47
    .line 495
    const/4 v7, 0x0

    #@48
    const/4 v8, 0x0

    #@49
    move-object v0, p0

    #@4a
    move-object v1, p2

    #@4b
    move-object/from16 v2, p3

    #@4d
    move/from16 v6, p4

    #@4f
    .line 494
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@52
    move-result-object v12

    #@53
    .line 496
    .local v12, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v12, :cond_2

    #@55
    .line 497
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@57
    if-eqz v0, :cond_1

    #@59
    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5c
    move-result-wide v10

    #@5d
    .line 500
    .local v10, "origId":J
    :try_start_0
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@5f
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 502
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 504
    const/4 v0, 0x1

    #@66
    return v0

    #@67
    .line 501
    :catchall_0
    move-exception v0

    #@68
    .line 502
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6b
    .line 501
    throw v0

    #@6c
    .line 506
    .end local v10    # "origId":J
    :cond_1
    const/4 v0, -0x1

    #@6d
    return v0

    #@6e
    .line 509
    :cond_2
    const/4 v0, 0x0

    #@6f
    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 11
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 540
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v5

    #@5
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    #@8
    move-result-object v1

    #@9
    .line 541
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_5

    #@b
    .line 542
    if-ltz p3, :cond_3

    #@d
    .line 546
    invoke-virtual {v1, p3, v10}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@10
    move-result-object v4

    #@11
    .line 547
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_1

    #@13
    .line 548
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    if-lez v5, :cond_1

    #@1b
    .line 549
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@23
    .line 550
    .local v0, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    #@26
    .line 551
    if-ne v0, v4, :cond_0

    #@28
    .line 557
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    #@2b
    move-result v5

    #@2c
    if-eq v5, p3, :cond_2

    #@2e
    .line 558
    return v10

    #@2f
    .line 561
    :cond_2
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v5

    #@35
    if-lez v5, :cond_3

    #@37
    .line 562
    const-string/jumbo v5, "ActivityManager"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "stopServiceToken startId "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 563
    const-string/jumbo v7, " is last, but have "

    #@4d
    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    .line 563
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v7

    #@57
    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 564
    const-string/jumbo v7, " remaining args"

    #@5e
    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 568
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@6b
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@6e
    move-result-object v6

    #@6f
    monitor-enter v6

    #@70
    .line 569
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@72
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@75
    monitor-exit v6

    #@76
    .line 571
    iput-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@78
    .line 572
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@7a
    if-eqz v5, :cond_4

    #@7c
    .line 573
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@7e
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@80
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@82
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@85
    move-result v6

    #@86
    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@89
    move-result-wide v8

    #@8a
    .line 573
    invoke-virtual {v5, v10, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@8d
    .line 576
    :cond_4
    iput-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@8f
    .line 577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@92
    move-result-wide v2

    #@93
    .line 578
    .local v2, "origId":J
    invoke-direct {p0, v1, v10, v10}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@96
    .line 579
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@99
    .line 580
    const/4 v5, 0x1

    #@9a
    return v5

    #@9b
    .line 568
    .end local v2    # "origId":J
    :catchall_0
    move-exception v5

    #@9c
    monitor-exit v6

    #@9d
    throw v5

    #@9e
    .line 582
    :cond_5
    return v10
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    #@0
    .prologue
    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 954
    .local v8, "origId":J
    if-eqz p1, :cond_2

    #@6
    .line 956
    :try_start_0
    new-instance v3, Landroid/content/Intent$FilterComparison;

    #@8
    invoke-direct {v3, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@b
    .line 957
    .local v3, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 962
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    .line 963
    .local v5, "inDestroying":Z
    if-eqz v0, :cond_1

    #@1b
    .line 964
    iget-object v7, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@20
    move-result v7

    #@21
    if-lez v7, :cond_0

    #@23
    if-eqz v5, :cond_3

    #@25
    .line 984
    :cond_0
    const/4 v7, 0x1

    #@26
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@28
    .line 988
    :cond_1
    :goto_0
    const/4 v7, 0x0

    #@29
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 991
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v5    # "inDestroying":Z
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 951
    return-void

    #@30
    .line 967
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "inDestroying":Z
    :cond_3
    const/4 v6, 0x0

    #@31
    .line 968
    .local v6, "inFg":Z
    :try_start_1
    iget-object v7, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@36
    move-result v7

    #@37
    add-int/lit8 v4, v7, -0x1

    #@39
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    #@3b
    .line 969
    iget-object v7, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@3d
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Lcom/android/server/am/AppBindRecord;

    #@43
    iget-object v1, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@45
    .line 970
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_5

    #@47
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    if-eqz v7, :cond_5

    #@4b
    .line 972
    const/4 v6, 0x1

    #@4c
    .line 977
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/4 v7, 0x1

    #@4d
    :try_start_2
    invoke-direct {p0, p1, v0, v6, v7}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_2
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 978
    :catch_0
    move-exception v2

    #@52
    .local v2, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_0

    #@53
    .line 968
    .end local v2    # "e":Landroid/os/TransactionTooLargeException;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    #@55
    goto :goto_1

    #@56
    .line 990
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "i":I
    .end local v5    # "inDestroying":Z
    .end local v6    # "inFg":Z
    :catchall_0
    move-exception v7

    #@57
    .line 991
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 990
    throw v7
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 10
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 913
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    .line 915
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/ArrayList;

    #@e
    .line 916
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_0

    #@10
    .line 917
    const-string/jumbo v5, "ActivityManager"

    #@13
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "Unbind failed: could not find connection for "

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    .line 918
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v7

    #@23
    .line 917
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 919
    return v8

    #@2f
    .line 922
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32
    move-result-wide v2

    #@33
    .line 924
    .local v2, "origId":J
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v5

    #@37
    if-lez v5, :cond_5

    #@39
    .line 925
    const/4 v5, 0x0

    #@3a
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    #@40
    .line 926
    .local v4, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v5, 0x0

    #@41
    const/4 v7, 0x0

    #@42
    invoke-virtual {p0, v4, v5, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    #@45
    .line 927
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v5

    #@49
    if-lez v5, :cond_2

    #@4b
    const/4 v5, 0x0

    #@4c
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    if-ne v5, v4, :cond_2

    #@52
    .line 929
    const-string/jumbo v5, "ActivityManager"

    #@55
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "Connection "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    const-string/jumbo v8, " not removed for binder "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 930
    const/4 v5, 0x0

    #@78
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7b
    .line 933
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@7d
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@7f
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@81
    if-eqz v5, :cond_1

    #@83
    .line 935
    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@85
    const/high16 v7, 0x8000000

    #@87
    and-int/2addr v5, v7

    #@88
    if-eqz v5, :cond_3

    #@8a
    .line 936
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@8c
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@8e
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@90
    const/4 v7, 0x1

    #@91
    iput-boolean v7, v5, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@93
    .line 937
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@95
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@97
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@99
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9b
    .line 938
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@9d
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@9f
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a1
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@a3
    if-nez v5, :cond_4

    #@a5
    .line 939
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@a7
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@a9
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ab
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@ad
    :goto_1
    const/4 v9, 0x0

    #@ae
    .line 937
    invoke-virtual {v7, v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@b1
    .line 941
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@b3
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@b5
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@b7
    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b9
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bc
    goto/16 :goto_0

    #@be
    .line 944
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    #@bf
    .line 945
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c2
    .line 944
    throw v5

    #@c3
    .restart local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    move v5, v6

    #@c4
    .line 938
    goto :goto_1

    #@c5
    .line 945
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c8
    .line 948
    return v6
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 643
    const/4 v3, 0x0

    #@2
    .line 644
    .local v3, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    #@3
    .end local v3    # "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@8
    move-result v4

    #@9
    if-ge v1, v4, :cond_4

    #@b
    .line 645
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@13
    .line 646
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@15
    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@17
    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@19
    .line 647
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    #@1b
    if-ne v2, p1, :cond_1

    #@1d
    .line 644
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 649
    :cond_1
    if-nez v3, :cond_3

    #@22
    .line 650
    new-instance v3, Landroid/util/ArraySet;

    #@24
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@27
    .line 654
    :cond_2
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 655
    const/4 v4, 0x0

    #@2b
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@2e
    goto :goto_1

    #@2f
    .line 651
    :cond_3
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    goto :goto_1

    #@36
    .line 642
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    return-void
.end method
