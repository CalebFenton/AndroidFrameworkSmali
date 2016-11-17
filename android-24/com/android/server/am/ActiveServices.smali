.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$1;,
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;
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

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_MU:Ljava/lang/String;

.field private static final TAG_SERVICE:Ljava/lang/String;

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String;


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
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 1
    .param p1, "callingUser"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .param p5, "permissionsReviewRequired"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@5
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "_MU"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lcom/android/server/am/ActiveServices;->TAG_MU:Ljava/lang/String;

    #@1d
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    sget-object v1, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    sput-object v0, Lcom/android/server/am/ActiveServices;->TAG_SERVICE:Ljava/lang/String;

    #@34
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    sget-object v1, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    sput-object v0, Lcom/android/server/am/ActiveServices;->TAG_SERVICE_EXECUTING:Ljava/lang/String;

    #@4b
    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@a
    .line 134
    new-instance v2, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@11
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@18
    .line 147
    new-instance v2, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1f
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    #@21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@26
    .line 155
    const/4 v2, 0x0

    #@27
    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@29
    .line 162
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
    .line 1947
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1948
    return-void

    #@7
    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1953
    return-void

    #@10
    .line 1956
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@13
    .line 1943
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 1965
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
    .line 1966
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/ArrayList;

    #@12
    .line 1967
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
    .line 1968
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    #@1f
    .line 1971
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v10, 0x1

    #@20
    iput-boolean v10, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    #@22
    .line 1973
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
    .line 1967
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 1974
    :catch_0
    move-exception v3

    #@2e
    .line 1975
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@30
    new-instance v10, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v12, "Failure disconnecting service "

    #@38
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@3e
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    .line 1976
    const-string/jumbo v12, " to connection "

    #@45
    .line 1975
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v12

    #@49
    .line 1976
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v10

    #@4d
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    #@4f
    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@51
    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@54
    move-result-object v10

    #@55
    .line 1975
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v10

    #@59
    .line 1977
    const-string/jumbo v12, " (in "

    #@5c
    .line 1975
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v12

    #@60
    .line 1977
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v10

    #@64
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    #@66
    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@68
    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@6a
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@6c
    .line 1975
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v10

    #@70
    .line 1977
    const-string/jumbo v12, ")"

    #@73
    .line 1975
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v10

    #@77
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v10

    #@7b
    invoke-static {v11, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    goto :goto_2

    #@7f
    .line 1965
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@81
    goto :goto_0

    #@82
    .line 1983
    .end local v0    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@84
    if-eqz v10, :cond_3

    #@86
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@88
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8a
    if-eqz v10, :cond_3

    #@8c
    .line 1984
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@8e
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@91
    move-result v10

    #@92
    add-int/lit8 v4, v10, -0x1

    #@94
    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_3

    #@96
    .line 1985
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@98
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9b
    move-result-object v5

    #@9c
    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    #@9e
    .line 1988
    .local v5, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@a0
    if-eqz v10, :cond_2

    #@a2
    .line 1990
    :try_start_1
    const-string/jumbo v10, "bring down unbind"

    #@a5
    const/4 v11, 0x0

    #@a6
    invoke-direct {p0, p1, v11, v10}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@a9
    .line 1991
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ab
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ad
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@b0
    .line 1992
    const/4 v10, 0x0

    #@b1
    iput-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@b3
    .line 1993
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b5
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b7
    .line 1994
    iget-object v11, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@b9
    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@bc
    move-result-object v11

    #@bd
    .line 1993
    invoke-interface {v10, p1, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@c0
    .line 1984
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, -0x1

    #@c2
    goto :goto_3

    #@c3
    .line 1995
    :catch_1
    move-exception v3

    #@c4
    .line 1996
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@c6
    new-instance v11, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v12, "Exception when unbinding service "

    #@ce
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v11

    #@d2
    .line 1997
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@d4
    .line 1996
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v11

    #@d8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v11

    #@dc
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@df
    .line 1998
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@e2
    goto :goto_4

    #@e3
    .line 2005
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e6
    move-result-wide v10

    #@e7
    iput-wide v10, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@e9
    .line 2011
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@eb
    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@ee
    move-result-object v7

    #@ef
    .line 2012
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@f1
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@f3
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 2013
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@f8
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@fa
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 2014
    const/4 v10, 0x0

    #@fe
    iput v10, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@100
    .line 2015
    const/4 v10, 0x0

    #@101
    const/4 v11, 0x1

    #@102
    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@105
    .line 2018
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@107
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@10a
    move-result v10

    #@10b
    add-int/lit8 v4, v10, -0x1

    #@10d
    .restart local v4    # "i":I
    :goto_5
    if-ltz v4, :cond_5

    #@10f
    .line 2019
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@111
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@114
    move-result-object v10

    #@115
    if-ne v10, p1, :cond_4

    #@117
    .line 2020
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@119
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11c
    .line 2018
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@11e
    goto :goto_5

    #@11f
    .line 2025
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@122
    .line 2026
    const/4 v10, 0x0

    #@123
    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@125
    .line 2027
    const/4 v10, 0x0

    #@126
    iput v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@128
    .line 2028
    const/4 v10, 0x0

    #@129
    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@12b
    .line 2031
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    #@12e
    .line 2032
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@130
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@133
    .line 2034
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@135
    if-eqz v10, :cond_7

    #@137
    .line 2035
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@139
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@13c
    move-result-object v11

    #@13d
    monitor-enter v11

    #@13e
    .line 2036
    :try_start_2
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@140
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@143
    monitor-exit v11

    #@144
    .line 2038
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@146
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@148
    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@14b
    .line 2039
    iget-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@14d
    if-eqz v10, :cond_6

    #@14f
    .line 2040
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@151
    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    #@154
    .line 2042
    :cond_6
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@156
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@158
    if-eqz v10, :cond_7

    #@15a
    .line 2043
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@15c
    const/4 v11, 0x0

    #@15d
    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@160
    .line 2045
    :try_start_3
    const-string/jumbo v10, "destroy"

    #@163
    const/4 v11, 0x0

    #@164
    invoke-direct {p0, p1, v11, v10}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@167
    .line 2046
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@169
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16c
    .line 2047
    const/4 v10, 0x1

    #@16d
    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@16f
    .line 2048
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@171
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@173
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@176
    .line 2049
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@178
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@17a
    invoke-interface {v10, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@17d
    .line 2064
    :cond_7
    :goto_6
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@17f
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@182
    move-result v10

    #@183
    if-lez v10, :cond_8

    #@185
    .line 2065
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@187
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@18a
    .line 2068
    :cond_8
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@18c
    instance-of v10, v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@18e
    if-eqz v10, :cond_9

    #@190
    .line 2069
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@192
    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@194
    const/4 v11, 0x0

    #@195
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    #@198
    .line 2072
    :cond_9
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@19a
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@19c
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@19f
    move-result v6

    #@1a0
    .line 2073
    .local v6, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1a3
    move-result-wide v8

    #@1a4
    .line 2074
    .local v8, "now":J
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1a6
    if-eqz v10, :cond_a

    #@1a8
    .line 2075
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1aa
    const/4 v11, 0x0

    #@1ab
    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@1ae
    .line 2076
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1b0
    const/4 v11, 0x0

    #@1b1
    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@1b4
    .line 2077
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@1b6
    if-nez v10, :cond_a

    #@1b8
    .line 2078
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1ba
    const/4 v11, 0x0

    #@1bb
    invoke-virtual {v10, p1, v11}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@1be
    .line 2079
    const/4 v10, 0x0

    #@1bf
    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1c1
    .line 2083
    :cond_a
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@1c4
    .line 1959
    return-void

    #@1c5
    .line 2035
    .end local v6    # "memFactor":I
    .end local v8    # "now":J
    :catchall_0
    move-exception v10

    #@1c6
    monitor-exit v11

    #@1c7
    throw v10

    #@1c8
    .line 2050
    :catch_2
    move-exception v3

    #@1c9
    .line 2051
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@1cb
    new-instance v11, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v12, "Exception when destroying service "

    #@1d3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v11

    #@1d7
    .line 2052
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@1d9
    .line 2051
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v11

    #@1dd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v11

    #@1e1
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e4
    .line 2053
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@1e7
    goto :goto_6
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .param p5, "permissionsReviewRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 1640
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
    .line 1641
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
    .line 1642
    const/4 v4, 0x0

    #@19
    return-object v4

    #@1a
    .line 1645
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
    .line 1647
    const/4 v4, 0x0

    #@27
    return-object v4

    #@28
    .line 1654
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
    .line 1655
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    #@37
    .line 1656
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@3a
    .line 1660
    :cond_2
    move-object/from16 v0, p1

    #@3c
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@3e
    if-eqz v4, :cond_3

    #@40
    .line 1662
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
    .line 1663
    const/4 v4, 0x0

    #@52
    move-object/from16 v0, p1

    #@54
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@56
    .line 1668
    :cond_3
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@5c
    move-object/from16 v0, p1

    #@5e
    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@60
    invoke-virtual {v4, v6}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    #@63
    move-result v4

    #@64
    if-nez v4, :cond_4

    #@66
    .line 1669
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
    .line 1670
    move-object/from16 v0, p1

    #@74
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 1670
    const-string/jumbo v6, "/"

    #@7f
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 1671
    move-object/from16 v0, p1

    #@85
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@87
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@89
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 1671
    const-string/jumbo v6, " for service "

    #@90
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 1672
    move-object/from16 v0, p1

    #@96
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@98
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@9b
    move-result-object v6

    #@9c
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 1672
    const-string/jumbo v6, ": user "

    #@a3
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    .line 1672
    move-object/from16 v0, p1

    #@a9
    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@ab
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 1672
    const-string/jumbo v6, " is stopped"

    #@b2
    .line 1669
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v18

    #@ba
    .line 1673
    .local v18, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@bc
    move-object/from16 v0, v18

    #@be
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 1674
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@c4
    .line 1675
    return-object v18

    #@c5
    .line 1680
    .end local v18    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@c8
    move-result-object v4

    #@c9
    .line 1681
    move-object/from16 v0, p1

    #@cb
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@cd
    move-object/from16 v0, p1

    #@cf
    iget v7, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@d1
    const/4 v8, 0x0

    #@d2
    .line 1680
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d5
    .line 1688
    :goto_0
    move-object/from16 v0, p1

    #@d7
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d9
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@db
    and-int/lit8 v4, v4, 0x2

    #@dd
    if-eqz v4, :cond_5

    #@df
    const/4 v12, 0x1

    #@e0
    .line 1689
    .local v12, "isolated":Z
    :goto_1
    move-object/from16 v0, p1

    #@e2
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@e4
    .line 1692
    .local v5, "procName":Ljava/lang/String;
    if-nez v12, :cond_a

    #@e6
    .line 1693
    move-object/from16 v0, p0

    #@e8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ea
    move-object/from16 v0, p1

    #@ec
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ee
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@f0
    const/4 v7, 0x0

    #@f1
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@f4
    move-result-object v14

    #@f5
    .line 1696
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_6

    #@f7
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@f9
    if-eqz v4, :cond_6

    #@fb
    .line 1698
    :try_start_1
    move-object/from16 v0, p1

    #@fd
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ff
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@101
    move-object/from16 v0, p1

    #@103
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@105
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10b
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@10d
    invoke-virtual {v14, v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@110
    .line 1699
    move-object/from16 v0, p0

    #@112
    move-object/from16 v1, p1

    #@114
    move/from16 v2, p3

    #@116
    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@119
    .line 1700
    const/4 v4, 0x0

    #@11a
    return-object v4

    #@11b
    .line 1683
    .end local v5    # "procName":Ljava/lang/String;
    .end local v12    # "isolated":Z
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v17

    #@11c
    .line 1684
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@11e
    new-instance v6, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v7, "Failed trying to unstop package "

    #@126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v6

    #@12a
    .line 1685
    move-object/from16 v0, p1

    #@12c
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@12e
    .line 1684
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v6

    #@132
    .line 1685
    const-string/jumbo v7, ": "

    #@135
    .line 1684
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v6

    #@139
    move-object/from16 v0, v17

    #@13b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v6

    #@13f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v6

    #@143
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    goto :goto_0

    #@147
    .line 1688
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    const/4 v12, 0x0

    #@148
    .restart local v12    # "isolated":Z
    goto :goto_1

    #@149
    .line 1703
    .restart local v5    # "procName":Ljava/lang/String;
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v15

    #@14a
    .line 1704
    .local v15, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@14c
    new-instance v6, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v7, "Exception when starting service "

    #@154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v6

    #@158
    move-object/from16 v0, p1

    #@15a
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@15c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v6

    #@160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v6

    #@164
    invoke-static {v4, v6, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@167
    .line 1722
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    if-nez v14, :cond_7

    #@169
    if-eqz p5, :cond_b

    #@16b
    .line 1738
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    #@16d
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@16f
    move-object/from16 v0, p1

    #@171
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@174
    move-result v4

    #@175
    if-nez v4, :cond_8

    #@177
    .line 1739
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@17b
    move-object/from16 v0, p1

    #@17d
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@180
    .line 1742
    :cond_8
    move-object/from16 v0, p1

    #@182
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@184
    if-eqz v4, :cond_9

    #@186
    .line 1744
    const/4 v4, 0x0

    #@187
    move-object/from16 v0, p1

    #@189
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@18b
    .line 1745
    move-object/from16 v0, p1

    #@18d
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@18f
    if-eqz v4, :cond_9

    #@191
    .line 1748
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@194
    .line 1752
    :cond_9
    const/4 v4, 0x0

    #@195
    return-object v4

    #@196
    .line 1701
    :catch_2
    move-exception v16

    #@197
    .line 1702
    .local v16, "e":Landroid/os/TransactionTooLargeException;
    throw v16

    #@198
    .line 1717
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "e":Landroid/os/TransactionTooLargeException;
    :cond_a
    move-object/from16 v0, p1

    #@19a
    iget-object v14, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@19c
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_2

    #@19d
    .line 1723
    :cond_b
    move-object/from16 v0, p0

    #@19f
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1a5
    .line 1724
    const-string/jumbo v9, "service"

    #@1a8
    move-object/from16 v0, p1

    #@1aa
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1ac
    .line 1723
    const/4 v7, 0x1

    #@1ad
    .line 1724
    const/4 v11, 0x0

    #@1ae
    const/4 v13, 0x0

    #@1af
    move/from16 v8, p2

    #@1b1
    .line 1723
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@1b4
    move-result-object v14

    #@1b5
    if-nez v14, :cond_c

    #@1b7
    .line 1725
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1bc
    const-string/jumbo v6, "Unable to launch app "

    #@1bf
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v4

    #@1c3
    .line 1726
    move-object/from16 v0, p1

    #@1c5
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1c7
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1c9
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v4

    #@1cd
    .line 1726
    const-string/jumbo v6, "/"

    #@1d0
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v4

    #@1d4
    .line 1727
    move-object/from16 v0, p1

    #@1d6
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1d8
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1da
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v4

    #@1de
    .line 1727
    const-string/jumbo v6, " for service "

    #@1e1
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v4

    #@1e5
    .line 1728
    move-object/from16 v0, p1

    #@1e7
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@1e9
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@1ec
    move-result-object v6

    #@1ed
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v4

    #@1f1
    .line 1728
    const-string/jumbo v6, ": process is bad"

    #@1f4
    .line 1725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v4

    #@1f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v18

    #@1fc
    .line 1729
    .restart local v18    # "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@1fe
    move-object/from16 v0, v18

    #@200
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@203
    .line 1730
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@206
    .line 1731
    return-object v18

    #@207
    .line 1733
    .end local v18    # "msg":Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_7

    #@209
    .line 1734
    move-object/from16 v0, p1

    #@20b
    iput-object v14, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@20d
    goto/16 :goto_3

    #@20f
    .line 1682
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
    .line 1399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 1400
    .local v0, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@7
    if-nez v3, :cond_2

    #@9
    .line 1401
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@b
    .line 1402
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    #@e
    move-result-object v2

    #@f
    .line 1403
    .local v2, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v2, :cond_0

    #@11
    .line 1404
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@15
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v5, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@1c
    .line 1406
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1407
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@22
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@24
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@27
    .line 1408
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@29
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@2b
    or-int/2addr v4, p2

    #@2c
    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@2e
    .line 1409
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
    .line 1410
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3a
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    #@3d
    .line 1417
    .end local v2    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@3f
    or-int/2addr v3, p2

    #@40
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@42
    .line 1418
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@44
    add-int/lit8 v3, v3, 0x1

    #@46
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@48
    .line 1419
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@4a
    .line 1394
    return-void

    #@4b
    .line 1413
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
    .line 1414
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@59
    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@5b
    .line 1415
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
    .line 1616
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1619
    const/4 v1, 0x0

    #@7
    .line 1620
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
    .line 1621
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1b
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 1622
    const/4 v1, 0x1

    #@20
    .line 1626
    :cond_0
    if-nez v1, :cond_1

    #@22
    .line 1627
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@24
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@26
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@2b
    move-result v3

    #@2c
    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    .line 1627
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    #@33
    .line 1629
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@35
    .line 1615
    .end local v0    # "i":I
    .end local v1    # "stillTracking":Z
    :cond_1
    return-void

    #@36
    .line 1620
    .restart local v0    # "i":I
    .restart local v1    # "stillTracking":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .param p5, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2396
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    #@1
    .line 2397
    .local v0, "didSomething":Z
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    #@4
    move-result v4

    #@5
    add-int/lit8 v1, v4, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    #@9
    .line 2398
    invoke-virtual {p6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@f
    .line 2399
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_1

    #@11
    .line 2400
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 2401
    if-eqz p2, :cond_2

    #@1b
    .line 2402
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    .line 2403
    .local v2, "sameComponent":Z
    :goto_1
    if-eqz v2, :cond_0

    #@27
    .line 2404
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@29
    if-eqz v4, :cond_4

    #@2b
    if-nez p3, :cond_4

    #@2d
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2f
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 2397
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@35
    goto :goto_0

    #@36
    .line 2399
    .end local v2    # "sameComponent":Z
    :cond_1
    const/4 v2, 0x1

    #@37
    goto :goto_1

    #@38
    .line 2401
    :cond_2
    const/4 v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2400
    :cond_3
    const/4 v2, 0x0

    #@3b
    goto :goto_1

    #@3c
    .line 2405
    .restart local v2    # "sameComponent":Z
    :cond_4
    if-nez p4, :cond_5

    #@3e
    .line 2406
    const/4 v4, 0x1

    #@3f
    return v4

    #@40
    .line 2408
    :cond_5
    const/4 v0, 0x1

    #@41
    .line 2409
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@43
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "  Force stopping service "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 2410
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5c
    if-eqz v4, :cond_6

    #@5e
    .line 2411
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@60
    iput-boolean p5, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@62
    .line 2412
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@64
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@66
    if-nez v4, :cond_6

    #@68
    .line 2413
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6a
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@6c
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@6f
    .line 2414
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@71
    if-eqz v4, :cond_6

    #@73
    .line 2415
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@75
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    #@78
    .line 2419
    :cond_6
    const/4 v4, 0x0

    #@79
    iput-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7b
    .line 2420
    const/4 v4, 0x0

    #@7c
    iput-object v4, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@7e
    .line 2421
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@80
    if-nez v4, :cond_7

    #@82
    .line 2422
    new-instance v4, Ljava/util/ArrayList;

    #@84
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@87
    iput-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@89
    .line 2424
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    goto :goto_2

    #@8f
    .line 2427
    .end local v2    # "sameComponent":Z
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
    .line 3332
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
    .line 3333
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16
    monitor-enter v5

    #@17
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1a
    .line 3334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v4, "SERVICE "

    #@20
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 3335
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@25
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    const-string/jumbo v4, " "

    #@2b
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 3336
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 3337
    const-string/jumbo v4, " pid="

    #@3c
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 3338
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@41
    if-eqz v4, :cond_2

    #@43
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@45
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@47
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    #@4a
    .line 3340
    :goto_0
    if-eqz p6, :cond_0

    #@4c
    .line 3341
    invoke-virtual {p4, p3, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    :cond_0
    monitor-exit v5

    #@50
    .line 3333
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@53
    .line 3344
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@55
    if-eqz v4, :cond_1

    #@57
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@59
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5b
    if-eqz v4, :cond_1

    #@5d
    .line 3345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string/jumbo v4, "  Client:"

    #@63
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 3346
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    #@69
    .line 3348
    :try_start_1
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    #@6b
    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@6e
    .line 3350
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@70
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@72
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@79
    move-result-object v5

    #@7a
    invoke-interface {v4, v5, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@7d
    .line 3351
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    const-string/jumbo v5, "    "

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@94
    .line 3352
    invoke-virtual {v3, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@97
    .line 3354
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@9a
    .line 3331
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    #@9b
    .line 3339
    :cond_2
    :try_start_4
    const-string/jumbo v4, "(not running)"

    #@9e
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a1
    goto :goto_0

    #@a2
    .line 3333
    :catchall_0
    move-exception v4

    #@a3
    monitor-exit v5

    #@a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a7
    throw v4

    #@a8
    .line 3353
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v4

    #@a9
    .line 3354
    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@ac
    .line 3353
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@ad
    .line 3356
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    #@ae
    .line 3357
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    const-string/jumbo v5, "    Failure while dumping the service: "

    #@ba
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c9
    goto :goto_1

    #@ca
    .line 3358
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@cb
    .line 3359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    const-string/jumbo v5, "    Got a RemoteException while dumping the service"

    #@d7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2
    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1216
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    #@3
    move-result-object v0

    #@4
    .line 1217
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

.method private foo()V
    .locals 0

    #@0
    .prologue
    .line 1079
    return-void
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
    .line 1927
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1928
    return v1

    #@6
    .line 1932
    :cond_0
    if-nez p2, :cond_1

    #@8
    .line 1933
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@b
    move-result p3

    #@c
    .line 1935
    :cond_1
    if-eqz p3, :cond_2

    #@e
    .line 1936
    return v1

    #@f
    .line 1939
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
    .line 1767
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1768
    new-instance v0, Landroid/os/RemoteException;

    #@9
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1773
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f
    .line 1774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@15
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@17
    .line 1776
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@19
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1c
    move-result v9

    #@1d
    .line 1777
    .local v9, "newService":Z
    const-string/jumbo v0, "create"

    #@20
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@23
    .line 1778
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@25
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@28
    .line 1779
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@2d
    .line 1781
    const/4 v6, 0x0

    #@2e
    .line 1790
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
    .line 1791
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
    .line 1793
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3d
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3f
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@41
    .line 1794
    const/4 v3, 0x1

    #@42
    .line 1793
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    #@45
    .line 1795
    const/16 v0, 0xa

    #@47
    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@4a
    .line 1796
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4c
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4e
    .line 1797
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@50
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@52
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@54
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@57
    move-result-object v3

    #@58
    .line 1798
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@5a
    .line 1796
    invoke-interface {v0, p1, v1, v3, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@5d
    .line 1799
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .line 1800
    const/4 v6, 0x1

    #@61
    .line 1806
    if-nez v6, :cond_2

    #@63
    .line 1808
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    .line 1809
    .local v8, "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@6c
    .line 1812
    if-eqz v9, :cond_1

    #@6e
    .line 1813
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@70
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@73
    .line 1814
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@75
    .line 1818
    :cond_1
    if-nez v8, :cond_2

    #@77
    .line 1819
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@7a
    .line 1824
    .end local v8    # "inDestroying":Z
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@7c
    if-eqz v0, :cond_3

    #@7e
    .line 1825
    iput-boolean v11, p2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@80
    .line 1828
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    #@83
    .line 1830
    invoke-direct {p0, p2, v4, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@86
    .line 1835
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@88
    if-eqz v0, :cond_4

    #@8a
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@8c
    if-eqz v0, :cond_4

    #@8e
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v0

    #@94
    if-nez v0, :cond_4

    #@96
    .line 1836
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@98
    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@9a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@9d
    move-result v3

    #@9e
    move-object v1, p1

    #@9f
    move-object v5, v4

    #@a0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@a3
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a6
    .line 1840
    :cond_4
    invoke-direct {p0, p1, p3, v11}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@a9
    .line 1842
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@ab
    if-eqz v0, :cond_5

    #@ad
    .line 1844
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@af
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@b2
    move-result-object v0

    #@b3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@b5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b8
    .line 1845
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@ba
    .line 1848
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@bc
    if-eqz v0, :cond_6

    #@be
    .line 1850
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@c0
    .line 1851
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@c2
    if-eqz v0, :cond_6

    #@c4
    .line 1854
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@c7
    .line 1766
    :cond_6
    return-void

    #@c8
    .line 1790
    :catchall_0
    move-exception v0

    #@c9
    :try_start_3
    monitor-exit v1

    #@ca
    throw v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@cb
    .line 1801
    :catch_0
    move-exception v7

    #@cc
    .line 1802
    .local v7, "e":Landroid/os/DeadObjectException;
    :try_start_4
    sget-object v0, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@ce
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v3, "Application dead when creating service "

    #@d6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@e7
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    #@ea
    .line 1804
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@eb
    .line 1805
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :catchall_1
    move-exception v0

    #@ec
    .line 1806
    if-nez v6, :cond_8

    #@ee
    .line 1808
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@f0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f3
    move-result v8

    #@f4
    .line 1809
    .restart local v8    # "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@f7
    .line 1812
    if-eqz v9, :cond_7

    #@f9
    .line 1813
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@fb
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@fe
    .line 1814
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@100
    .line 1818
    :cond_7
    if-nez v8, :cond_8

    #@102
    .line 1819
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@105
    .line 1805
    .end local v8    # "inDestroying":Z
    :cond_8
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
    .line 1424
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
    .line 1426
    :cond_0
    return v6

    #@d
    .line 1428
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
    .line 1430
    :try_start_0
    const-string/jumbo v3, "bind"

    #@1e
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@21
    .line 1431
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@23
    const/16 v4, 0xa

    #@25
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@28
    .line 1432
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
    .line 1433
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@36
    .line 1432
    invoke-interface {v3, p1, v4, p4, v5}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    #@39
    .line 1434
    if-nez p4, :cond_3

    #@3b
    .line 1435
    const/4 v3, 0x1

    #@3c
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@3e
    .line 1437
    :cond_3
    const/4 v3, 0x1

    #@3f
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@41
    .line 1438
    const/4 v3, 0x0

    #@42
    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 1453
    :cond_4
    return v7

    #@45
    .line 1445
    :catch_0
    move-exception v0

    #@46
    .line 1448
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    .line 1449
    .local v2, "inDestroying":Z
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@4f
    .line 1450
    return v6

    #@50
    .line 1439
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "inDestroying":Z
    :catch_1
    move-exception v1

    #@51
    .line 1442
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    .line 1443
    .restart local v2    # "inDestroying":Z
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@5a
    .line 1444
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
    .line 1757
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
    .line 1758
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 1759
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1756
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    return-void

    #@1a
    .line 1757
    .restart local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z
    .locals 15
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "callerFg"    # Z
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    #@5
    move-result-object v1

    #@6
    .line 459
    move-object/from16 v0, p1

    #@8
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@a
    move-object/from16 v0, p1

    #@c
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@e
    .line 458
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 462
    if-nez p5, :cond_0

    #@16
    .line 463
    sget-object v1, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "u"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    move-object/from16 v0, p1

    #@26
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " Starting a service in package"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 464
    move-object/from16 v0, p1

    #@35
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@37
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 464
    const-string/jumbo v3, " requires a permissions review"

    #@3e
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 465
    const/4 v1, 0x0

    #@4a
    return v1

    #@4b
    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4d
    .line 470
    const/4 v2, 0x1

    #@4e
    new-array v9, v2, [Landroid/content/Intent;

    #@50
    const/4 v2, 0x0

    #@51
    aput-object p4, v9, v2

    #@53
    .line 471
    const/4 v2, 0x1

    #@54
    new-array v10, v2, [Ljava/lang/String;

    #@56
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@58
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5d
    move-result-object v2

    #@5e
    move-object/from16 v0, p4

    #@60
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    const/4 v3, 0x0

    #@65
    aput-object v2, v10, v3

    #@67
    .line 469
    const/4 v2, 0x4

    #@68
    .line 470
    const/4 v6, 0x0

    #@69
    const/4 v7, 0x0

    #@6a
    const/4 v8, 0x0

    #@6b
    .line 472
    const/high16 v11, 0x54000000

    #@6d
    .line 473
    const/4 v12, 0x0

    #@6e
    move-object/from16 v3, p2

    #@70
    move/from16 v4, p3

    #@72
    move/from16 v5, p6

    #@74
    .line 468
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@77
    move-result-object v14

    #@78
    .line 475
    .local v14, "target":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/Intent;

    #@7a
    const-string/jumbo v1, "android.intent.action.REVIEW_PERMISSIONS"

    #@7d
    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@80
    .line 476
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    #@82
    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@85
    .line 478
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    #@88
    move-object/from16 v0, p1

    #@8a
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@8c
    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8f
    .line 479
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@92
    new-instance v2, Landroid/content/IntentSender;

    #@94
    invoke-direct {v2, v14}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@97
    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@9a
    .line 486
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9c
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@9e
    new-instance v2, Lcom/android/server/am/ActiveServices$2;

    #@a0
    move/from16 v0, p6

    #@a2
    invoke-direct {v2, p0, v13, v0}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    #@a5
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@a8
    .line 493
    const/4 v1, 0x0

    #@a9
    return v1

    #@aa
    .line 496
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v1, 0x1

    #@ab
    return v1
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 30
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "createIfNeeded"    # Z
    .param p8, "callingFromFg"    # Z
    .param p9, "isBindExternal"    # Z

    #@0
    .prologue
    .line 1247
    const/16 v25, 0x0

    #@2
    .line 1251
    .local v25, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@8
    .line 1252
    const-string/jumbo v9, "service"

    #@b
    .line 1251
    const/4 v7, 0x0

    #@c
    .line 1252
    const/4 v8, 0x1

    #@d
    const/4 v10, 0x0

    #@e
    move/from16 v4, p4

    #@10
    move/from16 v5, p5

    #@12
    move/from16 v6, p6

    #@14
    .line 1251
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result p6

    #@18
    .line 1254
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, p6

    #@1c
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@1f
    move-result-object v28

    #@20
    .line 1255
    .local v28, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@23
    move-result-object v19

    #@24
    .line 1256
    .local v19, "comp":Landroid/content/ComponentName;
    if-eqz v19, :cond_17

    #@26
    .line 1257
    move-object/from16 v0, v28

    #@28
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@2a
    move-object/from16 v0, v19

    #@2c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@32
    .line 1259
    .end local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_0

    #@34
    if-eqz p9, :cond_2

    #@36
    .line 1263
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    #@38
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3a
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@3c
    and-int/lit8 v4, v4, 0x4

    #@3e
    if-eqz v4, :cond_1

    #@40
    .line 1264
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@42
    move-object/from16 v0, p3

    #@44
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 1269
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    :goto_2
    if-nez v3, :cond_6

    #@4c
    .line 1272
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4f
    move-result-object v4

    #@50
    .line 1273
    const v9, 0x10000400

    #@53
    .line 1272
    move-object/from16 v0, p1

    #@55
    move-object/from16 v1, p2

    #@57
    move/from16 v2, p6

    #@59
    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@5c
    move-result-object v26

    #@5d
    .line 1277
    .local v26, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v26, :cond_4

    #@5f
    move-object/from16 v0, v26

    #@61
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@63
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v27, v8

    #@65
    .line 1278
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v27, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_3
    if-nez v27, :cond_5

    #@67
    .line 1279
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG_SERVICE:Ljava/lang/String;

    #@69
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v11, "Unable to start service "

    #@71
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    const-string/jumbo v11, " U="

    #@7e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    move/from16 v0, p6

    #@84
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    .line 1280
    const-string/jumbo v11, ": not found"

    #@8b
    .line 1279
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    .line 1281
    const/4 v4, 0x0

    #@97
    return-object v4

    #@98
    .line 1260
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2
    new-instance v7, Landroid/content/Intent$FilterComparison;

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9f
    .line 1261
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v28

    #@a1
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@a3
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    move-result-object v3

    #@a7
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@a9
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_1

    #@aa
    .line 1267
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_3
    const/4 v3, 0x0

    #@ab
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_2

    #@ac
    .line 1277
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v8, 0x0

    #@ad
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v27, v8

    #@af
    .restart local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_3

    #@b0
    .line 1283
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    #@b2
    .line 1284
    move-object/from16 v0, v27

    #@b4
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b6
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b8
    move-object/from16 v0, v27

    #@ba
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@bc
    .line 1283
    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@bf
    .line 1285
    .local v6, "name":Landroid/content/ComponentName;
    move-object/from16 v0, v27

    #@c1
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@c3
    and-int/lit8 v4, v4, 0x4

    #@c5
    if-eqz v4, :cond_e

    #@c7
    .line 1286
    if-eqz p9, :cond_d

    #@c9
    .line 1287
    move-object/from16 v0, v27

    #@cb
    iget-boolean v4, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    #@cd
    if-nez v4, :cond_7

    #@cf
    .line 1288
    new-instance v4, Ljava/lang/SecurityException;

    #@d1
    new-instance v9, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v11, "BIND_EXTERNAL_SERVICE failed, "

    #@d9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    .line 1289
    const-string/jumbo v11, " is not exported"

    #@e4
    .line 1288
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v9

    #@ec
    invoke-direct {v4, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ef
    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f0
    .line 1352
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v20

    #@f1
    .line 1356
    :cond_6
    :goto_4
    if-eqz v3, :cond_14

    #@f3
    .line 1357
    move-object/from16 v0, p0

    #@f5
    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@f7
    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@f9
    .line 1358
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@fb
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fd
    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@ff
    move/from16 v16, v0

    #@101
    move/from16 v13, p4

    #@103
    move/from16 v14, p5

    #@105
    .line 1357
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@108
    move-result v4

    #@109
    if-eqz v4, :cond_11

    #@10b
    .line 1360
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@10d
    if-nez v4, :cond_10

    #@10f
    .line 1361
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@111
    new-instance v9, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v11, "Permission Denial: Accessing service "

    #@119
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@11f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    .line 1362
    const-string/jumbo v11, " from pid="

    #@126
    .line 1361
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v9

    #@12a
    move/from16 v0, p4

    #@12c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v9

    #@130
    .line 1363
    const-string/jumbo v11, ", uid="

    #@133
    .line 1361
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    move/from16 v0, p5

    #@139
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v9

    #@13d
    .line 1364
    const-string/jumbo v11, " that is not exported from uid "

    #@140
    .line 1361
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v9

    #@144
    .line 1364
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@146
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@148
    .line 1361
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v9

    #@150
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@153
    .line 1365
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@155
    new-instance v9, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v11, "not exported from uid "

    #@15d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v9

    #@161
    .line 1366
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@163
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@165
    .line 1365
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@168
    move-result-object v9

    #@169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v9

    #@16d
    const/4 v11, 0x0

    #@16e
    move-object/from16 v0, p0

    #@170
    invoke-direct {v4, v0, v11, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@173
    return-object v4

    #@174
    .line 1291
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_7
    :try_start_2
    move-object/from16 v0, v27

    #@176
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@178
    and-int/lit8 v4, v4, 0x2

    #@17a
    if-nez v4, :cond_8

    #@17c
    .line 1292
    new-instance v4, Ljava/lang/SecurityException;

    #@17e
    new-instance v9, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v11, "BIND_EXTERNAL_SERVICE failed, "

    #@186
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v9

    #@18a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v9

    #@18e
    .line 1293
    const-string/jumbo v11, " is not an isolatedProcess"

    #@191
    .line 1292
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v9

    #@195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v9

    #@199
    invoke-direct {v4, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@19c
    throw v4

    #@19d
    .line 1296
    :cond_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1a0
    move-result-object v4

    #@1a1
    .line 1297
    const/16 v9, 0x400

    #@1a3
    .line 1296
    move-object/from16 v0, p3

    #@1a5
    move/from16 v1, p6

    #@1a7
    invoke-interface {v4, v0, v9, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1aa
    move-result-object v18

    #@1ab
    .line 1298
    .local v18, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v18, :cond_9

    #@1ad
    .line 1299
    new-instance v4, Ljava/lang/SecurityException;

    #@1af
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    const-string/jumbo v11, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    #@1b7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v9

    #@1bb
    move-object/from16 v0, p3

    #@1bd
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v9

    #@1c1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v9

    #@1c5
    invoke-direct {v4, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c8
    throw v4

    #@1c9
    .line 1302
    :cond_9
    new-instance v8, Landroid/content/pm/ServiceInfo;

    #@1cb
    move-object/from16 v0, v27

    #@1cd
    invoke-direct {v8, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@1d0
    .line 1303
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    #@1d2
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d4
    invoke-direct {v4, v9}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@1d7
    iput-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d9
    .line 1304
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1db
    move-object/from16 v0, v18

    #@1dd
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1df
    iput-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1e1
    .line 1305
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e3
    move-object/from16 v0, v18

    #@1e5
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e7
    iput v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e9
    .line 1306
    new-instance v22, Landroid/content/ComponentName;

    #@1eb
    move-object/from16 v0, v18

    #@1ed
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1ef
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1f2
    move-result-object v9

    #@1f3
    move-object/from16 v0, v22

    #@1f5
    invoke-direct {v0, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f8
    .line 1307
    .end local v6    # "name":Landroid/content/ComponentName;
    .local v22, "name":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    #@1fa
    move-object/from16 v1, v22

    #@1fc
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1ff
    move-object/from16 v6, v22

    #@201
    .end local v22    # "name":Landroid/content/ComponentName;
    .restart local v6    # "name":Landroid/content/ComponentName;
    move-object/from16 v27, v8

    #@203
    .line 1316
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v18    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_a
    if-lez p6, :cond_16

    #@205
    .line 1317
    move-object/from16 v0, p0

    #@207
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@209
    move-object/from16 v0, v27

    #@20b
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@20d
    move-object/from16 v0, v27

    #@20f
    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@211
    .line 1318
    move-object/from16 v0, v27

    #@213
    iget-object v12, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@215
    move-object/from16 v0, v27

    #@217
    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@219
    .line 1317
    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    #@21c
    move-result v4

    #@21d
    if-eqz v4, :cond_b

    #@21f
    .line 1319
    move-object/from16 v0, p0

    #@221
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@223
    move-object/from16 v0, v27

    #@225
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@227
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@229
    move/from16 v0, p5

    #@22b
    invoke-virtual {v4, v0, v9}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    #@22e
    move-result v4

    #@22f
    .line 1317
    if-eqz v4, :cond_b

    #@231
    .line 1320
    const/16 p6, 0x0

    #@233
    .line 1321
    const/4 v4, 0x0

    #@234
    move-object/from16 v0, p0

    #@236
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@239
    move-result-object v28

    #@23a
    .line 1323
    :cond_b
    new-instance v8, Landroid/content/pm/ServiceInfo;

    #@23c
    move-object/from16 v0, v27

    #@23e
    invoke-direct {v8, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@241
    .line 1324
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    #@243
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@245
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@247
    move/from16 v0, p6

    #@249
    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    #@24c
    move-result-object v4

    #@24d
    iput-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24f
    .line 1326
    :goto_5
    move-object/from16 v0, v28

    #@251
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@253
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@256
    move-result-object v25

    #@257
    check-cast v25, Lcom/android/server/am/ServiceRecord;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@259
    .line 1327
    .local v25, "r":Lcom/android/server/am/ServiceRecord;
    if-nez v25, :cond_f

    #@25b
    if-eqz p7, :cond_15

    #@25d
    .line 1329
    :try_start_3
    new-instance v7, Landroid/content/Intent$FilterComparison;

    #@25f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@262
    move-result-object v4

    #@263
    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@266
    .line 1330
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    #@268
    const/4 v4, 0x0

    #@269
    move-object/from16 v0, p0

    #@26b
    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceRestarter;)V

    #@26e
    .line 1331
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    #@26f
    .line 1332
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    #@271
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@273
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@275
    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    #@278
    move-result-object v29

    #@279
    .line 1333
    .local v29, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v29
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@27a
    .line 1335
    :try_start_4
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@27e
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@280
    .line 1336
    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@282
    .line 1334
    move-object/from16 v0, v29

    #@284
    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@287
    move-result-object v5

    #@288
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :try_start_5
    monitor-exit v29

    #@289
    .line 1338
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@28f
    move/from16 v9, p8

    #@291
    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@294
    .line 1339
    .end local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_6
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    #@297
    .line 1340
    move-object/from16 v0, v28

    #@299
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@29b
    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29e
    .line 1341
    move-object/from16 v0, v28

    #@2a0
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@2a2
    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a5
    .line 1344
    move-object/from16 v0, p0

    #@2a7
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2a9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2ac
    move-result v4

    #@2ad
    add-int/lit8 v21, v4, -0x1

    #@2af
    .local v21, "i":I
    :goto_6
    if-ltz v21, :cond_6

    #@2b1
    .line 1345
    move-object/from16 v0, p0

    #@2b3
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2b5
    move/from16 v0, v21

    #@2b7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ba
    move-result-object v24

    #@2bb
    check-cast v24, Lcom/android/server/am/ServiceRecord;

    #@2bd
    .line 1346
    .local v24, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    #@2bf
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2c1
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c3
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2c5
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c7
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2c9
    if-ne v4, v9, :cond_c

    #@2cb
    .line 1347
    move-object/from16 v0, v24

    #@2cd
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2cf
    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@2d2
    move-result v4

    #@2d3
    .line 1346
    if-eqz v4, :cond_c

    #@2d5
    .line 1348
    move-object/from16 v0, p0

    #@2d7
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@2d9
    move/from16 v0, v21

    #@2db
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2de
    .line 1344
    :cond_c
    add-int/lit8 v21, v21, -0x1

    #@2e0
    goto :goto_6

    #@2e1
    .line 1309
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v21    # "i":I
    .end local v24    # "pr":Lcom/android/server/am/ServiceRecord;
    .end local v29    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_d
    new-instance v4, Ljava/lang/SecurityException;

    #@2e3
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2e8
    const-string/jumbo v11, "BIND_EXTERNAL_SERVICE required for "

    #@2eb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v9

    #@2ef
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v9

    #@2f3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v9

    #@2f7
    invoke-direct {v4, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2fa
    throw v4

    #@2fb
    .line 1312
    :cond_e
    if-eqz p9, :cond_a

    #@2fd
    .line 1313
    new-instance v4, Ljava/lang/SecurityException;

    #@2ff
    new-instance v9, Ljava/lang/StringBuilder;

    #@301
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@304
    const-string/jumbo v11, "BIND_EXTERNAL_SERVICE failed, "

    #@307
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v9

    #@30b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v9

    #@30f
    .line 1314
    const-string/jumbo v11, " is not an externalService"

    #@312
    .line 1313
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@315
    move-result-object v9

    #@316
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@319
    move-result-object v9

    #@31a
    invoke-direct {v4, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@31d
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@31e
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v25    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_f
    move-object/from16 v3, v25

    #@320
    .line 1327
    .end local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    #@322
    .line 1333
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v29    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    #@323
    :try_start_7
    monitor-exit v29

    #@324
    throw v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    #@325
    .line 1352
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v29    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_1
    move-exception v20

    #@326
    .local v20, "ex":Landroid/os/RemoteException;
    move-object/from16 v3, v25

    #@328
    .end local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    #@32a
    .line 1368
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v20    # "ex":Landroid/os/RemoteException;
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_10
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@32c
    new-instance v9, Ljava/lang/StringBuilder;

    #@32e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@331
    const-string/jumbo v11, "Permission Denial: Accessing service "

    #@334
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v9

    #@338
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@33a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v9

    #@33e
    .line 1369
    const-string/jumbo v11, " from pid="

    #@341
    .line 1368
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@344
    move-result-object v9

    #@345
    move/from16 v0, p4

    #@347
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v9

    #@34b
    .line 1370
    const-string/jumbo v11, ", uid="

    #@34e
    .line 1368
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v9

    #@352
    move/from16 v0, p5

    #@354
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@357
    move-result-object v9

    #@358
    .line 1371
    const-string/jumbo v11, " requires "

    #@35b
    .line 1368
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v9

    #@35f
    .line 1371
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@361
    .line 1368
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v9

    #@365
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@368
    move-result-object v9

    #@369
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36c
    .line 1372
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@36e
    iget-object v9, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@370
    const/4 v11, 0x0

    #@371
    move-object/from16 v0, p0

    #@373
    invoke-direct {v4, v0, v11, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@376
    return-object v4

    #@377
    .line 1373
    :cond_11
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@379
    if-eqz v4, :cond_12

    #@37b
    if-eqz p3, :cond_12

    #@37d
    .line 1374
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@37f
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@382
    move-result v23

    #@383
    .line 1375
    .local v23, "opCode":I
    const/4 v4, -0x1

    #@384
    move/from16 v0, v23

    #@386
    if-eq v0, v4, :cond_12

    #@388
    move-object/from16 v0, p0

    #@38a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@38c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@38e
    move/from16 v0, v23

    #@390
    move/from16 v1, p5

    #@392
    move-object/from16 v2, p3

    #@394
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@397
    move-result v4

    #@398
    if-eqz v4, :cond_12

    #@39a
    .line 1377
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@39c
    new-instance v9, Ljava/lang/StringBuilder;

    #@39e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3a1
    const-string/jumbo v11, "Appop Denial: Accessing service "

    #@3a4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v9

    #@3a8
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@3aa
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3ad
    move-result-object v9

    #@3ae
    .line 1378
    const-string/jumbo v11, " from pid="

    #@3b1
    .line 1377
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b4
    move-result-object v9

    #@3b5
    move/from16 v0, p4

    #@3b7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ba
    move-result-object v9

    #@3bb
    .line 1379
    const-string/jumbo v11, ", uid="

    #@3be
    .line 1377
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v9

    #@3c2
    move/from16 v0, p5

    #@3c4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c7
    move-result-object v9

    #@3c8
    .line 1380
    const-string/jumbo v11, " requires appop "

    #@3cb
    .line 1377
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v9

    #@3cf
    .line 1380
    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@3d2
    move-result-object v11

    #@3d3
    .line 1377
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v9

    #@3d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3da
    move-result-object v9

    #@3db
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3de
    .line 1381
    const/4 v4, 0x0

    #@3df
    return-object v4

    #@3e0
    .line 1385
    .end local v23    # "opCode":I
    :cond_12
    move-object/from16 v0, p0

    #@3e2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3e4
    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@3e6
    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@3e8
    .line 1386
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3ea
    move-object/from16 v17, v0

    #@3ec
    move-object/from16 v13, p1

    #@3ee
    move/from16 v14, p5

    #@3f0
    move/from16 v15, p4

    #@3f2
    move-object/from16 v16, p2

    #@3f4
    .line 1385
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    #@3f7
    move-result v4

    #@3f8
    if-nez v4, :cond_13

    #@3fa
    .line 1387
    const/4 v4, 0x0

    #@3fb
    return-object v4

    #@3fc
    .line 1389
    :cond_13
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@3fe
    const/4 v9, 0x0

    #@3ff
    move-object/from16 v0, p0

    #@401
    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    #@404
    return-object v4

    #@405
    .line 1391
    :cond_14
    const/4 v4, 0x0

    #@406
    return-object v4

    #@407
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_15
    move-object/from16 v3, v25

    #@409
    .end local v25    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    #@40b
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_16
    move-object/from16 v8, v27

    #@40d
    .end local v27    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto/16 :goto_5

    #@40f
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v25, "r":Lcom/android/server/am/ServiceRecord;
    :cond_17
    move-object/from16 v3, v25

    #@411
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    #@0
    .prologue
    .line 1458
    const/4 v5, 0x0

    #@1
    .line 1460
    .local v5, "canceled":Z
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5
    move-object/from16 v20, v0

    #@7
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    #@a
    move-result v20

    #@b
    if-eqz v20, :cond_0

    #@d
    .line 1461
    sget-object v20, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@f
    new-instance v21, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v22, "Not scheduling restart of crashed service "

    #@17
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v21

    #@1b
    move-object/from16 v0, p1

    #@1d
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@1f
    move-object/from16 v22, v0

    #@21
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v21

    #@25
    .line 1462
    const-string/jumbo v22, " - system is shutting down"

    #@28
    .line 1461
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v21

    #@2c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v21

    #@30
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1463
    const/16 v20, 0x0

    #@35
    return v20

    #@36
    .line 1466
    :cond_0
    move-object/from16 v0, p1

    #@38
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@3a
    move/from16 v20, v0

    #@3c
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, v20

    #@40
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@43
    move-result-object v19

    #@44
    .line 1467
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, v19

    #@46
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@48
    move-object/from16 v20, v0

    #@4a
    move-object/from16 v0, p1

    #@4c
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@4e
    move-object/from16 v21, v0

    #@50
    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v20

    #@54
    move-object/from16 v0, v20

    #@56
    move-object/from16 v1, p1

    #@58
    if-eq v0, v1, :cond_1

    #@5a
    .line 1468
    move-object/from16 v0, v19

    #@5c
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@5e
    move-object/from16 v20, v0

    #@60
    move-object/from16 v0, p1

    #@62
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@64
    move-object/from16 v21, v0

    #@66
    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    #@6c
    .line 1469
    .local v6, "cur":Lcom/android/server/am/ServiceRecord;
    sget-object v20, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@6e
    new-instance v21, Ljava/lang/StringBuilder;

    #@70
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v22, "Attempting to schedule restart of "

    #@76
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v21

    #@7a
    move-object/from16 v0, v21

    #@7c
    move-object/from16 v1, p1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v21

    #@82
    .line 1470
    const-string/jumbo v22, " when found in map: "

    #@85
    .line 1469
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v21

    #@89
    move-object/from16 v0, v21

    #@8b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v21

    #@8f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v21

    #@93
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 1471
    const/16 v20, 0x0

    #@98
    return v20

    #@99
    .line 1474
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9c
    move-result-wide v12

    #@9d
    .line 1476
    .local v12, "now":J
    move-object/from16 v0, p1

    #@9f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@a1
    move-object/from16 v20, v0

    #@a3
    move-object/from16 v0, v20

    #@a5
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a7
    move-object/from16 v20, v0

    #@a9
    move-object/from16 v0, v20

    #@ab
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@ad
    move/from16 v20, v0

    #@af
    and-int/lit8 v20, v20, 0x8

    #@b1
    if-nez v20, :cond_10

    #@b3
    .line 1478
    const-wide/16 v10, 0x3e8

    #@b5
    .line 1479
    .local v10, "minDuration":J
    const-wide/32 v16, 0xea60

    #@b8
    .line 1483
    .local v16, "resetTime":J
    move-object/from16 v0, p1

    #@ba
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@bc
    move-object/from16 v20, v0

    #@be
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@c1
    move-result v4

    #@c2
    .line 1484
    .local v4, "N":I
    if-lez v4, :cond_8

    #@c4
    .line 1485
    add-int/lit8 v7, v4, -0x1

    #@c6
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_7

    #@c8
    .line 1486
    move-object/from16 v0, p1

    #@ca
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@cc
    move-object/from16 v20, v0

    #@ce
    move-object/from16 v0, v20

    #@d0
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d3
    move-result-object v18

    #@d4
    check-cast v18, Lcom/android/server/am/ServiceRecord$StartItem;

    #@d6
    .line 1487
    .local v18, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    #@d9
    .line 1488
    move-object/from16 v0, v18

    #@db
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@dd
    move-object/from16 v20, v0

    #@df
    if-nez v20, :cond_3

    #@e1
    .line 1485
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@e3
    goto :goto_0

    #@e4
    .line 1490
    :cond_3
    if-eqz p2, :cond_4

    #@e6
    move-object/from16 v0, v18

    #@e8
    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@ea
    move/from16 v20, v0

    #@ec
    const/16 v21, 0x3

    #@ee
    move/from16 v0, v20

    #@f0
    move/from16 v1, v21

    #@f2
    if-ge v0, v1, :cond_6

    #@f4
    .line 1491
    move-object/from16 v0, v18

    #@f6
    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@f8
    move/from16 v20, v0

    #@fa
    const/16 v21, 0x6

    #@fc
    move/from16 v0, v20

    #@fe
    move/from16 v1, v21

    #@100
    if-ge v0, v1, :cond_6

    #@102
    .line 1492
    :cond_4
    move-object/from16 v0, p1

    #@104
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@106
    move-object/from16 v20, v0

    #@108
    const/16 v21, 0x0

    #@10a
    move-object/from16 v0, v20

    #@10c
    move/from16 v1, v21

    #@10e
    move-object/from16 v2, v18

    #@110
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@113
    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@116
    move-result-wide v20

    #@117
    move-object/from16 v0, v18

    #@119
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@11b
    move-wide/from16 v22, v0

    #@11d
    sub-long v8, v20, v22

    #@11f
    .line 1494
    .local v8, "dur":J
    const-wide/16 v20, 0x2

    #@121
    mul-long v8, v8, v20

    #@123
    .line 1495
    cmp-long v20, v10, v8

    #@125
    if-gez v20, :cond_5

    #@127
    move-wide v10, v8

    #@128
    .line 1496
    :cond_5
    cmp-long v20, v16, v8

    #@12a
    if-gez v20, :cond_2

    #@12c
    move-wide/from16 v16, v8

    #@12e
    goto :goto_1

    #@12f
    .line 1498
    .end local v8    # "dur":J
    :cond_6
    sget-object v20, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@131
    new-instance v21, Ljava/lang/StringBuilder;

    #@133
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v22, "Canceling start item "

    #@139
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v21

    #@13d
    move-object/from16 v0, v18

    #@13f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@141
    move-object/from16 v22, v0

    #@143
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v21

    #@147
    const-string/jumbo v22, " in service "

    #@14a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v21

    #@14e
    .line 1499
    move-object/from16 v0, p1

    #@150
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@152
    move-object/from16 v22, v0

    #@154
    .line 1498
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v21

    #@158
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v21

    #@15c
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15f
    .line 1500
    const/4 v5, 0x1

    #@160
    goto :goto_1

    #@161
    .line 1503
    .end local v18    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_7
    move-object/from16 v0, p1

    #@163
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@165
    move-object/from16 v20, v0

    #@167
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    #@16a
    .line 1506
    .end local v7    # "i":I
    :cond_8
    move-object/from16 v0, p1

    #@16c
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@16e
    move/from16 v20, v0

    #@170
    add-int/lit8 v20, v20, 0x1

    #@172
    move/from16 v0, v20

    #@174
    move-object/from16 v1, p1

    #@176
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@178
    .line 1507
    move-object/from16 v0, p1

    #@17a
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@17c
    move-wide/from16 v20, v0

    #@17e
    const-wide/16 v22, 0x0

    #@180
    cmp-long v20, v20, v22

    #@182
    if-nez v20, :cond_d

    #@184
    .line 1508
    move-object/from16 v0, p1

    #@186
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@188
    move/from16 v20, v0

    #@18a
    add-int/lit8 v20, v20, 0x1

    #@18c
    move/from16 v0, v20

    #@18e
    move-object/from16 v1, p1

    #@190
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@192
    .line 1509
    move-object/from16 v0, p1

    #@194
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@196
    .line 1527
    :cond_9
    :goto_2
    move-object/from16 v0, p1

    #@198
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@19a
    move-wide/from16 v20, v0

    #@19c
    add-long v20, v20, v12

    #@19e
    move-wide/from16 v0, v20

    #@1a0
    move-object/from16 v2, p1

    #@1a2
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1a4
    .line 1533
    :cond_a
    const/4 v15, 0x0

    #@1a5
    .line 1534
    .local v15, "repeat":Z
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1a9
    move-object/from16 v20, v0

    #@1ab
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@1ae
    move-result v20

    #@1af
    add-int/lit8 v7, v20, -0x1

    #@1b1
    .restart local v7    # "i":I
    :goto_3
    if-ltz v7, :cond_b

    #@1b3
    .line 1535
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@1b7
    move-object/from16 v20, v0

    #@1b9
    move-object/from16 v0, v20

    #@1bb
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1be
    move-result-object v14

    #@1bf
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@1c1
    .line 1536
    .local v14, "r2":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    #@1c3
    if-eq v14, v0, :cond_f

    #@1c5
    move-object/from16 v0, p1

    #@1c7
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1c9
    move-wide/from16 v20, v0

    #@1cb
    .line 1537
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1cd
    move-wide/from16 v22, v0

    #@1cf
    const-wide/16 v24, 0x2710

    #@1d1
    sub-long v22, v22, v24

    #@1d3
    .line 1536
    cmp-long v20, v20, v22

    #@1d5
    if-ltz v20, :cond_f

    #@1d7
    .line 1538
    move-object/from16 v0, p1

    #@1d9
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1db
    move-wide/from16 v20, v0

    #@1dd
    .line 1539
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1df
    move-wide/from16 v22, v0

    #@1e1
    const-wide/16 v24, 0x2710

    #@1e3
    add-long v22, v22, v24

    #@1e5
    .line 1538
    cmp-long v20, v20, v22

    #@1e7
    if-gez v20, :cond_f

    #@1e9
    .line 1540
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1eb
    move-wide/from16 v20, v0

    #@1ed
    const-wide/16 v22, 0x2710

    #@1ef
    add-long v20, v20, v22

    #@1f1
    move-wide/from16 v0, v20

    #@1f3
    move-object/from16 v2, p1

    #@1f5
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1f7
    .line 1541
    move-object/from16 v0, p1

    #@1f9
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@1fb
    move-wide/from16 v20, v0

    #@1fd
    sub-long v20, v20, v12

    #@1ff
    move-wide/from16 v0, v20

    #@201
    move-object/from16 v2, p1

    #@203
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@205
    .line 1542
    const/4 v15, 0x1

    #@206
    .line 1546
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    :cond_b
    if-nez v15, :cond_a

    #@208
    .line 1557
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :goto_4
    move-object/from16 v0, p0

    #@20a
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@20c
    move-object/from16 v20, v0

    #@20e
    move-object/from16 v0, v20

    #@210
    move-object/from16 v1, p1

    #@212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@215
    move-result v20

    #@216
    if-nez v20, :cond_c

    #@218
    .line 1558
    const/16 v20, 0x0

    #@21a
    move/from16 v0, v20

    #@21c
    move-object/from16 v1, p1

    #@21e
    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@220
    .line 1559
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@224
    move-object/from16 v20, v0

    #@226
    move-object/from16 v0, v20

    #@228
    move-object/from16 v1, p1

    #@22a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22d
    .line 1560
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@231
    move-object/from16 v20, v0

    #@233
    move-object/from16 v0, v20

    #@235
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@237
    move-object/from16 v20, v0

    #@239
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@23c
    move-result v20

    #@23d
    move-object/from16 v0, p1

    #@23f
    move/from16 v1, v20

    #@241
    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    #@244
    .line 1563
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@247
    .line 1565
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@24b
    move-object/from16 v20, v0

    #@24d
    move-object/from16 v0, v20

    #@24f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@251
    move-object/from16 v20, v0

    #@253
    move-object/from16 v0, p1

    #@255
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@257
    move-object/from16 v21, v0

    #@259
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@25c
    .line 1566
    move-object/from16 v0, p0

    #@25e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@260
    move-object/from16 v20, v0

    #@262
    move-object/from16 v0, v20

    #@264
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@266
    move-object/from16 v20, v0

    #@268
    move-object/from16 v0, p1

    #@26a
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@26c
    move-object/from16 v21, v0

    #@26e
    move-object/from16 v0, p1

    #@270
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@272
    move-wide/from16 v22, v0

    #@274
    invoke-virtual/range {v20 .. v23}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@277
    .line 1567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@27a
    move-result-wide v20

    #@27b
    move-object/from16 v0, p1

    #@27d
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@27f
    move-wide/from16 v22, v0

    #@281
    add-long v20, v20, v22

    #@283
    move-wide/from16 v0, v20

    #@285
    move-object/from16 v2, p1

    #@287
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@289
    .line 1568
    sget-object v20, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@28b
    new-instance v21, Ljava/lang/StringBuilder;

    #@28d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@290
    const-string/jumbo v22, "Scheduling restart of crashed service "

    #@293
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v21

    #@297
    .line 1569
    move-object/from16 v0, p1

    #@299
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@29b
    move-object/from16 v22, v0

    #@29d
    .line 1568
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v21

    #@2a1
    .line 1569
    const-string/jumbo v22, " in "

    #@2a4
    .line 1568
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v21

    #@2a8
    .line 1569
    move-object/from16 v0, p1

    #@2aa
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2ac
    move-wide/from16 v22, v0

    #@2ae
    .line 1568
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v21

    #@2b2
    .line 1569
    const-string/jumbo v22, "ms"

    #@2b5
    .line 1568
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v21

    #@2b9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bc
    move-result-object v21

    #@2bd
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c0
    .line 1570
    const/16 v20, 0x3

    #@2c2
    move/from16 v0, v20

    #@2c4
    new-array v0, v0, [Ljava/lang/Object;

    #@2c6
    move-object/from16 v20, v0

    #@2c8
    .line 1571
    move-object/from16 v0, p1

    #@2ca
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@2cc
    move/from16 v21, v0

    #@2ce
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d1
    move-result-object v21

    #@2d2
    const/16 v22, 0x0

    #@2d4
    aput-object v21, v20, v22

    #@2d6
    move-object/from16 v0, p1

    #@2d8
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@2da
    move-object/from16 v21, v0

    #@2dc
    const/16 v22, 0x1

    #@2de
    aput-object v21, v20, v22

    #@2e0
    move-object/from16 v0, p1

    #@2e2
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2e4
    move-wide/from16 v22, v0

    #@2e6
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e9
    move-result-object v21

    #@2ea
    const/16 v22, 0x2

    #@2ec
    aput-object v21, v20, v22

    #@2ee
    .line 1570
    const/16 v21, 0x7553

    #@2f0
    move/from16 v0, v21

    #@2f2
    move-object/from16 v1, v20

    #@2f4
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2f7
    .line 1573
    return v5

    #@2f8
    .line 1516
    .restart local v4    # "N":I
    .restart local v10    # "minDuration":J
    .restart local v16    # "resetTime":J
    :cond_d
    move-object/from16 v0, p1

    #@2fa
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@2fc
    move-wide/from16 v20, v0

    #@2fe
    add-long v20, v20, v16

    #@300
    cmp-long v20, v12, v20

    #@302
    if-lez v20, :cond_e

    #@304
    .line 1517
    const/16 v20, 0x1

    #@306
    move/from16 v0, v20

    #@308
    move-object/from16 v1, p1

    #@30a
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@30c
    .line 1518
    move-object/from16 v0, p1

    #@30e
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@310
    goto/16 :goto_2

    #@312
    .line 1520
    :cond_e
    move-object/from16 v0, p1

    #@314
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@316
    move-wide/from16 v20, v0

    #@318
    const-wide/16 v22, 0x4

    #@31a
    mul-long v20, v20, v22

    #@31c
    move-wide/from16 v0, v20

    #@31e
    move-object/from16 v2, p1

    #@320
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@322
    .line 1521
    move-object/from16 v0, p1

    #@324
    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@326
    move-wide/from16 v20, v0

    #@328
    cmp-long v20, v20, v10

    #@32a
    if-gez v20, :cond_9

    #@32c
    .line 1522
    move-object/from16 v0, p1

    #@32e
    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@330
    goto/16 :goto_2

    #@332
    .line 1534
    .restart local v7    # "i":I
    .restart local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "repeat":Z
    :cond_f
    add-int/lit8 v7, v7, -0x1

    #@334
    goto/16 :goto_3

    #@336
    .line 1551
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :cond_10
    move-object/from16 v0, p1

    #@338
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@33a
    move/from16 v20, v0

    #@33c
    add-int/lit8 v20, v20, 0x1

    #@33e
    move/from16 v0, v20

    #@340
    move-object/from16 v1, p1

    #@342
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    #@344
    .line 1552
    const/16 v20, 0x0

    #@346
    move/from16 v0, v20

    #@348
    move-object/from16 v1, p1

    #@34a
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@34c
    .line 1553
    const-wide/16 v20, 0x0

    #@34e
    move-wide/from16 v0, v20

    #@350
    move-object/from16 v2, p1

    #@352
    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@354
    .line 1554
    move-object/from16 v0, p1

    #@356
    iput-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@358
    goto/16 :goto_4
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 15
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
    .line 1861
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v8

    #@8
    .line 1862
    .local v8, "N":I
    if-nez v8, :cond_0

    #@a
    .line 1863
    return-void

    #@b
    .line 1866
    .end local p3    # "oomAdjusted":Z
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v2

    #@13
    if-lez v2, :cond_6

    #@15
    .line 1867
    const/4 v9, 0x0

    #@16
    .line 1868
    .local v9, "caughtException":Ljava/lang/Exception;
    const/4 v14, 0x0

    #@17
    .line 1870
    .local v14, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :try_start_0
    move-object/from16 v0, p1

    #@19
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    move-object v0, v2

    #@21
    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@23
    move-object v14, v0

    #@24
    .line 1873
    .local v14, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@26
    if-nez v2, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    if-gt v8, v2, :cond_0

    #@2b
    .line 1880
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v2

    #@2f
    iput-wide v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@31
    .line 1881
    move-object/from16 v0, p1

    #@33
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 1882
    iget v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@3a
    add-int/lit8 v2, v2, 0x1

    #@3c
    iput v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@3e
    .line 1883
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 1884
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@44
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@46
    .line 1885
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@49
    move-result-object v4

    #@4a
    .line 1884
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    #@4d
    .line 1887
    :cond_2
    const-string/jumbo v2, "start"

    #@50
    move-object/from16 v0, p1

    #@52
    move/from16 v1, p2

    #@54
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@57
    .line 1888
    if-nez p3, :cond_3

    #@59
    .line 1889
    const/16 p3, 0x1

    #@5b
    .line 1890
    .local p3, "oomAdjusted":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5d
    move-object/from16 v0, p1

    #@5f
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@64
    .line 1892
    .end local p3    # "oomAdjusted":Z
    :cond_3
    const/4 v6, 0x0

    #@65
    .line 1893
    .local v6, "flags":I
    iget v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@67
    const/4 v3, 0x1

    #@68
    if-le v2, v3, :cond_4

    #@6a
    .line 1894
    const/4 v6, 0x2

    #@6b
    .line 1896
    :cond_4
    iget v2, v14, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@6d
    if-lez v2, :cond_5

    #@6f
    .line 1897
    or-int/lit8 v6, v6, 0x1

    #@71
    .line 1899
    :cond_5
    move-object/from16 v0, p1

    #@73
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@75
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@77
    iget-boolean v4, v14, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    #@79
    iget v5, v14, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@7b
    iget-object v7, v14, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@7d
    move-object/from16 v3, p1

    #@7f
    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    .line 1913
    .end local v6    # "flags":I
    .end local v9    # "caughtException":Ljava/lang/Exception;
    .end local v14    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :goto_0
    if-eqz v9, :cond_0

    #@84
    .line 1915
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@86
    move-object/from16 v0, p1

    #@88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8b
    move-result v13

    #@8c
    .line 1916
    .local v13, "inDestroying":Z
    move-object/from16 v0, p1

    #@8e
    invoke-direct {p0, v0, v13, v13}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@91
    .line 1917
    instance-of v2, v9, Landroid/os/TransactionTooLargeException;

    #@93
    if-eqz v2, :cond_6

    #@95
    .line 1918
    check-cast v9, Landroid/os/TransactionTooLargeException;

    #@97
    throw v9

    #@98
    .line 1908
    .end local v13    # "inDestroying":Z
    .restart local v9    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v12

    #@99
    .line 1909
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@9b
    const-string/jumbo v3, "Unexpected exception"

    #@9e
    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a1
    .line 1910
    move-object v9, v12

    #@a2
    .local v9, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@a3
    .line 1904
    .end local v12    # "e":Ljava/lang/Exception;
    .local v9, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    #@a4
    .line 1907
    .local v10, "e":Landroid/os/RemoteException;
    move-object v9, v10

    #@a5
    .local v9, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@a6
    .line 1900
    .end local v10    # "e":Landroid/os/RemoteException;
    .local v9, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    #@a7
    .line 1903
    .local v11, "e":Landroid/os/TransactionTooLargeException;
    move-object v9, v11

    #@a8
    .local v9, "caughtException":Ljava/lang/Exception;
    goto :goto_0

    #@a9
    .line 1860
    .end local v9    # "caughtException":Ljava/lang/Exception;
    .end local v11    # "e":Landroid/os/TransactionTooLargeException;
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
    .line 2276
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@8
    .line 2277
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@a
    if-gtz v1, :cond_5

    #@c
    .line 2278
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 2281
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@12
    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@14
    .line 2282
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@16
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1b
    .line 2283
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
    .line 2286
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
    .line 2296
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@32
    .line 2299
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@37
    .line 2300
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@3c
    .line 2302
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3e
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@40
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@43
    .line 2304
    :cond_2
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@45
    .line 2305
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 2306
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@4b
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4d
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@4f
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@52
    move-result v2

    #@53
    .line 2307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@56
    move-result-wide v4

    #@57
    .line 2306
    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@5a
    .line 2308
    if-eqz p3, :cond_3

    #@5c
    .line 2309
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@5e
    invoke-virtual {v1, p1, v6}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@61
    .line 2310
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@63
    .line 2313
    :cond_3
    if-eqz p3, :cond_5

    #@65
    .line 2314
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
    .line 2320
    :cond_4
    :goto_1
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@71
    .line 2270
    :cond_5
    return-void

    #@72
    .line 2287
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@74
    if-eqz v1, :cond_0

    #@76
    .line 2289
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
    .line 2290
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
    .line 2291
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@92
    const/4 v2, 0x1

    #@93
    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@95
    goto :goto_0

    #@96
    .line 2289
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@98
    goto :goto_2

    #@99
    .line 2315
    .end local v0    # "i":I
    :cond_8
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9b
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@9d
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@a0
    .line 2316
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@a2
    if-eqz v1, :cond_4

    #@a4
    .line 2317
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a6
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    #@a9
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
    .line 2259
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2260
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@d
    move-result v0

    #@e
    .line 2261
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 2262
    .local v2, "now":J
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@14
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@17
    .line 2263
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@19
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@1c
    .line 2264
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1e
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@21
    .line 2266
    .end local v0    # "memFactor":I
    .end local v2    # "now":J
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@24
    .line 2258
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 536
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 541
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@8
    .line 542
    return-void

    #@9
    .line 544
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 545
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 547
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@18
    .line 548
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 549
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@1e
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@20
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@22
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@25
    move-result v1

    #@26
    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    .line 549
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@2d
    .line 552
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@2f
    .line 553
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@32
    .line 535
    return-void

    #@33
    .line 544
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
    .line 1598
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
    .line 1599
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 1605
    .local v0, "removed":Z
    if-nez v0, :cond_1

    #@14
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    if-eq p2, v1, :cond_2

    #@1a
    .line 1606
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    #@1d
    .line 1608
    :cond_2
    if-eqz v0, :cond_3

    #@1f
    .line 1609
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@22
    .line 1611
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@26
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@28
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2b
    .line 1612
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
    .line 783
    if-eqz p2, :cond_0

    #@4
    iget-object v7, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@6
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 784
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
    .line 787
    return v8

    #@17
    .line 791
    :cond_0
    const/4 v0, 0x0

    #@18
    .line 792
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
    .line 809
    :cond_1
    iget-boolean v7, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@26
    if-eq v0, v7, :cond_9

    #@28
    .line 810
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@2a
    .line 811
    if-eqz p3, :cond_2

    #@2c
    .line 812
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2e
    invoke-virtual {v7, p1, v0, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@31
    .line 814
    :cond_2
    const/4 v7, 0x1

    #@32
    return v7

    #@33
    .line 793
    :cond_3
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@35
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    #@3b
    .line 794
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
    .line 792
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 795
    :cond_5
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Ljava/util/ArrayList;

    #@52
    .line 796
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
    .line 797
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    #@60
    .line 798
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
    .line 796
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@6e
    goto :goto_2

    #@6f
    .line 802
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
    .line 803
    const/4 v0, 0x1

    #@7c
    .line 794
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_8
    add-int/lit8 v2, v2, -0x1

    #@7e
    goto :goto_1

    #@7f
    .line 816
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
    .line 742
    const/4 v0, 0x0

    #@1
    .line 743
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
    .line 744
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    #@13
    .line 745
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 746
    const/4 v0, 0x1

    #@18
    .line 750
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1a
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    #@1d
    .line 741
    return-void

    #@1e
    .line 743
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 754
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@3
    .line 755
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 756
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@15
    .line 757
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 758
    const/4 v2, 0x1

    #@1a
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@1c
    .line 753
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    return-void

    #@1d
    .line 755
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1f
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
    .line 2327
    const/4 v1, 0x0

    #@1
    .line 2329
    .local v1, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    if-lez v5, :cond_2

    #@9
    .line 2330
    const/4 v4, 0x0

    #@a
    .line 2332
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
    .line 2333
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
    .line 2334
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
    .line 2335
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@2b
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_1

    #@31
    .line 2339
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@36
    .line 2340
    add-int/lit8 v3, v3, -0x1

    #@38
    .line 2341
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3a
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3c
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3e
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@40
    .line 2342
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@42
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@44
    .line 2341
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@47
    .line 2343
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@49
    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    #@4c
    .line 2344
    const/4 v1, 0x1

    #@4d
    .line 2345
    const/4 v5, 0x0

    #@4e
    const/4 v6, 0x0

    #@4f
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    #@52
    move-result v5

    #@53
    if-nez v5, :cond_1

    #@55
    .line 2350
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 2332
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 2353
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v2

    #@5c
    .line 2354
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@5e
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "Exception in new application when starting service "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    .line 2355
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@6c
    .line 2354
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    .line 2356
    throw v2

    #@78
    .line 2363
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v5

    #@7e
    if-lez v5, :cond_5

    #@80
    .line 2365
    const/4 v3, 0x0

    #@81
    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v5

    #@87
    if-ge v3, v5, :cond_5

    #@89
    .line 2366
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v4

    #@8f
    check-cast v4, Lcom/android/server/am/ServiceRecord;

    #@91
    .line 2367
    .restart local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@93
    if-eq p1, v5, :cond_3

    #@95
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@97
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@99
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@9b
    if-ne v5, v6, :cond_4

    #@9d
    .line 2368
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@9f
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_4

    #@a5
    .line 2371
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a7
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@a9
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@ab
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@ae
    .line 2372
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@b0
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@b2
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@b4
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@b7
    .line 2365
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@b9
    goto :goto_1

    #@ba
    .line 2375
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 37
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
    .line 825
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@9
    move-result-object v25

    #@a
    .line 826
    .local v25, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v25, :cond_0

    #@c
    .line 827
    new-instance v4, Ljava/lang/SecurityException;

    #@e
    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Unable to find app for caller "

    #@16
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 829
    const-string/jumbo v8, " (pid="

    #@23
    .line 828
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 829
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v8

    #@2b
    .line 828
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 830
    const-string/jumbo v8, ") when binding service "

    #@32
    .line 828
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 827
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4

    #@44
    .line 833
    :cond_0
    const/16 v22, 0x0

    #@46
    .line 834
    .local v22, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_1

    #@48
    .line 835
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4b
    move-result-object v22

    #@4c
    .line 836
    .local v22, "activity":Lcom/android/server/am/ActivityRecord;
    if-nez v22, :cond_1

    #@4e
    .line 837
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@50
    new-instance v5, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v8, "Binding with unknown activity: "

    #@58
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 838
    const/4 v4, 0x0

    #@6a
    return v4

    #@6b
    .line 842
    .end local v22    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/16 v27, 0x0

    #@6d
    .line 843
    .local v27, "clientLabel":I
    const/16 v26, 0x0

    #@6f
    .line 844
    .local v26, "clientIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v25

    #@71
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@73
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@75
    const/16 v5, 0x3e8

    #@77
    if-ne v4, v5, :cond_5

    #@79
    const/16 v31, 0x1

    #@7b
    .line 846
    .local v31, "isCallerSystem":Z
    :goto_0
    if-eqz v31, :cond_2

    #@7d
    .line 850
    const/4 v4, 0x1

    #@7e
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setDefusable(Z)V

    #@83
    .line 851
    const-string/jumbo v4, "android.intent.extra.client_intent"

    #@86
    move-object/from16 v0, p3

    #@88
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8b
    move-result-object v26

    #@8c
    .end local v26    # "clientIntent":Landroid/app/PendingIntent;
    check-cast v26, Landroid/app/PendingIntent;

    #@8e
    .line 852
    .local v26, "clientIntent":Landroid/app/PendingIntent;
    if-eqz v26, :cond_2

    #@90
    .line 853
    const-string/jumbo v4, "android.intent.extra.client_label"

    #@93
    const/4 v5, 0x0

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@99
    move-result v27

    #@9a
    .line 854
    if-eqz v27, :cond_2

    #@9c
    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@9f
    move-result-object p3

    #@a0
    .line 863
    .end local v26    # "clientIntent":Landroid/app/PendingIntent;
    :cond_2
    const/high16 v4, 0x8000000

    #@a2
    and-int v4, v4, p6

    #@a4
    if-eqz v4, :cond_3

    #@a6
    .line 864
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@aa
    const-string/jumbo v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    #@ad
    .line 865
    const-string/jumbo v8, "BIND_TREAT_LIKE_ACTIVITY"

    #@b0
    .line 864
    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 868
    :cond_3
    const/high16 v4, 0x1000000

    #@b5
    and-int v4, v4, p6

    #@b7
    if-eqz v4, :cond_4

    #@b9
    if-eqz v31, :cond_6

    #@bb
    .line 874
    :cond_4
    move-object/from16 v0, v25

    #@bd
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@bf
    if-eqz v4, :cond_7

    #@c1
    const/4 v12, 0x1

    #@c2
    .line 875
    .local v12, "callerFg":Z
    :goto_1
    const/high16 v4, -0x80000000

    #@c4
    and-int v4, v4, p6

    #@c6
    if-eqz v4, :cond_8

    #@c8
    const/4 v13, 0x1

    #@c9
    .line 878
    .local v13, "isBindExternal":Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@cc
    move-result v8

    #@cd
    .line 879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d0
    move-result v9

    #@d1
    const/4 v11, 0x1

    #@d2
    move-object/from16 v4, p0

    #@d4
    move-object/from16 v5, p3

    #@d6
    move-object/from16 v6, p4

    #@d8
    move-object/from16 v7, p7

    #@da
    move/from16 v10, p8

    #@dc
    .line 878
    invoke-direct/range {v4 .. v13}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@df
    move-result-object v34

    #@e0
    .line 880
    .local v34, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v34, :cond_9

    #@e2
    .line 881
    const/4 v4, 0x0

    #@e3
    return v4

    #@e4
    .line 844
    .end local v12    # "callerFg":Z
    .end local v13    # "isBindExternal":Z
    .end local v31    # "isCallerSystem":Z
    .end local v34    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v26, "clientIntent":Landroid/app/PendingIntent;
    :cond_5
    const/16 v31, 0x0

    #@e6
    goto :goto_0

    #@e7
    .line 869
    .end local v26    # "clientIntent":Landroid/app/PendingIntent;
    .restart local v31    # "isCallerSystem":Z
    :cond_6
    new-instance v4, Ljava/lang/SecurityException;

    #@e9
    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v8, "Non-system caller "

    #@f1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v5

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v5

    #@fb
    const-string/jumbo v8, " (pid="

    #@fe
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v5

    #@102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@105
    move-result v8

    #@106
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    move-result-object v5

    #@10a
    .line 871
    const-string/jumbo v8, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    #@10d
    .line 870
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v5

    #@111
    move-object/from16 v0, p3

    #@113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v5

    #@11b
    .line 869
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@11e
    throw v4

    #@11f
    .line 874
    :cond_7
    const/4 v12, 0x0

    #@120
    .restart local v12    # "callerFg":Z
    goto :goto_1

    #@121
    .line 875
    :cond_8
    const/4 v13, 0x0

    #@122
    .restart local v13    # "isBindExternal":Z
    goto :goto_2

    #@123
    .line 883
    .restart local v34    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_9
    move-object/from16 v0, v34

    #@125
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@127
    if-nez v4, :cond_a

    #@129
    .line 884
    const/4 v4, -0x1

    #@12a
    return v4

    #@12b
    .line 886
    :cond_a
    move-object/from16 v0, v34

    #@12d
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@12f
    .line 888
    .local v6, "s":Lcom/android/server/am/ServiceRecord;
    const/16 v21, 0x0

    #@131
    .line 894
    .local v21, "permissionsReviewRequired":Z
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@133
    if-eqz v4, :cond_c

    #@135
    .line 895
    move-object/from16 v0, p0

    #@137
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@139
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    #@13c
    move-result-object v4

    #@13d
    .line 896
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@13f
    iget v8, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    #@141
    .line 895
    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    #@144
    move-result v4

    #@145
    if-eqz v4, :cond_c

    #@147
    .line 898
    const/16 v21, 0x1

    #@149
    .line 901
    if-nez v12, :cond_b

    #@14b
    .line 902
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@14d
    new-instance v5, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v8, "u"

    #@155
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v5

    #@159
    iget v8, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    #@15b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v5

    #@15f
    const-string/jumbo v8, " Binding to a service in package"

    #@162
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v5

    #@166
    .line 903
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@168
    .line 902
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v5

    #@16c
    .line 903
    const-string/jumbo v8, " requires a permissions review"

    #@16f
    .line 902
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v5

    #@173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v5

    #@177
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17a
    .line 904
    const/4 v4, 0x0

    #@17b
    return v4

    #@17c
    .line 907
    :cond_b
    move-object/from16 v35, v6

    #@17e
    .line 908
    .local v35, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v7, p3

    #@180
    .line 910
    .local v7, "serviceIntent":Landroid/content/Intent;
    new-instance v24, Landroid/os/RemoteCallback;

    #@182
    .line 911
    new-instance v4, Lcom/android/server/am/ActiveServices$3;

    #@184
    move-object/from16 v5, p0

    #@186
    move v8, v12

    #@187
    move-object/from16 v9, p5

    #@189
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    #@18c
    .line 910
    move-object/from16 v0, v24

    #@18e
    invoke-direct {v0, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    #@191
    .line 945
    .local v24, "callback":Landroid/os/RemoteCallback;
    new-instance v30, Landroid/content/Intent;

    #@193
    const-string/jumbo v4, "android.intent.action.REVIEW_PERMISSIONS"

    #@196
    move-object/from16 v0, v30

    #@198
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19b
    .line 946
    .local v30, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    #@19d
    move-object/from16 v0, v30

    #@19f
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1a2
    .line 948
    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    #@1a5
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@1a7
    move-object/from16 v0, v30

    #@1a9
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1ac
    .line 949
    const-string/jumbo v4, "android.intent.extra.REMOTE_CALLBACK"

    #@1af
    move-object/from16 v0, v30

    #@1b1
    move-object/from16 v1, v24

    #@1b3
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1b6
    .line 956
    move-object/from16 v0, p0

    #@1b8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1ba
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@1bc
    new-instance v5, Lcom/android/server/am/ActiveServices$4;

    #@1be
    move-object/from16 v0, p0

    #@1c0
    move-object/from16 v1, v30

    #@1c2
    move/from16 v2, p8

    #@1c4
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    #@1c7
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@1ca
    .line 965
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    .end local v24    # "callback":Landroid/os/RemoteCallback;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v35    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1cd
    move-result-wide v32

    #@1ce
    .line 968
    .local v32, "origId":J
    :try_start_0
    move-object/from16 v0, v25

    #@1d0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1d2
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d4
    const/4 v5, 0x0

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@1da
    move-result v4

    #@1db
    if-eqz v4, :cond_d

    #@1dd
    .line 973
    :cond_d
    and-int/lit8 v4, p6, 0x1

    #@1df
    if-eqz v4, :cond_e

    #@1e1
    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e4
    move-result-wide v4

    #@1e5
    iput-wide v4, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@1e7
    .line 975
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@1ea
    move-result v4

    #@1eb
    if-nez v4, :cond_e

    #@1ed
    .line 977
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    #@1f0
    move-result-object v36

    #@1f1
    .line 978
    .local v36, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v36, :cond_e

    #@1f3
    .line 979
    move-object/from16 v0, p0

    #@1f5
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1f7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@1f9
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@1fc
    move-result v4

    #@1fd
    .line 980
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@1ff
    .line 979
    const/4 v5, 0x1

    #@200
    move-object/from16 v0, v36

    #@202
    invoke-virtual {v0, v5, v4, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@205
    .line 985
    .end local v36    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_e
    move-object/from16 v0, p0

    #@207
    iget-object v14, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@209
    move-object/from16 v0, v25

    #@20b
    iget v15, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@20d
    move-object/from16 v0, v25

    #@20f
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@211
    move-object/from16 v16, v0

    #@213
    move-object/from16 v0, v25

    #@215
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@217
    move/from16 v17, v0

    #@219
    .line 986
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@21b
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@21d
    move/from16 v18, v0

    #@21f
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@221
    move-object/from16 v19, v0

    #@223
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@225
    move-object/from16 v20, v0

    #@227
    .line 985
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    #@22a
    .line 988
    move-object/from16 v0, p3

    #@22c
    move-object/from16 v1, v25

    #@22e
    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    #@231
    move-result-object v15

    #@232
    .line 989
    .local v15, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v14, Lcom/android/server/am/ConnectionRecord;

    #@234
    move-object/from16 v16, v22

    #@236
    move-object/from16 v17, p5

    #@238
    move/from16 v18, p6

    #@23a
    move/from16 v19, v27

    #@23c
    move-object/from16 v20, v26

    #@23e
    invoke-direct/range {v14 .. v20}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    #@241
    .line 992
    .local v14, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@244
    move-result-object v23

    #@245
    .line 993
    .local v23, "binder":Landroid/os/IBinder;
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@247
    move-object/from16 v0, v23

    #@249
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24c
    move-result-object v28

    #@24d
    check-cast v28, Ljava/util/ArrayList;

    #@24f
    .line 994
    .local v28, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v28, :cond_f

    #@251
    .line 995
    new-instance v28, Ljava/util/ArrayList;

    #@253
    .end local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@256
    .line 996
    .restart local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@258
    move-object/from16 v0, v23

    #@25a
    move-object/from16 v1, v28

    #@25c
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25f
    .line 998
    :cond_f
    move-object/from16 v0, v28

    #@261
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@264
    .line 999
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@266
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@269
    .line 1000
    if-eqz v22, :cond_11

    #@26b
    .line 1001
    move-object/from16 v0, v22

    #@26d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@26f
    if-nez v4, :cond_10

    #@271
    .line 1002
    new-instance v4, Ljava/util/HashSet;

    #@273
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@276
    move-object/from16 v0, v22

    #@278
    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@27a
    .line 1004
    :cond_10
    move-object/from16 v0, v22

    #@27c
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@27e
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@281
    .line 1006
    :cond_11
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@283
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@285
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@288
    .line 1007
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@28a
    and-int/lit8 v4, v4, 0x8

    #@28c
    if-eqz v4, :cond_12

    #@28e
    .line 1008
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@290
    const/4 v5, 0x1

    #@291
    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@293
    .line 1010
    :cond_12
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@295
    const/high16 v5, 0x1000000

    #@297
    and-int/2addr v4, v5

    #@298
    if-eqz v4, :cond_13

    #@29a
    .line 1011
    const/4 v4, 0x1

    #@29b
    iput-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@29d
    .line 1013
    :cond_13
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@29f
    if-eqz v4, :cond_14

    #@2a1
    .line 1014
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2a3
    const/4 v5, 0x1

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    invoke-direct {v0, v4, v14, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@2a9
    .line 1016
    :cond_14
    move-object/from16 v0, p0

    #@2ab
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@2ad
    move-object/from16 v0, v23

    #@2af
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b2
    move-result-object v28

    #@2b3
    .end local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v28, Ljava/util/ArrayList;

    #@2b5
    .line 1017
    .restart local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v28, :cond_15

    #@2b7
    .line 1018
    new-instance v28, Ljava/util/ArrayList;

    #@2b9
    .end local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@2bc
    .line 1019
    .restart local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    #@2be
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@2c0
    move-object/from16 v0, v23

    #@2c2
    move-object/from16 v1, v28

    #@2c4
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c7
    .line 1021
    :cond_15
    move-object/from16 v0, v28

    #@2c9
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2cc
    .line 1023
    and-int/lit8 v4, p6, 0x1

    #@2ce
    if-eqz v4, :cond_16

    #@2d0
    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2d3
    move-result-wide v4

    #@2d4
    iput-wide v4, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@2d6
    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    #@2d9
    move-result v18

    #@2da
    const/16 v20, 0x0

    #@2dc
    move-object/from16 v16, p0

    #@2de
    move-object/from16 v17, v6

    #@2e0
    move/from16 v19, v12

    #@2e2
    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e5
    move-result-object v4

    #@2e6
    if-eqz v4, :cond_16

    #@2e8
    .line 1027
    const/4 v4, 0x0

    #@2e9
    .line 1073
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2ec
    .line 1027
    return v4

    #@2ed
    .line 1031
    :cond_16
    :try_start_1
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2ef
    if-eqz v4, :cond_19

    #@2f1
    .line 1032
    const/high16 v4, 0x8000000

    #@2f3
    and-int v4, v4, p6

    #@2f5
    if-eqz v4, :cond_17

    #@2f7
    .line 1033
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2f9
    const/4 v5, 0x1

    #@2fa
    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@2fc
    .line 1035
    :cond_17
    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@2fe
    if-eqz v4, :cond_18

    #@300
    .line 1036
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@302
    const/4 v5, 0x1

    #@303
    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@305
    .line 1039
    :cond_18
    move-object/from16 v0, p0

    #@307
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@309
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@30b
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@30d
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@30f
    if-nez v4, :cond_1b

    #@311
    .line 1040
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@313
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@315
    :goto_3
    iget-object v9, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@317
    .line 1039
    invoke-virtual {v5, v8, v4, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@31a
    .line 1041
    move-object/from16 v0, p0

    #@31c
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@31e
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@320
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@323
    .line 1049
    :cond_19
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@325
    if-eqz v4, :cond_1c

    #@327
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@329
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32b
    if-eqz v4, :cond_1c

    #@32d
    .line 1053
    :try_start_2
    iget-object v4, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@32f
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@331
    iget-object v8, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@333
    iget-object v8, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@335
    invoke-interface {v4, v5, v8}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@338
    .line 1063
    :goto_4
    :try_start_3
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@33a
    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@33c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@33f
    move-result v4

    #@340
    const/4 v5, 0x1

    #@341
    if-ne v4, v5, :cond_1a

    #@343
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@345
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@347
    if-eqz v4, :cond_1a

    #@349
    .line 1064
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@34b
    const/4 v5, 0x1

    #@34c
    move-object/from16 v0, p0

    #@34e
    invoke-direct {v0, v6, v4, v12, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    #@351
    .line 1070
    :cond_1a
    :goto_5
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    #@353
    move-object/from16 v0, p0

    #@355
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@358
    move-result-object v4

    #@359
    invoke-virtual {v4, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35c
    .line 1073
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35f
    .line 1076
    const/4 v4, 0x1

    #@360
    return v4

    #@361
    .line 1039
    :cond_1b
    const/4 v4, 0x1

    #@362
    goto :goto_3

    #@363
    .line 1054
    :catch_0
    move-exception v29

    #@364
    .line 1055
    .local v29, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@366
    new-instance v5, Ljava/lang/StringBuilder;

    #@368
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36b
    const-string/jumbo v8, "Failure sending service "

    #@36e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@371
    move-result-object v5

    #@372
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@374
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v5

    #@378
    .line 1056
    const-string/jumbo v8, " to connection "

    #@37b
    .line 1055
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v5

    #@37f
    .line 1056
    iget-object v8, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@381
    invoke-interface {v8}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@384
    move-result-object v8

    #@385
    .line 1055
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@388
    move-result-object v5

    #@389
    .line 1057
    const-string/jumbo v8, " (in "

    #@38c
    .line 1055
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38f
    move-result-object v5

    #@390
    .line 1057
    iget-object v8, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@392
    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@394
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@396
    .line 1055
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v5

    #@39a
    .line 1057
    const-string/jumbo v8, ")"

    #@39d
    .line 1055
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v5

    #@3a1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a4
    move-result-object v5

    #@3a5
    move-object/from16 v0, v29

    #@3a7
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3aa
    goto :goto_4

    #@3ab
    .line 1072
    .end local v14    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v15    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v23    # "binder":Landroid/os/IBinder;
    .end local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v29    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@3ac
    .line 1073
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3af
    .line 1072
    throw v4

    #@3b0
    .line 1066
    .restart local v14    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v15    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v23    # "binder":Landroid/os/IBinder;
    .restart local v28    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1c
    :try_start_5
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@3b2
    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@3b4
    if-nez v4, :cond_1a

    #@3b6
    .line 1067
    iget-object v4, v15, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@3b8
    const/4 v5, 0x0

    #@3b9
    move-object/from16 v0, p0

    #@3bb
    invoke-direct {v0, v6, v4, v12, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3be
    goto :goto_5
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "killProcess"    # Z
    .param p6, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2432
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@1
    .line 2434
    .local v7, "didSomething":Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2435
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 2438
    :cond_0
    const/4 v0, -0x1

    #@b
    if-ne p3, v0, :cond_2

    #@d
    .line 2439
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v8, v0, -0x1

    #@15
    .end local v7    # "didSomething":Z
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_3

    #@17
    .line 2441
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@1f
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@21
    move-object v0, p0

    #@22
    move-object v1, p1

    #@23
    move-object v2, p2

    #@24
    move v3, p4

    #@25
    move/from16 v4, p6

    #@27
    move v5, p5

    #@28
    .line 2440
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    #@2b
    move-result v0

    #@2c
    or-int/2addr v7, v0

    #@2d
    .line 2442
    .local v7, "didSomething":Z
    if-nez p6, :cond_1

    #@2f
    if-eqz v7, :cond_1

    #@31
    .line 2443
    const/4 v0, 0x1

    #@32
    return v0

    #@33
    .line 2439
    :cond_1
    add-int/lit8 v8, v8, -0x1

    #@35
    goto :goto_0

    #@36
    .line 2447
    .end local v8    # "i":I
    .local v7, "didSomething":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v9

    #@3c
    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@3e
    .line 2448
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v9, :cond_3

    #@40
    .line 2449
    iget-object v6, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@42
    .local v6, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    move-object v2, p2

    #@45
    move v3, p4

    #@46
    move/from16 v4, p6

    #@48
    move v5, p5

    #@49
    .line 2450
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    #@4c
    move-result v7

    #@4d
    .line 2455
    .end local v6    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v7    # "didSomething":Z
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@4f
    if-eqz v0, :cond_5

    #@51
    .line 2456
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v0

    #@57
    add-int/lit8 v8, v0, -0x1

    #@59
    .restart local v8    # "i":I
    :goto_1
    if-ltz v8, :cond_4

    #@5b
    .line 2457
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    #@63
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@66
    .line 2456
    add-int/lit8 v8, v8, -0x1

    #@68
    goto :goto_1

    #@69
    .line 2459
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@6e
    .line 2461
    .end local v8    # "i":I
    :cond_5
    return v7
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
    .line 2465
    new-instance v9, Ljava/util/ArrayList;

    #@4
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 2466
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@c
    move-result-object v6

    #@d
    .line 2467
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
    .line 2468
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@1b
    .line 2469
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
    .line 2470
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 2467
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2475
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
    .line 2476
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@3b
    .line 2477
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@3d
    if-eqz v0, :cond_2

    #@3f
    .line 2478
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    #@43
    and-int/lit8 v0, v0, 0x1

    #@45
    if-eqz v0, :cond_3

    #@47
    .line 2479
    sget-object v0, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "Stopping service "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, ": remove task"

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 2480
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@6c
    .line 2475
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    #@6e
    goto :goto_1

    #@6f
    .line 2482
    :cond_3
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@71
    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@73
    .line 2483
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@76
    move-result v3

    #@77
    move-object v4, p3

    #@78
    .line 2482
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@7b
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 2484
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@80
    if-eqz v0, :cond_2

    #@82
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@84
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@86
    if-eqz v0, :cond_2

    #@88
    .line 2488
    const/4 v0, 0x1

    #@89
    const/4 v3, 0x0

    #@8a
    :try_start_0
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@8d
    goto :goto_2

    #@8e
    .line 2489
    :catch_0
    move-exception v7

    #@8f
    .local v7, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_2

    #@90
    .line 2464
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "e":Landroid/os/TransactionTooLargeException;
    :cond_4
    return-void
.end method

.method collectServicesToDumpLocked(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "matcher"    # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService$ItemMatcher;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2864
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 2865
    .local v1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@a
    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getUsers()[I

    #@d
    move-result-object v5

    #@e
    .line 2866
    .local v5, "users":[I
    array-length v7, v5

    #@f
    :goto_0
    if-ge v6, v7, :cond_4

    #@11
    aget v4, v5, v6

    #@13
    .line 2867
    .local v4, "user":I
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@16
    move-result-object v3

    #@17
    .line 2868
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v8, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v8

    #@1d
    if-lez v8, :cond_3

    #@1f
    .line 2869
    const/4 v2, 0x0

    #@20
    .local v2, "si":I
    :goto_1
    iget-object v8, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@25
    move-result v8

    #@26
    if-ge v2, v8, :cond_3

    #@28
    .line 2870
    iget-object v8, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    #@30
    .line 2871
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@32
    invoke-virtual {p1, v0, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@35
    move-result v8

    #@36
    if-nez v8, :cond_1

    #@38
    .line 2869
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 2874
    :cond_1
    if-eqz p2, :cond_2

    #@3d
    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3f
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@41
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_0

    #@47
    .line 2877
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_2

    #@4b
    .line 2866
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "si":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 2882
    .end local v3    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v4    # "user":I
    :cond_4
    return-object v1
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
    .line 3257
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3259
    .local v15, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9
    monitor-enter v2

    #@a
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@d
    .line 3260
    move-object/from16 v0, p0

    #@f
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@13
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    #@16
    move-result-object v18

    #@17
    .line 3261
    .local v18, "users":[I
    const-string/jumbo v1, "all"

    #@1a
    move-object/from16 v0, p3

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 3262
    const/4 v1, 0x0

    #@23
    move-object/from16 v0, v18

    #@25
    array-length v3, v0

    #@26
    :goto_0
    if-ge v1, v3, :cond_a

    #@28
    aget v17, v18, v1

    #@2a
    .line 3263
    .local v17, "user":I
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@2e
    move/from16 v0, v17

    #@30
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v16

    #@34
    check-cast v16, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@36
    .line 3264
    .local v16, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v16, :cond_1

    #@38
    .line 3262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3267
    :cond_1
    move-object/from16 v0, v16

    #@3d
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@3f
    .line 3268
    .local v8, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    #@40
    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@43
    move-result v4

    #@44
    if-ge v11, v4, :cond_0

    #@46
    .line 3269
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v14

    #@4a
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@4c
    .line 3270
    .local v14, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 3268
    add-int/lit8 v11, v11, 0x1

    #@51
    goto :goto_1

    #@52
    .line 3274
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    :cond_2
    if-eqz p3, :cond_5

    #@54
    .line 3275
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    move-result-object v9

    #@58
    .line 3276
    .local v9, "componentName":Landroid/content/ComponentName;
    :goto_2
    const/4 v13, 0x0

    #@59
    .line 3277
    .local v13, "objectId":I
    if-nez v9, :cond_3

    #@5b
    .line 3280
    const/16 v1, 0x10

    #@5d
    :try_start_1
    move-object/from16 v0, p3

    #@5f
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    move-result v13

    #@63
    .line 3281
    const/16 p3, 0x0

    #@65
    .line 3282
    .local p3, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@66
    .line 3287
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "name":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v1, 0x0

    #@67
    :try_start_2
    move-object/from16 v0, v18

    #@69
    array-length v3, v0

    #@6a
    :goto_4
    if-ge v1, v3, :cond_a

    #@6c
    aget v17, v18, v1

    #@6e
    .line 3288
    .restart local v17    # "user":I
    move-object/from16 v0, p0

    #@70
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@72
    move/from16 v0, v17

    #@74
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v16

    #@78
    check-cast v16, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@7a
    .line 3289
    .restart local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v16, :cond_6

    #@7c
    .line 3287
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@7e
    goto :goto_4

    #@7f
    .line 3275
    .end local v13    # "objectId":I
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    .local p3, "name":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    #@80
    goto :goto_2

    #@81
    .line 3283
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "objectId":I
    :catch_0
    move-exception v10

    #@82
    .local v10, "e":Ljava/lang/RuntimeException;
    goto :goto_3

    #@83
    .line 3292
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local p3    # "name":Ljava/lang/String;
    .restart local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v17    # "user":I
    :cond_6
    move-object/from16 v0, v16

    #@85
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@87
    .line 3293
    .restart local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    #@88
    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@8b
    move-result v4

    #@8c
    if-ge v11, v4, :cond_4

    #@8e
    .line 3294
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@91
    move-result-object v14

    #@92
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@94
    .line 3295
    .restart local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    if-eqz v9, :cond_8

    #@96
    .line 3296
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@98
    invoke-virtual {v4, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_7

    #@9e
    .line 3297
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    .line 3293
    :cond_7
    :goto_6
    add-int/lit8 v11, v11, 0x1

    #@a3
    goto :goto_5

    #@a4
    .line 3299
    :cond_8
    if-eqz p3, :cond_9

    #@a6
    .line 3300
    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@a8
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    move-object/from16 v0, p3

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@b1
    move-result v4

    #@b2
    if-eqz v4, :cond_7

    #@b4
    .line 3301
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b7
    goto :goto_6

    #@b8
    .line 3259
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v13    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    .end local v18    # "users":[I
    :catchall_0
    move-exception v1

    #@b9
    monitor-exit v2

    #@ba
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@bd
    throw v1

    #@be
    .line 3303
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

    #@c1
    move-result v4

    #@c2
    if-ne v4, v13, :cond_7

    #@c4
    .line 3304
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    goto :goto_6

    #@c8
    .end local v8    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    .end local v13    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "user":I
    :cond_a
    monitor-exit v2

    #@c9
    .line 3259
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@cc
    .line 3311
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@cf
    move-result v1

    #@d0
    if-gtz v1, :cond_b

    #@d2
    .line 3312
    const/4 v1, 0x0

    #@d3
    return v1

    #@d4
    .line 3315
    :cond_b
    const/4 v12, 0x0

    #@d5
    .line 3316
    .local v12, "needSep":Z
    const/4 v11, 0x0

    #@d6
    .restart local v11    # "i":I
    :goto_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@d9
    move-result v1

    #@da
    if-ge v11, v1, :cond_d

    #@dc
    .line 3317
    if-eqz v12, :cond_c

    #@de
    .line 3318
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@e1
    .line 3320
    :cond_c
    const/4 v12, 0x1

    #@e2
    .line 3321
    const-string/jumbo v2, ""

    #@e5
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e8
    move-result-object v5

    #@e9
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@eb
    move-object/from16 v1, p0

    #@ed
    move-object/from16 v3, p1

    #@ef
    move-object/from16 v4, p2

    #@f1
    move-object/from16 v6, p4

    #@f3
    move/from16 v7, p6

    #@f5
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    #@f8
    .line 3316
    add-int/lit8 v11, v11, 0x1

    #@fa
    goto :goto_7

    #@fb
    .line 3323
    :cond_d
    const/4 v1, 0x1

    #@fc
    return v1
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v5

    #@5
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v4

    #@9
    .line 2787
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    #@c
    move-result-object v3

    #@d
    .line 2788
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    #@f
    .line 2789
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
    .line 2790
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/ArrayList;

    #@21
    .line 2791
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
    .line 2792
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
    .line 2793
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
    .line 2791
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2789
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_0

    #@41
    .line 2798
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
    .line 2736
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2738
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v9

    #@9
    .line 2739
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v2

    #@d
    .line 2742
    .local v2, "ident":J
    :try_start_0
    const-string/jumbo v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@10
    .line 2741
    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@13
    move-result v12

    #@14
    if-nez v12, :cond_2

    #@16
    .line 2744
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@1a
    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getUsers()[I

    #@1d
    move-result-object v11

    #@1e
    .line 2745
    .local v11, "users":[I
    const/4 v8, 0x0

    #@1f
    .local v8, "ui":I
    :goto_0
    array-length v12, v11

    #@20
    if-ge v8, v12, :cond_1

    #@22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v12

    #@26
    if-ge v12, p1, :cond_1

    #@28
    .line 2746
    aget v12, v11, v8

    #@2a
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@2d
    move-result-object v0

    #@2e
    .line 2747
    .local v0, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    #@2f
    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@32
    move-result v12

    #@33
    if-ge v1, v12, :cond_0

    #@35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v12

    #@39
    if-ge v12, p1, :cond_0

    #@3b
    .line 2748
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@41
    .line 2749
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@44
    move-result-object v12

    #@45
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 2747
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 2745
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 2753
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@4f
    .restart local v1    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v12

    #@55
    if-ge v1, v12, :cond_5

    #@57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5a
    move-result v12

    #@5b
    if-ge v12, p1, :cond_5

    #@5d
    .line 2754
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v5

    #@63
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@65
    .line 2756
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@68
    move-result-object v4

    #@69
    .line 2757
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@6b
    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@6d
    .line 2758
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 2753
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_2

    #@73
    .line 2761
    .end local v1    # "i":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "ui":I
    .end local v11    # "users":[I
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@76
    move-result v10

    #@77
    .line 2762
    .local v10, "userId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    #@7a
    move-result-object v0

    #@7b
    .line 2763
    .restart local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    #@7c
    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@7f
    move-result v12

    #@80
    if-ge v1, v12, :cond_3

    #@82
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v12

    #@86
    if-ge v12, p1, :cond_3

    #@88
    .line 2764
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@8b
    move-result-object v7

    #@8c
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@8e
    .line 2765
    .restart local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95
    .line 2763
    add-int/lit8 v1, v1, 0x1

    #@97
    goto :goto_3

    #@98
    .line 2768
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v1, 0x0

    #@99
    :goto_4
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result v12

    #@9f
    if-ge v1, v12, :cond_5

    #@a1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v12

    #@a5
    if-ge v12, p1, :cond_5

    #@a7
    .line 2769
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@a9
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v5

    #@ad
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@af
    .line 2770
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    #@b1
    if-ne v12, v10, :cond_4

    #@b3
    .line 2772
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    #@b6
    move-result-object v4

    #@b7
    .line 2773
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@b9
    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@bb
    .line 2774
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@be
    .line 2768
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@c0
    goto :goto_4

    #@c1
    .line 2779
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "userId":I
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c4
    .line 2782
    return-object v6

    #@c5
    .line 2778
    .end local v1    # "i":I
    :catchall_0
    move-exception v12

    #@c6
    .line 2779
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c9
    .line 2778
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
    .line 2528
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
    .line 2529
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
    .line 2530
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
    .line 2528
    add-int/lit8 v15, v15, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2532
    .end local v18    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@2f
    .line 2533
    move-object/from16 v0, p1

    #@31
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@33
    move-object/from16 v22, v0

    #@35
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@38
    .line 2535
    const/16 v22, 0x0

    #@3a
    move/from16 v0, v22

    #@3c
    move-object/from16 v1, p1

    #@3e
    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@40
    .line 2538
    move-object/from16 v0, p1

    #@42
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@44
    move-object/from16 v22, v0

    #@46
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@49
    move-result v22

    #@4a
    add-int/lit8 v15, v22, -0x1

    #@4c
    :goto_1
    if-ltz v15, :cond_a

    #@4e
    .line 2539
    move-object/from16 v0, p1

    #@50
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@52
    move-object/from16 v22, v0

    #@54
    move-object/from16 v0, v22

    #@56
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v21

    #@5a
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@5c
    .line 2540
    .local v21, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@5e
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@60
    move-object/from16 v22, v0

    #@62
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@65
    move-result-object v23

    #@66
    monitor-enter v23

    #@67
    .line 2541
    :try_start_0
    move-object/from16 v0, v21

    #@69
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@6b
    move-object/from16 v22, v0

    #@6d
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    monitor-exit v23

    #@71
    .line 2543
    move-object/from16 v0, v21

    #@73
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@75
    move-object/from16 v22, v0

    #@77
    move-object/from16 v0, v22

    #@79
    move-object/from16 v1, p1

    #@7b
    if-eq v0, v1, :cond_1

    #@7d
    move-object/from16 v0, v21

    #@7f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@81
    move-object/from16 v22, v0

    #@83
    if-eqz v22, :cond_1

    #@85
    move-object/from16 v0, v21

    #@87
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@89
    move-object/from16 v22, v0

    #@8b
    move-object/from16 v0, v22

    #@8d
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@8f
    move/from16 v22, v0

    #@91
    if-eqz v22, :cond_4

    #@93
    .line 2546
    :cond_1
    :goto_2
    const/16 v22, 0x0

    #@95
    move-object/from16 v0, v22

    #@97
    move-object/from16 v1, v21

    #@99
    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9b
    .line 2547
    const/16 v22, 0x0

    #@9d
    move-object/from16 v0, v22

    #@9f
    move-object/from16 v1, v21

    #@a1
    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@a3
    .line 2548
    const/16 v22, 0x0

    #@a5
    move/from16 v0, v22

    #@a7
    move-object/from16 v1, v21

    #@a9
    iput v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@ab
    .line 2549
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    #@ae
    .line 2550
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@b2
    move-object/from16 v22, v0

    #@b4
    move-object/from16 v0, v22

    #@b6
    move-object/from16 v1, v21

    #@b8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@bb
    move-result v22

    #@bc
    if-eqz v22, :cond_2

    #@be
    .line 2554
    :cond_2
    move-object/from16 v0, v21

    #@c0
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@c2
    move-object/from16 v22, v0

    #@c4
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    #@c7
    move-result v16

    #@c8
    .line 2555
    .local v16, "numClients":I
    add-int/lit8 v9, v16, -0x1

    #@ca
    .local v9, "bindingi":I
    :goto_3
    if-ltz v9, :cond_9

    #@cc
    .line 2556
    move-object/from16 v0, v21

    #@ce
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d0
    move-object/from16 v22, v0

    #@d2
    move-object/from16 v0, v22

    #@d4
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d7
    move-result-object v8

    #@d8
    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    #@da
    .line 2559
    .local v8, "b":Lcom/android/server/am/IntentBindRecord;
    const/16 v22, 0x0

    #@dc
    move-object/from16 v0, v22

    #@de
    iput-object v0, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@e0
    .line 2560
    const/16 v22, 0x0

    #@e2
    move/from16 v0, v22

    #@e4
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@e6
    const/16 v22, 0x0

    #@e8
    move/from16 v0, v22

    #@ea
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@ec
    const/16 v22, 0x0

    #@ee
    move/from16 v0, v22

    #@f0
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@f2
    .line 2565
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@f4
    move-object/from16 v22, v0

    #@f6
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    #@f9
    move-result v22

    #@fa
    add-int/lit8 v7, v22, -0x1

    #@fc
    .local v7, "appi":I
    :goto_4
    if-ltz v7, :cond_8

    #@fe
    .line 2566
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@100
    move-object/from16 v22, v0

    #@102
    move-object/from16 v0, v22

    #@104
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@107
    move-result-object v17

    #@108
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    #@10a
    .line 2568
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v17

    #@10c
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@10e
    move/from16 v22, v0

    #@110
    if-nez v22, :cond_3

    #@112
    move-object/from16 v0, v17

    #@114
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@116
    move-object/from16 v22, v0

    #@118
    if-nez v22, :cond_5

    #@11a
    .line 2565
    :cond_3
    :goto_5
    add-int/lit8 v7, v7, -0x1

    #@11c
    goto :goto_4

    #@11d
    .line 2540
    .end local v7    # "appi":I
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v9    # "bindingi":I
    .end local v16    # "numClients":I
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v22

    #@11e
    monitor-exit v23

    #@11f
    throw v22

    #@120
    .line 2544
    :cond_4
    move-object/from16 v0, v21

    #@122
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@124
    move-object/from16 v22, v0

    #@126
    move-object/from16 v0, v22

    #@128
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@12a
    move-object/from16 v22, v0

    #@12c
    move-object/from16 v0, v22

    #@12e
    move-object/from16 v1, v21

    #@130
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@133
    goto/16 :goto_2

    #@135
    .line 2574
    .restart local v7    # "appi":I
    .restart local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v9    # "bindingi":I
    .restart local v16    # "numClients":I
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v0, v8, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@137
    move-object/from16 v22, v0

    #@139
    move-object/from16 v0, v22

    #@13b
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13e
    move-result-object v6

    #@13f
    check-cast v6, Lcom/android/server/am/AppBindRecord;

    #@141
    .line 2575
    .local v6, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v14, 0x0

    #@142
    .line 2576
    .local v14, "hasCreate":Z
    iget-object v0, v6, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@144
    move-object/from16 v22, v0

    #@146
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@149
    move-result v22

    #@14a
    add-int/lit8 v12, v22, -0x1

    #@14c
    .local v12, "conni":I
    :goto_6
    if-ltz v12, :cond_6

    #@14e
    .line 2577
    iget-object v0, v6, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@150
    move-object/from16 v22, v0

    #@152
    move-object/from16 v0, v22

    #@154
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@157
    move-result-object v11

    #@158
    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    #@15a
    .line 2578
    .local v11, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@15c
    move/from16 v22, v0

    #@15e
    and-int/lit8 v22, v22, 0x31

    #@160
    .line 2579
    const/16 v23, 0x1

    #@162
    .line 2578
    move/from16 v0, v22

    #@164
    move/from16 v1, v23

    #@166
    if-ne v0, v1, :cond_7

    #@168
    .line 2580
    const/4 v14, 0x1

    #@169
    .line 2584
    .end local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    if-nez v14, :cond_3

    #@16b
    goto :goto_5

    #@16c
    .line 2576
    .restart local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v12, v12, -0x1

    #@16e
    goto :goto_6

    #@16f
    .line 2555
    .end local v6    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v11    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "conni":I
    .end local v14    # "hasCreate":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    add-int/lit8 v9, v9, -0x1

    #@171
    goto/16 :goto_3

    #@173
    .line 2538
    .end local v7    # "appi":I
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    :cond_9
    add-int/lit8 v15, v15, -0x1

    #@175
    goto/16 :goto_1

    #@177
    .line 2598
    .end local v9    # "bindingi":I
    .end local v16    # "numClients":I
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    move-object/from16 v0, p1

    #@179
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@17b
    move/from16 v22, v0

    #@17d
    move-object/from16 v0, p0

    #@17f
    move/from16 v1, v22

    #@181
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@184
    move-result-object v20

    #@185
    .line 2601
    .local v20, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, p1

    #@187
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@189
    move-object/from16 v22, v0

    #@18b
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    #@18e
    move-result v22

    #@18f
    add-int/lit8 v15, v22, -0x1

    #@191
    :goto_7
    if-ltz v15, :cond_12

    #@193
    .line 2602
    move-object/from16 v0, p1

    #@195
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@197
    move-object/from16 v22, v0

    #@199
    move-object/from16 v0, v22

    #@19b
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@19e
    move-result-object v21

    #@19f
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@1a1
    .line 2606
    .restart local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    #@1a3
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@1a5
    move/from16 v22, v0

    #@1a7
    if-nez v22, :cond_b

    #@1a9
    .line 2607
    move-object/from16 v0, p1

    #@1ab
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@1ad
    move-object/from16 v22, v0

    #@1af
    move-object/from16 v0, v22

    #@1b1
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@1b4
    .line 2612
    :cond_b
    move-object/from16 v0, v20

    #@1b6
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@1b8
    move-object/from16 v22, v0

    #@1ba
    move-object/from16 v0, v21

    #@1bc
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1be
    move-object/from16 v23, v0

    #@1c0
    invoke-virtual/range {v22 .. v23}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c3
    move-result-object v13

    #@1c4
    check-cast v13, Lcom/android/server/am/ServiceRecord;

    #@1c6
    .line 2613
    .local v13, "curRec":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@1c8
    if-eq v13, v0, :cond_d

    #@1ca
    .line 2614
    if-eqz v13, :cond_c

    #@1cc
    .line 2615
    sget-object v22, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@1ce
    new-instance v23, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    const-string/jumbo v24, "Service "

    #@1d6
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v23

    #@1da
    move-object/from16 v0, v23

    #@1dc
    move-object/from16 v1, v21

    #@1de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v23

    #@1e2
    const-string/jumbo v24, " in process "

    #@1e5
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v23

    #@1e9
    move-object/from16 v0, v23

    #@1eb
    move-object/from16 v1, p1

    #@1ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v23

    #@1f1
    .line 2616
    const-string/jumbo v24, " not same as in map: "

    #@1f4
    .line 2615
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v23

    #@1f8
    move-object/from16 v0, v23

    #@1fa
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v23

    #@1fe
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v23

    #@202
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@205
    .line 2601
    :cond_c
    :goto_8
    add-int/lit8 v15, v15, -0x1

    #@207
    goto :goto_7

    #@208
    .line 2623
    :cond_d
    if-eqz p2, :cond_e

    #@20a
    move-object/from16 v0, v21

    #@20c
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@20e
    move/from16 v22, v0

    #@210
    const/16 v23, 0x2

    #@212
    move/from16 v0, v22

    #@214
    move/from16 v1, v23

    #@216
    if-lt v0, v1, :cond_e

    #@218
    move-object/from16 v0, v21

    #@21a
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@21c
    move-object/from16 v22, v0

    #@21e
    move-object/from16 v0, v22

    #@220
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@222
    move-object/from16 v22, v0

    #@224
    move-object/from16 v0, v22

    #@226
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@228
    move/from16 v22, v0

    #@22a
    and-int/lit8 v22, v22, 0x8

    #@22c
    if-nez v22, :cond_e

    #@22e
    .line 2625
    sget-object v22, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@230
    new-instance v23, Ljava/lang/StringBuilder;

    #@232
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v24, "Service crashed "

    #@238
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v23

    #@23c
    move-object/from16 v0, v21

    #@23e
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@240
    move/from16 v24, v0

    #@242
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v23

    #@246
    .line 2626
    const-string/jumbo v24, " times, stopping: "

    #@249
    .line 2625
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v23

    #@24d
    move-object/from16 v0, v23

    #@24f
    move-object/from16 v1, v21

    #@251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v23

    #@255
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@258
    move-result-object v23

    #@259
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25c
    .line 2627
    const/16 v22, 0x4

    #@25e
    move/from16 v0, v22

    #@260
    new-array v0, v0, [Ljava/lang/Object;

    #@262
    move-object/from16 v22, v0

    #@264
    .line 2628
    move-object/from16 v0, v21

    #@266
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@268
    move/from16 v23, v0

    #@26a
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26d
    move-result-object v23

    #@26e
    const/16 v24, 0x0

    #@270
    aput-object v23, v22, v24

    #@272
    move-object/from16 v0, v21

    #@274
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@276
    move/from16 v23, v0

    #@278
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27b
    move-result-object v23

    #@27c
    const/16 v24, 0x1

    #@27e
    aput-object v23, v22, v24

    #@280
    move-object/from16 v0, v21

    #@282
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@284
    move-object/from16 v23, v0

    #@286
    const/16 v24, 0x2

    #@288
    aput-object v23, v22, v24

    #@28a
    move-object/from16 v0, p1

    #@28c
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@28e
    move/from16 v23, v0

    #@290
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@293
    move-result-object v23

    #@294
    const/16 v24, 0x3

    #@296
    aput-object v23, v22, v24

    #@298
    .line 2627
    const/16 v23, 0x7552

    #@29a
    move/from16 v0, v23

    #@29c
    move-object/from16 v1, v22

    #@29e
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2a1
    .line 2629
    move-object/from16 v0, p0

    #@2a3
    move-object/from16 v1, v21

    #@2a5
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@2a8
    goto/16 :goto_8

    #@2aa
    .line 2630
    :cond_e
    if-eqz p2, :cond_11

    #@2ac
    .line 2631
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2b0
    move-object/from16 v22, v0

    #@2b2
    move-object/from16 v0, v22

    #@2b4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@2b6
    move-object/from16 v22, v0

    #@2b8
    move-object/from16 v0, v21

    #@2ba
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@2bc
    move/from16 v23, v0

    #@2be
    const/16 v24, 0x0

    #@2c0
    invoke-virtual/range {v22 .. v24}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    #@2c3
    move-result v22

    #@2c4
    if-eqz v22, :cond_11

    #@2c6
    .line 2634
    const/16 v22, 0x1

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    move-object/from16 v1, v21

    #@2cc
    move/from16 v2, v22

    #@2ce
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    #@2d1
    move-result v10

    #@2d2
    .line 2639
    .local v10, "canceled":Z
    move-object/from16 v0, v21

    #@2d4
    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@2d6
    move/from16 v22, v0

    #@2d8
    if-eqz v22, :cond_c

    #@2da
    move-object/from16 v0, v21

    #@2dc
    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@2de
    move/from16 v22, v0

    #@2e0
    if-nez v22, :cond_f

    #@2e2
    if-eqz v10, :cond_c

    #@2e4
    .line 2640
    :cond_f
    move-object/from16 v0, v21

    #@2e6
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@2e8
    move-object/from16 v22, v0

    #@2ea
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@2ed
    move-result v22

    #@2ee
    if-nez v22, :cond_c

    #@2f0
    .line 2641
    const/16 v22, 0x0

    #@2f2
    move/from16 v0, v22

    #@2f4
    move-object/from16 v1, v21

    #@2f6
    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@2f8
    .line 2642
    move-object/from16 v0, v21

    #@2fa
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@2fc
    move-object/from16 v22, v0

    #@2fe
    if-eqz v22, :cond_10

    #@300
    .line 2643
    move-object/from16 v0, v21

    #@302
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@304
    move-object/from16 v22, v0

    #@306
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@30a
    move-object/from16 v23, v0

    #@30c
    move-object/from16 v0, v23

    #@30e
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@310
    move-object/from16 v23, v0

    #@312
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@315
    move-result v23

    #@316
    .line 2644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@319
    move-result-wide v24

    #@31a
    .line 2643
    const/16 v26, 0x0

    #@31c
    move-object/from16 v0, v22

    #@31e
    move/from16 v1, v26

    #@320
    move/from16 v2, v23

    #@322
    move-wide/from16 v3, v24

    #@324
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@327
    .line 2646
    :cond_10
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@32a
    move-result v22

    #@32b
    if-nez v22, :cond_c

    #@32d
    .line 2648
    move-object/from16 v0, p0

    #@32f
    move-object/from16 v1, v21

    #@331
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@334
    goto/16 :goto_8

    #@336
    .line 2632
    .end local v10    # "canceled":Z
    :cond_11
    move-object/from16 v0, p0

    #@338
    move-object/from16 v1, v21

    #@33a
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@33d
    goto/16 :goto_8

    #@33f
    .line 2655
    .end local v13    # "curRec":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_12
    if-nez p2, :cond_16

    #@341
    .line 2656
    move-object/from16 v0, p1

    #@343
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@345
    move-object/from16 v22, v0

    #@347
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@34a
    .line 2659
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@34e
    move-object/from16 v22, v0

    #@350
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@353
    move-result v22

    #@354
    add-int/lit8 v15, v22, -0x1

    #@356
    :goto_9
    if-ltz v15, :cond_14

    #@358
    .line 2660
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@35c
    move-object/from16 v22, v0

    #@35e
    move-object/from16 v0, v22

    #@360
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@363
    move-result-object v19

    #@364
    check-cast v19, Lcom/android/server/am/ServiceRecord;

    #@366
    .line 2661
    .local v19, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v19

    #@368
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@36a
    move-object/from16 v22, v0

    #@36c
    move-object/from16 v0, p1

    #@36e
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@370
    move-object/from16 v23, v0

    #@372
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@375
    move-result v22

    #@376
    if-eqz v22, :cond_13

    #@378
    .line 2662
    move-object/from16 v0, v19

    #@37a
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@37c
    move-object/from16 v22, v0

    #@37e
    move-object/from16 v0, v22

    #@380
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@382
    move-object/from16 v22, v0

    #@384
    move-object/from16 v0, v22

    #@386
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@388
    move/from16 v22, v0

    #@38a
    move-object/from16 v0, p1

    #@38c
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@38e
    move-object/from16 v23, v0

    #@390
    move-object/from16 v0, v23

    #@392
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@394
    move/from16 v23, v0

    #@396
    move/from16 v0, v22

    #@398
    move/from16 v1, v23

    #@39a
    if-ne v0, v1, :cond_13

    #@39c
    .line 2663
    move-object/from16 v0, p0

    #@39e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@3a0
    move-object/from16 v22, v0

    #@3a2
    move-object/from16 v0, v22

    #@3a4
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3a7
    .line 2664
    move-object/from16 v0, p0

    #@3a9
    move-object/from16 v1, v19

    #@3ab
    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    #@3ae
    .line 2659
    :cond_13
    add-int/lit8 v15, v15, -0x1

    #@3b0
    goto :goto_9

    #@3b1
    .line 2667
    .end local v19    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    move-object/from16 v0, p0

    #@3b3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3b5
    move-object/from16 v22, v0

    #@3b7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@3ba
    move-result v22

    #@3bb
    add-int/lit8 v15, v22, -0x1

    #@3bd
    :goto_a
    if-ltz v15, :cond_16

    #@3bf
    .line 2668
    move-object/from16 v0, p0

    #@3c1
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@3c3
    move-object/from16 v22, v0

    #@3c5
    move-object/from16 v0, v22

    #@3c7
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3ca
    move-result-object v19

    #@3cb
    check-cast v19, Lcom/android/server/am/ServiceRecord;

    #@3cd
    .line 2669
    .restart local v19    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v19

    #@3cf
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@3d1
    move-object/from16 v22, v0

    #@3d3
    move-object/from16 v0, p1

    #@3d5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@3d7
    move-object/from16 v23, v0

    #@3d9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3dc
    move-result v22

    #@3dd
    if-eqz v22, :cond_15

    #@3df
    .line 2670
    move-object/from16 v0, v19

    #@3e1
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3e3
    move-object/from16 v22, v0

    #@3e5
    move-object/from16 v0, v22

    #@3e7
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3e9
    move-object/from16 v22, v0

    #@3eb
    move-object/from16 v0, v22

    #@3ed
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3ef
    move/from16 v22, v0

    #@3f1
    move-object/from16 v0, p1

    #@3f3
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@3f5
    move-object/from16 v23, v0

    #@3f7
    move-object/from16 v0, v23

    #@3f9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3fb
    move/from16 v23, v0

    #@3fd
    move/from16 v0, v22

    #@3ff
    move/from16 v1, v23

    #@401
    if-ne v0, v1, :cond_15

    #@403
    .line 2671
    move-object/from16 v0, p0

    #@405
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@407
    move-object/from16 v22, v0

    #@409
    move-object/from16 v0, v22

    #@40b
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@40e
    .line 2667
    :cond_15
    add-int/lit8 v15, v15, -0x1

    #@410
    goto :goto_a

    #@411
    .line 2677
    .end local v19    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_16
    move-object/from16 v0, p0

    #@413
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@415
    move-object/from16 v22, v0

    #@417
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@41a
    move-result v15

    #@41b
    .line 2678
    :cond_17
    :goto_b
    if-lez v15, :cond_18

    #@41d
    .line 2679
    add-int/lit8 v15, v15, -0x1

    #@41f
    .line 2680
    move-object/from16 v0, p0

    #@421
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@423
    move-object/from16 v22, v0

    #@425
    move-object/from16 v0, v22

    #@427
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42a
    move-result-object v21

    #@42b
    check-cast v21, Lcom/android/server/am/ServiceRecord;

    #@42d
    .line 2681
    .restart local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    #@42f
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@431
    move-object/from16 v22, v0

    #@433
    move-object/from16 v0, v22

    #@435
    move-object/from16 v1, p1

    #@437
    if-ne v0, v1, :cond_17

    #@439
    .line 2682
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    #@43c
    .line 2683
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@440
    move-object/from16 v22, v0

    #@442
    move-object/from16 v0, v22

    #@444
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@447
    goto :goto_b

    #@448
    .line 2688
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_18
    move-object/from16 v0, p1

    #@44a
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@44c
    move-object/from16 v22, v0

    #@44e
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->clear()V

    #@451
    .line 2498
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 2693
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    #@2
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    #@5
    .line 2694
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@7
    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@9
    .line 2695
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 2696
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    #@11
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    #@13
    .line 2698
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    #@19
    .line 2699
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@1b
    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    #@1d
    .line 2700
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@1f
    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    #@21
    .line 2701
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@23
    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    #@25
    .line 2702
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@27
    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    #@29
    .line 2703
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@2e
    move-result v5

    #@2f
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    #@31
    .line 2704
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@33
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    #@35
    .line 2705
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@37
    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    #@39
    .line 2706
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@3b
    if-eqz v5, :cond_1

    #@3d
    .line 2707
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@3f
    or-int/lit8 v5, v5, 0x2

    #@41
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@43
    .line 2709
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@45
    if-eqz v5, :cond_2

    #@47
    .line 2710
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@49
    or-int/lit8 v5, v5, 0x1

    #@4b
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@4d
    .line 2712
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
    .line 2713
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@5b
    or-int/lit8 v5, v5, 0x4

    #@5d
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@5f
    .line 2715
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
    .line 2716
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@6b
    or-int/lit8 v5, v5, 0x8

    #@6d
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@6f
    .line 2719
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
    .line 2720
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@7b
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7e
    move-result-object v2

    #@7f
    check-cast v2, Ljava/util/ArrayList;

    #@81
    .line 2721
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
    .line 2722
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@8e
    .line 2723
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    #@90
    if-eqz v5, :cond_5

    #@92
    .line 2724
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
    .line 2725
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    #@9e
    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    #@a0
    .line 2726
    return-object v4

    #@a1
    .line 2721
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@a3
    goto :goto_1

    #@a4
    .line 2719
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    #@a6
    goto :goto_0

    #@a7
    .line 2730
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_7
    return-object v4
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3244
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceDumper;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move-object v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    #@c
    return-object v0
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v4

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v5

    #@8
    .line 620
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v6

    #@c
    const/4 v7, 0x0

    #@d
    const/4 v8, 0x0

    #@e
    const/4 v9, 0x0

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move-object v2, p2

    #@12
    move-object/from16 v3, p3

    #@14
    .line 618
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@17
    move-result-object v11

    #@18
    .line 622
    .local v11, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v12, 0x0

    #@19
    .line 623
    .local v12, "ret":Landroid/os/IBinder;
    if-eqz v11, :cond_1

    #@1b
    .line 625
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 626
    new-instance v0, Ljava/lang/SecurityException;

    #@21
    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Permission Denial: Accessing service from pid="

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@30
    move-result v2

    #@31
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 629
    const-string/jumbo v2, ", uid="

    #@38
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3f
    move-result v2

    #@40
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 630
    const-string/jumbo v2, " requires "

    #@47
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 630
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@4d
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 626
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@58
    throw v0

    #@59
    .line 632
    :cond_0
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@5b
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@5d
    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@5f
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@61
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v10

    #@65
    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    #@67
    .line 633
    .local v10, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v10, :cond_1

    #@69
    .line 634
    iget-object v12, v10, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@6b
    .line 638
    .end local v10    # "ib":Lcom/android/server/am/IntentBindRecord;
    .end local v12    # "ret":Landroid/os/IBinder;
    :cond_1
    return-object v12
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1577
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1578
    return-void

    #@a
    .line 1580
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1586
    sget-object v0, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Restarting service that is not needed: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1587
    return-void

    #@2a
    .line 1590
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@2c
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@33
    move-result v2

    #@34
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@36
    const/4 v4, 0x1

    #@37
    const/4 v5, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 1576
    :goto_0
    return-void

    #@3e
    .line 1591
    :catch_0
    move-exception v6

    #@3f
    .local v6, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2379
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
    .line 2380
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@11
    .line 2381
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@13
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 2382
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@1b
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 2381
    if-nez v2, :cond_1

    #@23
    .line 2383
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@25
    if-ne v2, p1, :cond_2

    #@27
    .line 2384
    :cond_1
    sget-object v2, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Forcing bringing down service: "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 2385
    const/4 v2, 0x0

    #@41
    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@43
    .line 2386
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@48
    .line 2387
    add-int/lit8 v0, v0, -0x1

    #@4a
    .line 2388
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@4d
    .line 2379
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 2378
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
    .line 1084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 1088
    .local v8, "origId":J
    if-eqz p1, :cond_1

    #@6
    .line 1090
    :try_start_0
    new-instance v5, Landroid/content/Intent$FilterComparison;

    #@8
    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@b
    .line 1091
    .local v5, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 1092
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_0

    #@15
    iget-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@17
    if-eqz v7, :cond_2

    #@19
    .line 1121
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
    .line 1124
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1083
    return-void

    #@27
    .line 1093
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_2
    :try_start_1
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@29
    .line 1094
    const/4 v7, 0x1

    #@2a
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@2c
    .line 1095
    const/4 v7, 0x1

    #@2d
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@2f
    .line 1096
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
    .line 1097
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Ljava/util/ArrayList;

    #@41
    .line 1098
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
    .line 1099
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    #@4e
    .line 1100
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
    .line 1098
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1111
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
    .line 1112
    :catch_0
    move-exception v4

    #@66
    .line 1113
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@68
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "Failure sending service "

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@76
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v10

    #@7a
    .line 1114
    const-string/jumbo v11, " to connection "

    #@7d
    .line 1113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    .line 1114
    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@83
    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@86
    move-result-object v11

    #@87
    .line 1113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    .line 1115
    const-string/jumbo v11, " (in "

    #@8e
    .line 1113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v10

    #@92
    .line 1115
    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@94
    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@96
    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@98
    .line 1113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v10

    #@9c
    .line 1115
    const-string/jumbo v11, ")"

    #@9f
    .line 1113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v10

    #@a7
    invoke-static {v7, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    goto :goto_2

    #@ab
    .line 1123
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    #@ac
    .line 1124
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@af
    .line 1123
    throw v7

    #@b0
    .line 1096
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "conni":I
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    #@b2
    goto :goto_0
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2088
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@2
    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    .line 2089
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@8
    .line 2090
    .local v0, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@a
    .line 2091
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/ArrayList;

    #@12
    .line 2092
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    #@14
    .line 2093
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 2094
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 2095
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 2098
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@24
    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@27
    .line 2099
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@29
    if-eqz v6, :cond_1

    #@2b
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@2d
    if-eq v6, p3, :cond_1

    #@2f
    .line 2100
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@31
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@33
    if-eqz v6, :cond_1

    #@35
    .line 2101
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@37
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@39
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@3c
    .line 2104
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@3e
    if-eq v6, p2, :cond_4

    #@40
    .line 2105
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@42
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@44
    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@47
    .line 2106
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@49
    and-int/lit8 v6, v6, 0x8

    #@4b
    if-eqz v6, :cond_2

    #@4d
    .line 2107
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@4f
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    #@52
    .line 2111
    :cond_2
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@54
    const/high16 v7, 0x1000000

    #@56
    and-int/2addr v6, v7

    #@57
    if-eqz v6, :cond_3

    #@59
    .line 2112
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    #@5c
    .line 2113
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@5e
    if-nez v6, :cond_3

    #@60
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@62
    if-eqz v6, :cond_3

    #@64
    .line 2114
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@66
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    #@69
    .line 2117
    :cond_3
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6b
    if-eqz v6, :cond_4

    #@6d
    .line 2118
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6f
    const/4 v7, 0x1

    #@70
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@73
    .line 2121
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@75
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    #@7b
    .line 2122
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_5

    #@7d
    .line 2123
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@80
    .line 2124
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v6

    #@84
    if-nez v6, :cond_5

    #@86
    .line 2125
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@88
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 2129
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8d
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@8f
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    #@91
    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@93
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@95
    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@97
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@99
    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@9b
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;)V

    #@9e
    .line 2131
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@a0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@a3
    move-result v6

    #@a4
    if-nez v6, :cond_6

    #@a6
    .line 2132
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@a8
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@aa
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@ac
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 2135
    :cond_6
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    #@b1
    if-nez v6, :cond_a

    #@b3
    .line 2138
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b5
    if-eqz v6, :cond_8

    #@b7
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b9
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@bb
    if-eqz v6, :cond_8

    #@bd
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@bf
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@c1
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@c4
    move-result v6

    #@c5
    if-nez v6, :cond_8

    #@c7
    .line 2139
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@c9
    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@cb
    .line 2138
    if-eqz v6, :cond_8

    #@cd
    .line 2141
    :try_start_0
    const-string/jumbo v6, "unbind"

    #@d0
    const/4 v7, 0x0

    #@d1
    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    #@d4
    .line 2142
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@d6
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d8
    if-eq v6, v7, :cond_7

    #@da
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@dc
    and-int/lit8 v6, v6, 0x20

    #@de
    if-nez v6, :cond_7

    #@e0
    .line 2143
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@e2
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@e4
    const/16 v7, 0xb

    #@e6
    if-gt v6, v7, :cond_7

    #@e8
    .line 2147
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ea
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ec
    const/4 v8, 0x0

    #@ed
    const/4 v9, 0x0

    #@ee
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@f1
    .line 2149
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@f3
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f5
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@f8
    .line 2150
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@fa
    const/4 v7, 0x0

    #@fb
    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@fd
    .line 2153
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@ff
    const/4 v7, 0x0

    #@100
    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@102
    .line 2154
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@104
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@106
    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@108
    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@10a
    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@10d
    move-result-object v7

    #@10e
    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@111
    .line 2162
    :cond_8
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@116
    .line 2164
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@118
    and-int/lit8 v6, v6, 0x1

    #@11a
    if-eqz v6, :cond_a

    #@11c
    .line 2165
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    #@11f
    move-result v4

    #@120
    .line 2166
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_9

    #@122
    .line 2167
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@124
    if-eqz v6, :cond_9

    #@126
    .line 2168
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@128
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@12a
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@12c
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@12f
    move-result v7

    #@130
    .line 2169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@133
    move-result-wide v8

    #@134
    .line 2168
    const/4 v10, 0x0

    #@135
    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@138
    .line 2172
    :cond_9
    const/4 v6, 0x1

    #@139
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@13c
    .line 2087
    .end local v4    # "hasAutoCreate":Z
    :cond_a
    return-void

    #@13d
    .line 2155
    :catch_0
    move-exception v3

    #@13e
    .line 2156
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@140
    new-instance v7, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v8, "Exception when unbinding service "

    #@148
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v7

    #@14c
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@14e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v7

    #@152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v7

    #@156
    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@159
    .line 2157
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    #@15c
    goto :goto_0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2849
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
    .line 2850
    :cond_0
    return-void

    #@d
    .line 2852
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 2853
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@15
    .line 2854
    const/16 v4, 0xc

    #@17
    .line 2853
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 2855
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    .line 2856
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21
    .line 2857
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@23
    if-eqz v4, :cond_2

    #@25
    const-wide/16 v4, 0x4e20

    #@27
    add-long/2addr v4, v2

    #@28
    .line 2856
    :goto_0
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@2b
    .line 2848
    return-void

    #@2c
    .line 2857
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
    .line 2178
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    .line 2179
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_4

    #@a
    .line 2180
    if-ne p2, v7, :cond_2

    #@c
    .line 2183
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@e
    .line 2184
    sparse-switch p4, :sswitch_data_0

    #@11
    .line 2223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    .line 2224
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
    .line 2223
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 2188
    :sswitch_0
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@2e
    .line 2190
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@30
    .line 2226
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    #@32
    .line 2227
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@34
    .line 2249
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@37
    move-result-wide v2

    #@38
    .line 2250
    .local v2, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@3b
    .line 2251
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 2177
    .end local v2    # "origId":J
    :goto_2
    return-void

    #@3f
    .line 2195
    :sswitch_1
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@42
    .line 2196
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    #@45
    move-result v4

    #@46
    if-ne v4, p3, :cond_0

    #@48
    .line 2199
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@4a
    goto :goto_0

    #@4b
    .line 2207
    :sswitch_2
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@4e
    move-result-object v1

    #@4f
    .line 2208
    .local v1, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v1, :cond_0

    #@51
    .line 2209
    iput v5, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@53
    .line 2210
    iget v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@55
    add-int/lit8 v4, v4, 0x1

    #@57
    iput v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@59
    .line 2212
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@5b
    goto :goto_0

    #@5c
    .line 2219
    .end local v1    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@5f
    goto :goto_0

    #@60
    .line 2229
    :cond_2
    const/4 v4, 0x2

    #@61
    if-ne p2, v4, :cond_1

    #@63
    .line 2233
    if-nez v0, :cond_3

    #@65
    .line 2238
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@67
    if-eqz v4, :cond_1

    #@69
    .line 2239
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@6b
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "Service done with onDestroy, but not inDestroying: "

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 2240
    const-string/jumbo v6, ", app="

    #@7e
    .line 2239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    .line 2240
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@84
    .line 2239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    goto :goto_1

    #@90
    .line 2242
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@92
    if-eq v4, v7, :cond_1

    #@94
    .line 2243
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@96
    new-instance v5, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v6, "Service done with onDestroy, but executeNesting="

    #@9e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    .line 2244
    iget v6, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@a4
    .line 2243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    .line 2244
    const-string/jumbo v6, ": "

    #@ab
    .line 2243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 2246
    iput v7, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@bc
    goto/16 :goto_1

    #@be
    .line 2253
    :cond_4
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@c0
    new-instance v5, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v6, "Done executing unknown service from pid "

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    .line 2254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@cf
    move-result v6

    #@d0
    .line 2253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    goto/16 :goto_2

    #@dd
    .line 2184
    nop

    #@de
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
    .line 2802
    const/4 v7, 0x0

    #@1
    .line 2804
    .local v7, "anrMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v4

    #@6
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@9
    .line 2805
    move-object/from16 v0, p1

    #@b
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    move-object/from16 v0, p1

    #@15
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-nez v2, :cond_1

    #@19
    :cond_0
    monitor-exit v4

    #@1a
    .line 2804
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1d
    .line 2806
    return-void

    #@1e
    .line 2808
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v14

    #@22
    .line 2810
    .local v14, "now":J
    move-object/from16 v0, p1

    #@24
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@26
    if-eqz v2, :cond_4

    #@28
    const/16 v2, 0x4e20

    #@2a
    :goto_0
    int-to-long v2, v2

    #@2b
    .line 2809
    sub-long v10, v14, v2

    #@2d
    .line 2811
    .local v10, "maxTime":J
    const/16 v19, 0x0

    #@2f
    .line 2812
    .local v19, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v12, 0x0

    #@31
    .line 2813
    .local v12, "nextTime":J
    move-object/from16 v0, p1

    #@33
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@35
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@38
    move-result v2

    #@39
    add-int/lit8 v8, v2, -0x1

    #@3b
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    #@3d
    .line 2814
    move-object/from16 v0, p1

    #@3f
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@41
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v17

    #@45
    check-cast v17, Lcom/android/server/am/ServiceRecord;

    #@47
    .line 2815
    .local v17, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v17

    #@49
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@4b
    cmp-long v2, v2, v10

    #@4d
    if-gez v2, :cond_5

    #@4f
    .line 2816
    move-object/from16 v19, v17

    #@51
    .line 2823
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_2
    if-eqz v19, :cond_7

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@57
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_7

    #@61
    .line 2824
    sget-object v2, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Timeout executing service: "

    #@6b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    move-object/from16 v0, v19

    #@71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 2825
    new-instance v18, Ljava/io/StringWriter;

    #@7e
    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    #@81
    .line 2826
    .local v18, "sw":Ljava/io/StringWriter;
    new-instance v16, Lcom/android/internal/util/FastPrintWriter;

    #@83
    const/4 v2, 0x0

    #@84
    const/16 v3, 0x400

    #@86
    move-object/from16 v0, v16

    #@88
    move-object/from16 v1, v18

    #@8a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@8d
    .line 2827
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    #@8f
    move-object/from16 v1, v19

    #@91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@94
    .line 2828
    const-string/jumbo v2, "    "

    #@97
    move-object/from16 v0, v19

    #@99
    move-object/from16 v1, v16

    #@9b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@9e
    .line 2829
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    #@a1
    .line 2830
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@a9
    .line 2831
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ad
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    #@b3
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b6
    .line 2832
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ba
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    #@c0
    const-wide/32 v20, 0x6ddd00

    #@c3
    move-wide/from16 v0, v20

    #@c5
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c8
    .line 2833
    new-instance v2, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v3, "executing service "

    #@d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    move-object/from16 v0, v19

    #@d6
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@df
    move-result-object v7

    #@e0
    .end local v7    # "anrMessage":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "sw":Ljava/io/StringWriter;
    :goto_2
    monitor-exit v4

    #@e1
    .line 2804
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@e4
    .line 2843
    if-eqz v7, :cond_3

    #@e6
    .line 2844
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@ea
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    #@ec
    const/4 v4, 0x0

    #@ed
    const/4 v5, 0x0

    #@ee
    const/4 v6, 0x0

    #@ef
    move-object/from16 v3, p1

    #@f1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    #@f4
    .line 2801
    :cond_3
    return-void

    #@f5
    .line 2810
    .end local v8    # "i":I
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .restart local v7    # "anrMessage":Ljava/lang/String;
    :cond_4
    const v2, 0x30d40

    #@f8
    goto/16 :goto_0

    #@fa
    .line 2819
    .restart local v8    # "i":I
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_2
    move-object/from16 v0, v17

    #@fc
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@fe
    cmp-long v2, v2, v12

    #@100
    if-lez v2, :cond_6

    #@102
    .line 2820
    move-object/from16 v0, v17

    #@104
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@106
    .line 2813
    :cond_6
    add-int/lit8 v8, v8, -0x1

    #@108
    goto/16 :goto_1

    #@10a
    .line 2835
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_7
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10e
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@110
    .line 2836
    const/16 v3, 0xc

    #@112
    .line 2835
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@115
    move-result-object v9

    #@116
    .line 2837
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@118
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11a
    .line 2838
    move-object/from16 v0, p0

    #@11c
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@11e
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@120
    move-object/from16 v0, p1

    #@122
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@124
    if-eqz v2, :cond_8

    #@126
    .line 2839
    const-wide/16 v2, 0x4e20

    #@128
    add-long/2addr v2, v12

    #@129
    .line 2838
    :goto_3
    invoke-virtual {v5, v9, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12c
    goto :goto_2

    #@12d
    .line 2804
    .end local v8    # "i":I
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    #@12e
    monitor-exit v4

    #@12f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@132
    throw v2

    #@133
    .line 2839
    .restart local v8    # "i":I
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v14    # "now":J
    :cond_8
    const-wide/32 v2, 0x30d40

    #@136
    add-long/2addr v2, v12

    #@137
    goto :goto_3
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 692
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 693
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 695
    .local v0, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    #@b
    move-result-object v2

    #@c
    .line 696
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_3

    #@e
    .line 697
    if-eqz p3, :cond_4

    #@10
    .line 698
    if-nez p4, :cond_0

    #@12
    .line 699
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
    .line 736
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    #@1c
    .line 737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 736
    throw v4

    #@20
    .line 701
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@22
    if-eq v4, p3, :cond_1

    #@24
    .line 702
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@27
    .line 703
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@29
    .line 705
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    #@2b
    or-int/lit8 v4, v4, 0x40

    #@2d
    iput v4, p4, Landroid/app/Notification;->flags:I

    #@2f
    .line 706
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@31
    .line 707
    const/4 v4, 0x1

    #@32
    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@34
    .line 708
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    #@37
    .line 709
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 710
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3d
    const/4 v5, 0x1

    #@3e
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@41
    .line 712
    :cond_2
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    #@43
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@4a
    .line 713
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4c
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4e
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@50
    .line 714
    const/4 v6, 0x2

    #@51
    .line 713
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    .line 737
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@57
    .line 691
    return-void

    #@58
    .line 716
    :cond_4
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@5a
    if-eqz v4, :cond_5

    #@5c
    .line 717
    const/4 v4, 0x0

    #@5d
    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@5f
    .line 718
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61
    if-eqz v4, :cond_5

    #@63
    .line 719
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@65
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@67
    const/4 v6, 0x0

    #@68
    const/4 v7, 0x0

    #@69
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@6c
    .line 720
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6e
    const/4 v5, 0x1

    #@6f
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    #@72
    .line 723
    :cond_5
    and-int/lit8 v4, p5, 0x1

    #@74
    if-eqz v4, :cond_6

    #@76
    .line 724
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    #@79
    .line 725
    const/4 v4, 0x0

    #@7a
    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@7c
    .line 726
    const/4 v4, 0x0

    #@7d
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@7f
    goto :goto_0

    #@80
    .line 727
    :cond_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@82
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@84
    const/16 v5, 0x15

    #@86
    if-lt v4, v5, :cond_3

    #@88
    .line 728
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    #@8b
    .line 729
    and-int/lit8 v4, p5, 0x2

    #@8d
    if-eqz v4, :cond_3

    #@8f
    .line 730
    const/4 v4, 0x0

    #@90
    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@92
    .line 731
    const/4 v4, 0x0

    #@93
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@95
    goto :goto_0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 9
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
    const/4 v4, 0x0

    #@1
    .line 501
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    #@4
    move-result-object v8

    #@5
    .line 502
    .local v8, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v8, :cond_0

    #@7
    .line 503
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@b
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@e
    move-result v0

    #@f
    iget-wide v2, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {v8, v1, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@15
    .line 505
    :cond_0
    iput-boolean v4, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@17
    .line 506
    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@1c
    move-result-object v1

    #@1d
    monitor-enter v1

    #@1e
    .line 507
    :try_start_0
    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    #@27
    move-result v2

    #@28
    move-object v0, p0

    #@29
    move-object v1, p3

    #@2a
    move v3, p4

    #@2b
    move v5, v4

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 510
    .local v6, "error":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@32
    .line 511
    new-instance v0, Landroid/content/ComponentName;

    #@34
    const-string/jumbo v1, "!!"

    #@37
    invoke-direct {v0, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    return-object v0

    #@3b
    .line 506
    .end local v6    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@3c
    monitor-exit v1

    #@3d
    throw v0

    #@3e
    .line 514
    .restart local v6    # "error":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@40
    if-eqz v0, :cond_4

    #@42
    if-eqz p5, :cond_4

    #@44
    .line 515
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_3

    #@4c
    const/4 v7, 0x1

    #@4d
    .line 516
    .local v7, "first":Z
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@55
    move-result-wide v0

    #@56
    const-wide/16 v2, 0x3a98

    #@58
    add-long/2addr v0, v2

    #@59
    iput-wide v0, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@5b
    .line 525
    if-eqz v7, :cond_2

    #@5d
    .line 526
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    #@60
    .line 532
    .end local v7    # "first":Z
    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@62
    return-object v0

    #@63
    .line 515
    :cond_3
    const/4 v7, 0x0

    #@64
    .restart local v7    # "first":Z
    goto :goto_0

    #@65
    .line 528
    .end local v7    # "first":Z
    :cond_4
    if-eqz p4, :cond_2

    #@67
    .line 529
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@6a
    goto :goto_1
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/ComponentName;
    .locals 22
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
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@b
    move-result-object v15

    #@c
    .line 315
    .local v15, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v15, :cond_0

    #@e
    .line 316
    new-instance v4, Ljava/lang/SecurityException;

    #@10
    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Unable to find app for caller "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 318
    const-string/jumbo v6, " (pid="

    #@25
    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2c
    move-result v6

    #@2d
    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    .line 319
    const-string/jumbo v6, ") when starting service "

    #@34
    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 316
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4

    #@46
    .line 321
    :cond_0
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@48
    if-eqz v4, :cond_1

    #@4a
    const/4 v12, 0x1

    #@4b
    .line 329
    .end local v15    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v12, "callerFg":Z
    :goto_0
    const/4 v11, 0x1

    #@4c
    const/4 v13, 0x0

    #@4d
    move-object/from16 v4, p0

    #@4f
    move-object/from16 v5, p2

    #@51
    move-object/from16 v6, p3

    #@53
    move-object/from16 v7, p6

    #@55
    move/from16 v8, p4

    #@57
    move/from16 v9, p5

    #@59
    move/from16 v10, p7

    #@5b
    .line 328
    invoke-direct/range {v4 .. v13}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@5e
    move-result-object v19

    #@5f
    .line 330
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v19, :cond_3

    #@61
    .line 331
    const/4 v4, 0x0

    #@62
    return-object v4

    #@63
    .line 321
    .end local v12    # "callerFg":Z
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v15    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v12, 0x0

    #@64
    .restart local v12    # "callerFg":Z
    goto :goto_0

    #@65
    .line 323
    .end local v12    # "callerFg":Z
    .end local v15    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v12, 0x1

    #@66
    .restart local v12    # "callerFg":Z
    goto :goto_0

    #@67
    .line 333
    .restart local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_3
    move-object/from16 v0, v19

    #@69
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@6b
    if-nez v4, :cond_5

    #@6d
    .line 334
    new-instance v5, Landroid/content/ComponentName;

    #@6f
    const-string/jumbo v6, "!"

    #@72
    move-object/from16 v0, v19

    #@74
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@76
    if-eqz v4, :cond_4

    #@78
    .line 335
    move-object/from16 v0, v19

    #@7a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@7c
    .line 334
    :goto_1
    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    return-object v5

    #@80
    .line 335
    :cond_4
    const-string/jumbo v4, "private to package"

    #@83
    goto :goto_1

    #@84
    .line 338
    :cond_5
    move-object/from16 v0, v19

    #@86
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@88
    move-object/from16 v18, v0

    #@8a
    .line 340
    .local v18, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    #@8c
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@90
    move-object/from16 v0, v18

    #@92
    iget v5, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@94
    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController;->exists(I)Z

    #@97
    move-result v4

    #@98
    if-nez v4, :cond_6

    #@9a
    .line 341
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@9c
    new-instance v5, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v6, "Trying to start service with non-existent user! "

    #@a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    move-object/from16 v0, v18

    #@aa
    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 342
    const/4 v4, 0x0

    #@b8
    return-object v4

    #@b9
    .line 345
    :cond_6
    move-object/from16 v0, v18

    #@bb
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@bd
    if-nez v4, :cond_8

    #@bf
    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c2
    move-result-wide v20

    #@c3
    .line 350
    .local v20, "token":J
    :try_start_0
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@c7
    .line 351
    move-object/from16 v0, v18

    #@c9
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@cb
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@cd
    move-object/from16 v0, v18

    #@cf
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@d1
    const/4 v7, 0x1

    #@d2
    .line 350
    move/from16 v0, p4

    #@d4
    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/android/server/am/ActivityManagerService;->checkAllowBackgroundLocked(ILjava/lang/String;IZ)I

    #@d7
    move-result v14

    #@d8
    .line 352
    .local v14, "allowed":I
    if-eqz v14, :cond_7

    #@da
    .line 353
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@dc
    new-instance v5, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v6, "Background start not allowed: service "

    #@e4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    move-object/from16 v0, p2

    #@ea
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v5

    #@ee
    .line 354
    const-string/jumbo v6, " to "

    #@f1
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v5

    #@f5
    .line 354
    move-object/from16 v0, v18

    #@f7
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@f9
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@fc
    move-result-object v6

    #@fd
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v5

    #@101
    .line 355
    const-string/jumbo v6, " from pid="

    #@104
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v5

    #@108
    move/from16 v0, p4

    #@10a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v5

    #@10e
    .line 355
    const-string/jumbo v6, " uid="

    #@111
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v5

    #@115
    move/from16 v0, p5

    #@117
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    .line 356
    const-string/jumbo v6, " pkg="

    #@11e
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    move-object/from16 v0, p6

    #@124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12f
    .line 357
    const/4 v4, 0x0

    #@130
    .line 360
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@133
    .line 357
    return-object v4

    #@134
    .line 360
    :cond_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@137
    .line 364
    .end local v14    # "allowed":I
    .end local v20    # "token":J
    :cond_8
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@13b
    .line 365
    move-object/from16 v0, v18

    #@13d
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@13f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@142
    move-result v8

    #@143
    move-object/from16 v0, v18

    #@145
    iget v10, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@147
    const/4 v9, 0x0

    #@148
    move/from16 v5, p5

    #@14a
    move-object/from16 v7, p2

    #@14c
    .line 364
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;I)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@14f
    move-result-object v16

    #@150
    .line 371
    .local v16, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@152
    if-eqz v4, :cond_9

    #@154
    move-object/from16 v7, p0

    #@156
    move-object/from16 v8, v18

    #@158
    move-object/from16 v9, p6

    #@15a
    move/from16 v10, p5

    #@15c
    move-object/from16 v11, p2

    #@15e
    move/from16 v13, p7

    #@160
    .line 372
    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z

    #@163
    move-result v4

    #@164
    if-nez v4, :cond_9

    #@166
    .line 374
    const/4 v4, 0x0

    #@167
    return-object v4

    #@168
    .line 359
    .end local v16    # "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    .restart local v20    # "token":J
    :catchall_0
    move-exception v4

    #@169
    .line 360
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16c
    .line 359
    throw v4

    #@16d
    .line 378
    .end local v20    # "token":J
    .restart local v16    # "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    :cond_9
    const/4 v4, 0x0

    #@16e
    move-object/from16 v0, p0

    #@170
    move-object/from16 v1, v18

    #@172
    move/from16 v2, p5

    #@174
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    #@177
    move-result v4

    #@178
    if-eqz v4, :cond_a

    #@17a
    .line 381
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@17d
    move-result-wide v4

    #@17e
    move-object/from16 v0, v18

    #@180
    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@182
    .line 382
    const/4 v4, 0x1

    #@183
    move-object/from16 v0, v18

    #@185
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@187
    .line 383
    const/4 v4, 0x0

    #@188
    move-object/from16 v0, v18

    #@18a
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@18c
    .line 384
    move-object/from16 v0, v18

    #@18e
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@190
    new-instance v4, Lcom/android/server/am/ServiceRecord$StartItem;

    #@192
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    #@195
    move-result v7

    #@196
    const/4 v6, 0x0

    #@197
    move-object/from16 v5, v18

    #@199
    move-object/from16 v8, p2

    #@19b
    move-object/from16 v9, v16

    #@19d
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    #@1a0
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a3
    .line 387
    move-object/from16 v0, v18

    #@1a5
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@1ac
    move-result-object v9

    #@1ad
    .line 388
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v13, 0x0

    #@1ae
    .line 389
    .local v13, "addToStarting":Z
    if-nez v12, :cond_e

    #@1b0
    move-object/from16 v0, v18

    #@1b2
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1b4
    if-nez v4, :cond_e

    #@1b6
    .line 390
    move-object/from16 v0, p0

    #@1b8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1ba
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@1bc
    move-object/from16 v0, v18

    #@1be
    iget v5, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@1c0
    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    #@1c3
    move-result v4

    #@1c4
    .line 389
    if-eqz v4, :cond_e

    #@1c6
    .line 391
    move-object/from16 v0, p0

    #@1c8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1ca
    move-object/from16 v0, v18

    #@1cc
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@1ce
    move-object/from16 v0, v18

    #@1d0
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1d2
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d4
    const/4 v7, 0x0

    #@1d5
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@1d8
    move-result-object v17

    #@1d9
    .line 392
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v17, :cond_b

    #@1db
    move-object/from16 v0, v17

    #@1dd
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@1df
    const/16 v5, 0xb

    #@1e1
    if-le v4, v5, :cond_f

    #@1e3
    .line 405
    :cond_b
    move-object/from16 v0, v18

    #@1e5
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@1e7
    if-eqz v4, :cond_c

    #@1e9
    .line 409
    move-object/from16 v0, v18

    #@1eb
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1ed
    return-object v4

    #@1ee
    .line 411
    :cond_c
    iget-object v4, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@1f0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f3
    move-result v4

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget v5, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@1f8
    if-lt v4, v5, :cond_d

    #@1fa
    .line 413
    sget-object v4, Lcom/android/server/am/ActiveServices;->TAG_SERVICE:Ljava/lang/String;

    #@1fc
    new-instance v5, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v6, "Delaying start of: "

    #@204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v5

    #@208
    move-object/from16 v0, v18

    #@20a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v5

    #@20e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v5

    #@212
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@215
    .line 414
    iget-object v4, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@217
    move-object/from16 v0, v18

    #@219
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21c
    .line 415
    const/4 v4, 0x1

    #@21d
    move-object/from16 v0, v18

    #@21f
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@221
    .line 416
    move-object/from16 v0, v18

    #@223
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@225
    return-object v4

    #@226
    .line 419
    :cond_d
    const/4 v13, 0x1

    #@227
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_e
    :goto_2
    move-object/from16 v8, p0

    #@229
    move-object/from16 v10, p2

    #@22b
    move-object/from16 v11, v18

    #@22d
    .line 452
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    #@230
    move-result-object v4

    #@231
    return-object v4

    #@232
    .line 420
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_f
    move-object/from16 v0, v17

    #@234
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@236
    const/16 v5, 0xa

    #@238
    if-lt v4, v5, :cond_e

    #@23a
    .line 424
    const/4 v13, 0x1

    #@23b
    goto :goto_2
.end method

.method stopInBackgroundLocked(I)V
    .locals 8
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 591
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    #@3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@6
    move-result v5

    #@7
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    #@d
    .line 592
    .local v2, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v3, 0x0

    #@e
    .line 593
    .local v3, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v2, :cond_2

    #@10
    .line 594
    iget-object v4, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v0, v4, -0x1

    #@18
    .end local v3    # "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 595
    iget-object v4, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@22
    .line 596
    .local v1, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@26
    if-ne v4, p1, :cond_0

    #@28
    iget-boolean v4, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@2a
    if-eqz v4, :cond_0

    #@2c
    .line 597
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@30
    .line 598
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@32
    .line 597
    const/16 v6, 0x3f

    #@34
    invoke-virtual {v4, v6, p1, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_0

    #@3a
    .line 599
    if-nez v3, :cond_0

    #@3c
    .line 600
    new-instance v3, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 601
    .local v3, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 594
    .end local v3    # "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@46
    goto :goto_0

    #@47
    .line 606
    .end local v1    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_1
    if-eqz v3, :cond_2

    #@49
    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v4

    #@4d
    add-int/lit8 v0, v4, -0x1

    #@4f
    :goto_1
    if-ltz v0, :cond_2

    #@51
    .line 608
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@57
    .line 609
    .restart local v1    # "service":Lcom/android/server/am/ServiceRecord;
    iput-boolean v7, v1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@59
    .line 610
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    #@5c
    .line 611
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    #@5f
    .line 607
    add-int/lit8 v0, v0, -0x1

    #@61
    goto :goto_1

    #@62
    .line 588
    .end local v0    # "i":I
    .end local v1    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 561
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@9
    move-result-object v12

    #@a
    .line 562
    .local v12, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    #@c
    if-nez v12, :cond_0

    #@e
    .line 563
    new-instance v2, Ljava/lang/SecurityException;

    #@10
    .line 564
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
    .line 565
    const-string/jumbo v4, " (pid="

    #@25
    .line 564
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 565
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2c
    move-result v4

    #@2d
    .line 564
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 566
    const-string/jumbo v4, ") when stopping service "

    #@34
    .line 564
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
    .line 563
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 571
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@49
    move-result v6

    #@4a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4d
    move-result v7

    #@4e
    .line 570
    const/4 v5, 0x0

    #@4f
    .line 571
    const/4 v9, 0x0

    #@50
    const/4 v10, 0x0

    #@51
    const/4 v11, 0x0

    #@52
    move-object/from16 v2, p0

    #@54
    move-object/from16 v3, p2

    #@56
    move-object/from16 v4, p3

    #@58
    move/from16 v8, p4

    #@5a
    .line 570
    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    #@5d
    move-result-object v13

    #@5e
    .line 572
    .local v13, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v13, :cond_2

    #@60
    .line 573
    iget-object v2, v13, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@62
    if-eqz v2, :cond_1

    #@64
    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@67
    move-result-wide v14

    #@68
    .line 576
    .local v14, "origId":J
    :try_start_0
    iget-object v2, v13, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@6a
    move-object/from16 v0, p0

    #@6c
    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    .line 578
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@72
    .line 580
    const/4 v2, 0x1

    #@73
    return v2

    #@74
    .line 577
    :catchall_0
    move-exception v2

    #@75
    .line 578
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 577
    throw v2

    #@79
    .line 582
    .end local v14    # "origId":J
    :cond_1
    const/4 v2, -0x1

    #@7a
    return v2

    #@7b
    .line 585
    :cond_2
    const/4 v2, 0x0

    #@7c
    return v2
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
    .line 645
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v5

    #@5
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    #@8
    move-result-object v1

    #@9
    .line 646
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_5

    #@b
    .line 647
    if-ltz p3, :cond_3

    #@d
    .line 651
    invoke-virtual {v1, p3, v10}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    #@10
    move-result-object v4

    #@11
    .line 652
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_1

    #@13
    .line 653
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    if-lez v5, :cond_1

    #@1b
    .line 654
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    #@23
    .line 655
    .local v0, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    #@26
    .line 656
    if-ne v0, v4, :cond_0

    #@28
    .line 662
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    #@2b
    move-result v5

    #@2c
    if-eq v5, p3, :cond_2

    #@2e
    .line 663
    return v10

    #@2f
    .line 666
    :cond_2
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v5

    #@35
    if-lez v5, :cond_3

    #@37
    .line 667
    sget-object v5, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "stopServiceToken startId "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 668
    const-string/jumbo v7, " is last, but have "

    #@4c
    .line 667
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    .line 668
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v7

    #@56
    .line 667
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    .line 669
    const-string/jumbo v7, " remaining args"

    #@5d
    .line 667
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 673
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@6a
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    #@6d
    move-result-object v6

    #@6e
    monitor-enter v6

    #@6f
    .line 674
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@71
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    monitor-exit v6

    #@75
    .line 676
    iput-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@77
    .line 677
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@79
    if-eqz v5, :cond_4

    #@7b
    .line 678
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@7d
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@7f
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@81
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@84
    move-result v6

    #@85
    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@88
    move-result-wide v8

    #@89
    .line 678
    invoke-virtual {v5, v10, v6, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@8c
    .line 681
    :cond_4
    iput-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@8e
    .line 682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@91
    move-result-wide v2

    #@92
    .line 683
    .local v2, "origId":J
    invoke-direct {p0, v1, v10, v10}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    #@95
    .line 684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@98
    .line 685
    const/4 v5, 0x1

    #@99
    return v5

    #@9a
    .line 673
    .end local v2    # "origId":J
    :catchall_0
    move-exception v5

    #@9b
    monitor-exit v6

    #@9c
    throw v5

    #@9d
    .line 687
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
    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 1173
    .local v8, "origId":J
    if-eqz p1, :cond_2

    #@6
    .line 1175
    :try_start_0
    new-instance v3, Landroid/content/Intent$FilterComparison;

    #@8
    invoke-direct {v3, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@b
    .line 1176
    .local v3, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    #@13
    .line 1181
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    .line 1182
    .local v5, "inDestroying":Z
    if-eqz v0, :cond_1

    #@1b
    .line 1183
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
    .line 1203
    :cond_0
    const/4 v7, 0x1

    #@26
    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@28
    .line 1207
    :cond_1
    :goto_0
    const/4 v7, 0x0

    #@29
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1210
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v5    # "inDestroying":Z
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 1170
    return-void

    #@30
    .line 1186
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "inDestroying":Z
    :cond_3
    const/4 v6, 0x0

    #@31
    .line 1187
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
    .line 1188
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
    .line 1189
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_5

    #@47
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    if-eqz v7, :cond_5

    #@4b
    .line 1191
    const/4 v6, 0x1

    #@4c
    .line 1196
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
    .line 1197
    :catch_0
    move-exception v2

    #@52
    .local v2, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_0

    #@53
    .line 1187
    .end local v2    # "e":Landroid/os/TransactionTooLargeException;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    #@55
    goto :goto_1

    #@56
    .line 1209
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "i":I
    .end local v5    # "inDestroying":Z
    .end local v6    # "inFg":Z
    :catchall_0
    move-exception v7

    #@57
    .line 1210
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 1209
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
    .line 1129
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    .line 1131
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/ArrayList;

    #@e
    .line 1132
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_0

    #@10
    .line 1133
    sget-object v5, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Unbind failed: could not find connection for "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    .line 1134
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v7

    #@22
    .line 1133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1135
    return v8

    #@2e
    .line 1138
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@31
    move-result-wide v2

    #@32
    .line 1140
    .local v2, "origId":J
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v5

    #@36
    if-lez v5, :cond_6

    #@38
    .line 1141
    const/4 v5, 0x0

    #@39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    #@3f
    .line 1142
    .local v4, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v5, 0x0

    #@40
    const/4 v7, 0x0

    #@41
    invoke-virtual {p0, v4, v5, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    #@44
    .line 1143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v5

    #@48
    if-lez v5, :cond_2

    #@4a
    const/4 v5, 0x0

    #@4b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v5

    #@4f
    if-ne v5, v4, :cond_2

    #@51
    .line 1145
    sget-object v5, Lcom/android/server/am/ActiveServices;->TAG:Ljava/lang/String;

    #@53
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v8, "Connection "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    const-string/jumbo v8, " not removed for binder "

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 1146
    const/4 v5, 0x0

    #@76
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@79
    .line 1149
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@7b
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@7d
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7f
    if-eqz v5, :cond_1

    #@81
    .line 1150
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@83
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@85
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@87
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@89
    if-eqz v5, :cond_3

    #@8b
    .line 1151
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@8d
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@8f
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@91
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    #@94
    .line 1154
    :cond_3
    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@96
    const/high16 v7, 0x8000000

    #@98
    and-int/2addr v5, v7

    #@99
    if-eqz v5, :cond_4

    #@9b
    .line 1155
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@9d
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@9f
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a1
    const/4 v7, 0x1

    #@a2
    iput-boolean v7, v5, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@a4
    .line 1156
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a6
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@a8
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@aa
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ac
    .line 1157
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@ae
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@b0
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b2
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@b4
    if-nez v5, :cond_5

    #@b6
    .line 1158
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@b8
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@ba
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@bc
    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@be
    :goto_1
    const/4 v9, 0x0

    #@bf
    .line 1156
    invoke-virtual {v7, v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@c2
    .line 1160
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@c4
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@c6
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@c8
    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ca
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cd
    goto/16 :goto_0

    #@cf
    .line 1163
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    #@d0
    .line 1164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d3
    .line 1163
    throw v5

    #@d4
    .restart local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    move v5, v6

    #@d5
    .line 1157
    goto :goto_1

    #@d6
    .line 1164
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d9
    .line 1167
    return v6
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 765
    const/4 v3, 0x0

    #@2
    .line 766
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
    .line 767
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@13
    .line 768
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@15
    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@17
    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@19
    .line 769
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    #@1b
    if-ne v2, p1, :cond_1

    #@1d
    .line 766
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 771
    :cond_1
    if-nez v3, :cond_3

    #@22
    .line 772
    new-instance v3, Landroid/util/ArraySet;

    #@24
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@27
    .line 776
    :cond_2
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 777
    const/4 v4, 0x0

    #@2b
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    #@2e
    goto :goto_1

    #@2f
    .line 773
    :cond_3
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    goto :goto_1

    #@36
    .line 764
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    return-void
.end method
