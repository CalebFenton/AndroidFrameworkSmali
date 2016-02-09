.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field fgInteractionTime:J

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field gids:[I

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instructionSet:Ljava/lang/String;

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field maxAdj:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field reportedInteraction:Z

.field requiredAbi:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 6
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/16 v5, -0x64

    #@4
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@e
    .line 94
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@10
    .line 95
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@12
    .line 96
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@14
    .line 97
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@16
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1d
    .line 151
    new-instance v0, Landroid/util/ArraySet;

    #@1f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@24
    .line 153
    new-instance v0, Landroid/util/ArraySet;

    #@26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@2b
    .line 155
    new-instance v0, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@32
    .line 157
    new-instance v0, Landroid/util/ArraySet;

    #@34
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@39
    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    #@3b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@40
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@47
    .line 408
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@49
    .line 409
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@4b
    .line 410
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4d
    if-eq v0, p4, :cond_0

    #@4f
    const/4 v0, 0x1

    #@50
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@52
    .line 411
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@54
    .line 412
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@5a
    .line 413
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5c
    .line 414
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5e
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@62
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@64
    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 415
    const/16 v0, 0x10

    #@6c
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    #@6e
    .line 416
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@70
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@72
    .line 417
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@74
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@76
    .line 418
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@78
    .line 419
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@7a
    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7d
    move-result-wide v0

    #@7e
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    #@80
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@82
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    #@84
    .line 407
    return-void

    #@85
    :cond_0
    move v0, v1

    #@86
    .line 410
    goto :goto_0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_2

    #@8
    .line 633
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@a
    invoke-direct {v0, p2}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@d
    .line 635
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 637
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@15
    .line 636
    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@1b
    .line 638
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 639
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@22
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@24
    if-eq v1, v2, :cond_0

    #@26
    .line 640
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    #@2b
    .line 645
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 647
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2
    const/4 v1, 0x0

    #@34
    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 190
    .local v2, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const-string/jumbo v6, "user #"

    #@a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@12
    .line 191
    const-string/jumbo v6, " uid="

    #@15
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1a
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1f
    .line 192
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@21
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@25
    if-eq v6, v7, :cond_0

    #@27
    .line 193
    const-string/jumbo v6, " ISOLATED uid="

    #@2a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@2f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 195
    :cond_0
    const-string/jumbo v6, " gids={"

    #@35
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 196
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@3a
    if-eqz v6, :cond_2

    #@3c
    .line 197
    const/4 v0, 0x0

    #@3d
    .local v0, "gi":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@3f
    array-length v6, v6

    #@40
    if-ge v0, v6, :cond_2

    #@42
    .line 198
    if-eqz v0, :cond_1

    #@44
    const-string/jumbo v6, ", "

    #@47
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 199
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@4c
    aget v6, v6, v0

    #@4e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 203
    .end local v0    # "gi":I
    :cond_2
    const-string/jumbo v6, "}"

    #@57
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 204
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    const-string/jumbo v6, "requiredAbi="

    #@60
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 205
    const-string/jumbo v6, " instructionSet="

    #@6b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 206
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@75
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@77
    if-eqz v6, :cond_3

    #@79
    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    const-string/jumbo v6, "class="

    #@7f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@84
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@86
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 209
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@8b
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@8d
    if-eqz v6, :cond_4

    #@8f
    .line 210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v6, "manageSpaceActivityName="

    #@95
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 211
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@9a
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@9c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 213
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    const-string/jumbo v6, "dir="

    #@a5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@aa
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@ac
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 214
    const-string/jumbo v6, " publicDir="

    #@b2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@b7
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@b9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 215
    const-string/jumbo v6, " data="

    #@bf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@c4
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@c6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c9
    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    const-string/jumbo v6, "packageList={"

    #@cf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 217
    const/4 v1, 0x0

    #@d3
    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@d5
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@d8
    move-result v6

    #@d9
    if-ge v1, v6, :cond_6

    #@db
    .line 218
    if-lez v1, :cond_5

    #@dd
    const-string/jumbo v6, ", "

    #@e0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 219
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@e5
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e8
    move-result-object v6

    #@e9
    check-cast v6, Ljava/lang/String;

    #@eb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 217
    add-int/lit8 v1, v1, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 221
    :cond_6
    const-string/jumbo v6, "}"

    #@f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 222
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    #@f9
    if-eqz v6, :cond_9

    #@fb
    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string/jumbo v6, "packageDependencies={"

    #@101
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    .line 224
    const/4 v1, 0x0

    #@105
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    #@107
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@10a
    move-result v6

    #@10b
    if-ge v1, v6, :cond_8

    #@10d
    .line 225
    if-lez v1, :cond_7

    #@10f
    const-string/jumbo v6, ", "

    #@112
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    .line 226
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    #@117
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@11a
    move-result-object v6

    #@11b
    check-cast v6, Ljava/lang/String;

    #@11d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    .line 224
    add-int/lit8 v1, v1, 0x1

    #@122
    goto :goto_2

    #@123
    .line 228
    :cond_8
    const-string/jumbo v6, "}"

    #@126
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 230
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12c
    const-string/jumbo v6, "compat="

    #@12f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@134
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@137
    .line 231
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@139
    if-nez v6, :cond_a

    #@13b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@13d
    if-eqz v6, :cond_20

    #@13f
    .line 233
    :cond_a
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    const-string/jumbo v6, "instrumentationClass="

    #@145
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@148
    .line 234
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@14a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@14d
    .line 235
    const-string/jumbo v6, " instrumentationProfileFile="

    #@150
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    .line 236
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@155
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v6, "instrumentationArguments="

    #@15e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 238
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@163
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@166
    .line 239
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@169
    const-string/jumbo v6, "instrumentationInfo="

    #@16c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16f
    .line 240
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@171
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@174
    .line 241
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@176
    if-eqz v6, :cond_b

    #@178
    .line 242
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@17a
    new-instance v7, Landroid/util/PrintWriterPrinter;

    #@17c
    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@17f
    new-instance v8, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v8

    #@188
    const-string/jumbo v9, "  "

    #@18b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v8

    #@18f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v8

    #@193
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@196
    .line 245
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@199
    const-string/jumbo v6, "thread="

    #@19c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1a1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1a4
    .line 246
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    const-string/jumbo v6, "pid="

    #@1aa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ad
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1af
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1b2
    const-string/jumbo v6, " starting="

    #@1b5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b8
    .line 247
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    #@1ba
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@1bd
    .line 248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    const-string/jumbo v6, "lastActivityTime="

    #@1c3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    .line 249
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    #@1c8
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1cb
    .line 250
    const-string/jumbo v6, " lastPssTime="

    #@1ce
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 251
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@1d3
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1d6
    .line 252
    const-string/jumbo v6, " nextPssTime="

    #@1d9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    .line 253
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    #@1de
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1e1
    .line 254
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1e4
    .line 255
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e7
    const-string/jumbo v6, "adjSeq="

    #@1ea
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ed
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    #@1ef
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1f2
    .line 256
    const-string/jumbo v6, " lruSeq="

    #@1f5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f8
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    #@1fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1fd
    .line 257
    const-string/jumbo v6, " lastPss="

    #@200
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@203
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    #@205
    const-wide/16 v8, 0x400

    #@207
    mul-long/2addr v6, v8

    #@208
    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@20b
    .line 258
    const-string/jumbo v6, " lastCachedPss="

    #@20e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    #@213
    const-wide/16 v8, 0x400

    #@215
    mul-long/2addr v6, v8

    #@216
    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@219
    .line 259
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@21c
    .line 260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21f
    const-string/jumbo v6, "cached="

    #@222
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    #@227
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@22a
    .line 261
    const-string/jumbo v6, " empty="

    #@22d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@230
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    #@232
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@235
    .line 262
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    #@237
    if-eqz v6, :cond_c

    #@239
    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23c
    const-string/jumbo v6, "serviceb="

    #@23f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@242
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    #@244
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@247
    .line 264
    const-string/jumbo v6, " serviceHighRam="

    #@24a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24d
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    #@24f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@252
    .line 266
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    #@254
    if-eqz v6, :cond_d

    #@256
    .line 267
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@259
    const-string/jumbo v6, "notCachedSinceIdle="

    #@25c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    #@261
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@264
    .line 268
    const-string/jumbo v6, " initialIdlePss="

    #@267
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    #@26c
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    #@26f
    .line 270
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@272
    const-string/jumbo v6, "oom: max="

    #@275
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    #@27a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@27d
    .line 271
    const-string/jumbo v6, " curRaw="

    #@280
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@283
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@285
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@288
    .line 272
    const-string/jumbo v6, " setRaw="

    #@28b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28e
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@290
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@293
    .line 273
    const-string/jumbo v6, " cur="

    #@296
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@299
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@29b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@29e
    .line 274
    const-string/jumbo v6, " set="

    #@2a1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a4
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2a6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2a9
    .line 275
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ac
    const-string/jumbo v6, "curSchedGroup="

    #@2af
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b2
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    #@2b4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2b7
    .line 276
    const-string/jumbo v6, " setSchedGroup="

    #@2ba
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bd
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@2bf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 277
    const-string/jumbo v6, " systemNoUi="

    #@2c5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    #@2ca
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@2cd
    .line 278
    const-string/jumbo v6, " trimMemoryLevel="

    #@2d0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d3
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    #@2d5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2d8
    .line 279
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2db
    const-string/jumbo v6, "curProcState="

    #@2de
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e1
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@2e3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 280
    const-string/jumbo v6, " repProcState="

    #@2e9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@2ee
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2f1
    .line 281
    const-string/jumbo v6, " pssProcState="

    #@2f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@2f9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2fc
    .line 282
    const-string/jumbo v6, " setProcState="

    #@2ff
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@302
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@304
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@307
    .line 283
    const-string/jumbo v6, " lastStateTime="

    #@30a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30d
    .line 284
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    #@30f
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@312
    .line 285
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@315
    .line 286
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@317
    if-nez v6, :cond_e

    #@319
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@31b
    if-nez v6, :cond_e

    #@31d
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@31f
    if-nez v6, :cond_e

    #@321
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@323
    if-eqz v6, :cond_f

    #@325
    .line 287
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@328
    const-string/jumbo v6, "hasShownUi="

    #@32b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@330
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@333
    .line 288
    const-string/jumbo v6, " pendingUiClean="

    #@336
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@339
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@33b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@33e
    .line 289
    const-string/jumbo v6, " hasAboveClient="

    #@341
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@344
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@346
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@349
    .line 290
    const-string/jumbo v6, " treatLikeActivity="

    #@34c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@351
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@354
    .line 292
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@356
    if-nez v6, :cond_10

    #@358
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@35a
    if-nez v6, :cond_10

    #@35c
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@35e
    if-eqz v6, :cond_11

    #@360
    .line 293
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@363
    const-string/jumbo v6, "setIsForeground="

    #@366
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@369
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@36b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@36e
    .line 294
    const-string/jumbo v6, " foregroundServices="

    #@371
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@374
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@376
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@379
    .line 295
    const-string/jumbo v6, " forcingToForeground="

    #@37c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37f
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@381
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@384
    .line 297
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@386
    if-nez v6, :cond_12

    #@388
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@38a
    const-wide/16 v8, 0x0

    #@38c
    cmp-long v6, v6, v8

    #@38e
    if-eqz v6, :cond_14

    #@390
    .line 298
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@393
    const-string/jumbo v6, "reportedInteraction="

    #@396
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@399
    .line 299
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@39b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@39e
    .line 300
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3a0
    const-wide/16 v8, 0x0

    #@3a2
    cmp-long v6, v6, v8

    #@3a4
    if-eqz v6, :cond_13

    #@3a6
    .line 301
    const-string/jumbo v6, " fgInteractionTime="

    #@3a9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ac
    .line 302
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3ae
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3b1
    move-result-wide v8

    #@3b2
    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3b5
    .line 304
    :cond_13
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3b8
    .line 306
    :cond_14
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3ba
    if-nez v6, :cond_15

    #@3bc
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@3be
    if-eqz v6, :cond_16

    #@3c0
    .line 307
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c3
    const-string/jumbo v6, "persistent="

    #@3c6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c9
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3cb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3ce
    .line 308
    const-string/jumbo v6, " removed="

    #@3d1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d4
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@3d6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@3d9
    .line 310
    :cond_16
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@3db
    if-nez v6, :cond_17

    #@3dd
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@3df
    if-nez v6, :cond_17

    #@3e1
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@3e3
    if-eqz v6, :cond_18

    #@3e5
    .line 311
    :cond_17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e8
    const-string/jumbo v6, "hasClientActivities="

    #@3eb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ee
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@3f0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3f3
    .line 312
    const-string/jumbo v6, " foregroundActivities="

    #@3f6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f9
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@3fb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3fe
    .line 313
    const-string/jumbo v6, " (rep="

    #@401
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@404
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@406
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@409
    const-string/jumbo v6, ")"

    #@40c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40f
    .line 315
    :cond_18
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@411
    if-eqz v6, :cond_19

    #@413
    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@416
    const-string/jumbo v6, "hasStartedServices="

    #@419
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@41e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@421
    .line 318
    :cond_19
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@423
    const/16 v7, 0xa

    #@425
    if-lt v6, v7, :cond_1a

    #@427
    .line 320
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@429
    monitor-enter v7

    #@42a
    .line 321
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@42c
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@42e
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@430
    .line 322
    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@435
    move-result-wide v10

    #@436
    .line 321
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@439
    move-result-wide v4

    #@43a
    .local v4, "wtime":J
    monitor-exit v7

    #@43b
    .line 324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43e
    const-string/jumbo v6, "lastWakeTime="

    #@441
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@444
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@446
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@449
    .line 325
    const-string/jumbo v6, " timeUsed="

    #@44c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44f
    .line 326
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@451
    sub-long v6, v4, v6

    #@453
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@456
    const-string/jumbo v6, ""

    #@459
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45c
    .line 327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45f
    const-string/jumbo v6, "lastCpuTime="

    #@462
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@465
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@467
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@46a
    .line 328
    const-string/jumbo v6, " timeUsed="

    #@46d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@470
    .line 329
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    #@472
    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@474
    sub-long/2addr v6, v8

    #@475
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@478
    const-string/jumbo v6, ""

    #@47b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47e
    .line 331
    .end local v4    # "wtime":J
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@481
    const-string/jumbo v6, "lastRequestedGc="

    #@484
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@487
    .line 332
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    #@489
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@48c
    .line 333
    const-string/jumbo v6, " lastLowMemory="

    #@48f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@492
    .line 334
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    #@494
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@497
    .line 335
    const-string/jumbo v6, " reportLowMemory="

    #@49a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49d
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    #@49f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@4a2
    .line 336
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@4a4
    if-nez v6, :cond_1b

    #@4a6
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@4a8
    if-nez v6, :cond_1b

    #@4aa
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@4ac
    if-eqz v6, :cond_1c

    #@4ae
    .line 337
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b1
    const-string/jumbo v6, "killed="

    #@4b4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b7
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@4b9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@4bc
    .line 338
    const-string/jumbo v6, " killedByAm="

    #@4bf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c2
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@4c4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@4c7
    .line 339
    const-string/jumbo v6, " waitingToKill="

    #@4ca
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cd
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@4cf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d2
    .line 341
    :cond_1c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@4d4
    if-nez v6, :cond_1d

    #@4d6
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@4d8
    if-nez v6, :cond_1d

    #@4da
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@4dc
    if-eqz v6, :cond_21

    #@4de
    .line 343
    :cond_1d
    :goto_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e1
    const-string/jumbo v6, "debugging="

    #@4e4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e7
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@4e9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@4ec
    .line 344
    const-string/jumbo v6, " crashing="

    #@4ef
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f2
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@4f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@4f7
    .line 345
    const-string/jumbo v6, " "

    #@4fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fd
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@4ff
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@502
    .line 346
    const-string/jumbo v6, " notResponding="

    #@505
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@508
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@50a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@50d
    .line 347
    const-string/jumbo v6, " "

    #@510
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@515
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@518
    .line 348
    const-string/jumbo v6, " bad="

    #@51b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@520
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@523
    .line 351
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@525
    if-eqz v6, :cond_1e

    #@527
    .line 352
    const-string/jumbo v6, " errorReportReceiver="

    #@52a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52d
    .line 353
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@52f
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@532
    move-result-object v6

    #@533
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@536
    .line 355
    :cond_1e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@539
    .line 357
    :cond_1f
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@53b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@53e
    move-result v6

    #@53f
    if-lez v6, :cond_22

    #@541
    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@544
    const-string/jumbo v6, "Activities:"

    #@547
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54a
    .line 359
    const/4 v1, 0x0

    #@54b
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@54d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@550
    move-result v6

    #@551
    if-ge v1, v6, :cond_22

    #@553
    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@556
    const-string/jumbo v6, "  - "

    #@559
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55c
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@55e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@561
    move-result-object v6

    #@562
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@565
    .line 359
    add-int/lit8 v1, v1, 0x1

    #@567
    goto :goto_5

    #@568
    .line 232
    :cond_20
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@56a
    if-eqz v6, :cond_b

    #@56c
    goto/16 :goto_3

    #@56e
    .line 320
    :catchall_0
    move-exception v6

    #@56f
    monitor-exit v7

    #@570
    throw v6

    #@571
    .line 341
    :cond_21
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@573
    if-nez v6, :cond_1d

    #@575
    .line 342
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@577
    if-nez v6, :cond_1d

    #@579
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@57b
    .line 341
    if-eqz v6, :cond_1f

    #@57d
    goto/16 :goto_4

    #@57f
    .line 363
    :cond_22
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@581
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@584
    move-result v6

    #@585
    if-lez v6, :cond_23

    #@587
    .line 364
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58a
    const-string/jumbo v6, "Services:"

    #@58d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@590
    .line 365
    const/4 v1, 0x0

    #@591
    :goto_6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@593
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@596
    move-result v6

    #@597
    if-ge v1, v6, :cond_23

    #@599
    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59c
    const-string/jumbo v6, "  - "

    #@59f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a2
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5a4
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@5a7
    move-result-object v6

    #@5a8
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5ab
    .line 365
    add-int/lit8 v1, v1, 0x1

    #@5ad
    goto :goto_6

    #@5ae
    .line 369
    :cond_23
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@5b0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5b3
    move-result v6

    #@5b4
    if-lez v6, :cond_24

    #@5b6
    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b9
    const-string/jumbo v6, "Executing Services (fg="

    #@5bc
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5bf
    .line 371
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@5c1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@5c4
    const-string/jumbo v6, ")"

    #@5c7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ca
    .line 372
    const/4 v1, 0x0

    #@5cb
    :goto_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@5cd
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5d0
    move-result v6

    #@5d1
    if-ge v1, v6, :cond_24

    #@5d3
    .line 373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d6
    const-string/jumbo v6, "  - "

    #@5d9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dc
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@5de
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@5e1
    move-result-object v6

    #@5e2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5e5
    .line 372
    add-int/lit8 v1, v1, 0x1

    #@5e7
    goto :goto_7

    #@5e8
    .line 376
    :cond_24
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@5ea
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5ed
    move-result v6

    #@5ee
    if-lez v6, :cond_25

    #@5f0
    .line 377
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f3
    const-string/jumbo v6, "Connections:"

    #@5f6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f9
    .line 378
    const/4 v1, 0x0

    #@5fa
    :goto_8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@5fc
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5ff
    move-result v6

    #@600
    if-ge v1, v6, :cond_25

    #@602
    .line 379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@605
    const-string/jumbo v6, "  - "

    #@608
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@60d
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@610
    move-result-object v6

    #@611
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@614
    .line 378
    add-int/lit8 v1, v1, 0x1

    #@616
    goto :goto_8

    #@617
    .line 382
    :cond_25
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@619
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@61c
    move-result v6

    #@61d
    if-lez v6, :cond_26

    #@61f
    .line 383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@622
    const-string/jumbo v6, "Published Providers:"

    #@625
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@628
    .line 384
    const/4 v1, 0x0

    #@629
    :goto_9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@62b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@62e
    move-result v6

    #@62f
    if-ge v1, v6, :cond_26

    #@631
    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@634
    const-string/jumbo v6, "  - "

    #@637
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@63c
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@63f
    move-result-object v6

    #@640
    check-cast v6, Ljava/lang/String;

    #@642
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@645
    .line 386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@648
    const-string/jumbo v6, "    -> "

    #@64b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@650
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@653
    move-result-object v6

    #@654
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@657
    .line 384
    add-int/lit8 v1, v1, 0x1

    #@659
    goto :goto_9

    #@65a
    .line 389
    :cond_26
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@65c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@65f
    move-result v6

    #@660
    if-lez v6, :cond_27

    #@662
    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@665
    const-string/jumbo v6, "Connected Providers:"

    #@668
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66b
    .line 391
    const/4 v1, 0x0

    #@66c
    :goto_a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@66e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@671
    move-result v6

    #@672
    if-ge v1, v6, :cond_27

    #@674
    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@677
    const-string/jumbo v6, "  - "

    #@67a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67d
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@67f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@682
    move-result-object v6

    #@683
    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    #@685
    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    #@688
    move-result-object v6

    #@689
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68c
    .line 391
    add-int/lit8 v1, v1, 0x1

    #@68e
    goto :goto_a

    #@68f
    .line 395
    :cond_27
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@691
    if-eqz v6, :cond_28

    #@693
    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@696
    const-string/jumbo v6, "curReceiver="

    #@699
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69c
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@69e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6a1
    .line 398
    :cond_28
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@6a3
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@6a6
    move-result v6

    #@6a7
    if-lez v6, :cond_29

    #@6a9
    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6ac
    const-string/jumbo v6, "Receivers:"

    #@6af
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b2
    .line 400
    const/4 v1, 0x0

    #@6b3
    :goto_b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@6b5
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@6b8
    move-result v6

    #@6b9
    if-ge v1, v6, :cond_29

    #@6bb
    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6be
    const-string/jumbo v6, "  - "

    #@6c1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c4
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@6c6
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@6c9
    move-result-object v6

    #@6ca
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6cd
    .line 400
    add-int/lit8 v1, v1, 0x1

    #@6cf
    goto :goto_b

    #@6d0
    .line 187
    :cond_29
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 660
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@2
    if-le v0, p1, :cond_0

    #@4
    .line 661
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@6
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@8
    .line 659
    :cond_0
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 700
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    .line 701
    .local v2, "size":I
    if-nez v2, :cond_0

    #@8
    .line 702
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 704
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    #@c
    .line 705
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@12
    move-result v3

    #@13
    if-ge v0, v3, :cond_1

    #@15
    .line 706
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    aput-object v3, v1, v0

    #@1f
    .line 705
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 708
    :cond_1
    return-object v1
.end method

.method public getSetAdjWithServices()I
    .locals 2

    #@0
    .prologue
    .line 651
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 652
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 653
    const/16 v0, 0x8

    #@c
    return v0

    #@d
    .line 656
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@f
    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    #@0
    .prologue
    .line 480
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 481
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 482
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 483
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 484
    const/4 v3, 0x1

    #@18
    return v3

    #@19
    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 487
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x0

    #@1d
    return v3
.end method

.method kill(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x40

    #@2
    const/4 v3, 0x1

    #@3
    .line 539
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@5
    if-nez v0, :cond_2

    #@7
    .line 540
    const-string/jumbo v0, "kill"

    #@a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 541
    if-eqz p2, :cond_0

    #@f
    .line 542
    const-string/jumbo v0, "ActivityManager"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Killing "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " (adj "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "): "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 544
    :cond_0
    const/4 v0, 0x5

    #@46
    new-array v0, v0, [Ljava/lang/Object;

    #@48
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v1

    #@4e
    const/4 v2, 0x0

    #@4f
    aput-object v1, v0, v2

    #@51
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v1

    #@57
    aput-object v1, v0, v3

    #@59
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5b
    const/4 v2, 0x2

    #@5c
    aput-object v1, v0, v2

    #@5e
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v1

    #@64
    const/4 v2, 0x3

    #@65
    aput-object v1, v0, v2

    #@67
    const/4 v1, 0x4

    #@68
    aput-object p1, v0, v1

    #@6a
    const/16 v1, 0x7547

    #@6c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6f
    .line 545
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@71
    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    #@74
    .line 546
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@76
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@78
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@7a
    invoke-static {v0, v1}, Landroid/os/Process;->killProcessGroup(II)I

    #@7d
    .line 547
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@7f
    if-nez v0, :cond_1

    #@81
    .line 548
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@83
    .line 549
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@85
    .line 551
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@88
    .line 538
    :cond_2
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2
    if-nez v2, :cond_3

    #@4
    .line 431
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6
    .line 432
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_0

    #@8
    .line 434
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@b
    move-result v3

    #@c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v4

    #@10
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@12
    .line 433
    const/4 v2, -0x1

    #@13
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@16
    .line 435
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    #@19
    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1d
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1f
    .line 438
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@21
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@23
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@25
    .line 437
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2b
    .line 439
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    #@30
    .line 440
    const/4 v7, 0x0

    #@31
    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@36
    move-result v2

    #@37
    if-ge v7, v2, :cond_3

    #@39
    .line 441
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@41
    .line 442
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@43
    if-eqz v2, :cond_1

    #@45
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@47
    if-eq v2, v1, :cond_1

    #@49
    .line 443
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    #@4e
    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Ljava/lang/String;

    #@56
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@58
    .line 446
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@5c
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5e
    .line 445
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@61
    move-result-object v2

    #@62
    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@64
    .line 447
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@66
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@68
    if-eq v2, v3, :cond_2

    #@6a
    .line 448
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6c
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    #@6f
    .line 440
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@71
    goto :goto_0

    #@72
    .line 452
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@74
    .line 429
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 603
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@7
    if-eqz v1, :cond_5

    #@9
    .line 604
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 605
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 606
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@17
    instance-of v1, v1, Landroid/content/ComponentName;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 607
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@1d
    check-cast v1, Landroid/content/ComponentName;

    #@1f
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 613
    :goto_0
    const-string/jumbo v1, "<="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 614
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@2e
    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 615
    const-string/jumbo v1, "Proc{"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 616
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@3a
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 617
    const-string/jumbo v1, "}"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 623
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 608
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 609
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@54
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_0

    #@5c
    .line 611
    :cond_2
    const-string/jumbo v1, "{null}"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_0

    #@63
    .line 618
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@65
    if-eqz v1, :cond_4

    #@67
    .line 619
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    goto :goto_1

    #@71
    .line 621
    :cond_4
    const-string/jumbo v1, "{null}"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    goto :goto_1

    #@78
    .line 625
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-object v2
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 456
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3
    .line 457
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@5
    .line 458
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_2

    #@7
    .line 459
    if-eqz v1, :cond_0

    #@9
    .line 461
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@c
    move-result v3

    #@d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@13
    .line 460
    const/4 v2, -0x1

    #@14
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@17
    .line 462
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    #@1a
    .line 464
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@1c
    .line 465
    const/4 v7, 0x0

    #@1d
    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@22
    move-result v2

    #@23
    if-ge v7, v2, :cond_2

    #@25
    .line 466
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@2d
    .line 467
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2f
    if-eqz v2, :cond_1

    #@31
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@33
    if-eq v2, v1, :cond_1

    #@35
    .line 468
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    #@3a
    .line 470
    :cond_1
    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3c
    .line 465
    add-int/lit8 v7, v7, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 455
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    #@0
    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 523
    if-gez p1, :cond_1

    #@6
    .line 535
    :cond_0
    :goto_0
    return p1

    #@7
    .line 525
    :cond_1
    const/4 v0, 0x1

    #@8
    if-ge p1, v0, :cond_2

    #@a
    .line 526
    const/4 p1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 527
    :cond_2
    const/4 v0, 0x2

    #@d
    if-ge p1, v0, :cond_3

    #@f
    .line 528
    const/4 p1, 0x2

    #@10
    goto :goto_0

    #@11
    .line 529
    :cond_3
    const/16 v0, 0x9

    #@13
    if-ge p1, v0, :cond_4

    #@15
    .line 530
    const/16 p1, 0x9

    #@17
    goto :goto_0

    #@18
    .line 531
    :cond_4
    const/16 v0, 0xf

    #@1a
    if-ge p1, v0, :cond_0

    #@1c
    .line 532
    add-int/lit8 p1, p1, 0x1

    #@1e
    goto :goto_0
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 669
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v0

    #@7
    .line 670
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@9
    if-eqz v1, :cond_3

    #@b
    .line 671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v4

    #@f
    .line 672
    .local v4, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@11
    .line 673
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@14
    move-result v3

    #@15
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@17
    .line 672
    const/4 v2, -0x1

    #@18
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@1b
    .line 674
    if-eq v0, v10, :cond_2

    #@1d
    .line 675
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    #@20
    .line 676
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@28
    .line 677
    .local v7, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@30
    if-eq v1, v2, :cond_0

    #@32
    .line 678
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    #@37
    .line 675
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 682
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@3f
    .line 684
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@41
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@43
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@45
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@47
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@49
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@4b
    .line 683
    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@4e
    move-result-object v9

    #@4f
    .line 685
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@51
    .line 686
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@53
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@55
    .line 685
    invoke-direct {v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@58
    .line 687
    .restart local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@5a
    .line 688
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5e
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 689
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@65
    if-eq v9, v1, :cond_2

    #@67
    .line 690
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    #@6a
    .line 668
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    :goto_1
    return-void

    #@6b
    .line 693
    :cond_3
    if-eq v0, v10, :cond_2

    #@6d
    .line 694
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@6f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@72
    .line 695
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@74
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@76
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@7a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@7c
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@7e
    invoke-direct {v3, v6}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@81
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    goto :goto_1
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 424
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@3
    .line 425
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@5
    .line 426
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@7
    .line 423
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    #@0
    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 492
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@8
    .line 493
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 494
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@16
    goto :goto_0

    #@17
    .line 490
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 557
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 560
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@11
    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@17
    return-object v1
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v2, 0x2710

    #@2
    .line 565
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7
    .line 566
    const/16 v1, 0x3a

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 567
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 568
    const/16 v1, 0x2f

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 569
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a
    if-ge v1, v2, :cond_1

    #@1c
    .line 570
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 564
    :cond_0
    :goto_0
    return-void

    #@22
    .line 572
    :cond_1
    const/16 v1, 0x75

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 573
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 574
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@30
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@33
    move-result v0

    #@34
    .line 575
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    #@36
    .line 576
    const/16 v1, 0x61

    #@38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 577
    add-int/lit16 v1, v0, -0x2710

    #@3d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 582
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@42
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@44
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@46
    if-eq v1, v2, :cond_0

    #@48
    .line 583
    const/16 v1, 0x69

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 584
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@4f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@52
    move-result v1

    #@53
    const v2, 0x182b8

    #@56
    sub-int/2addr v1, v2

    #@57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 579
    :cond_2
    const/16 v1, 0x73

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 580
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 591
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 593
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 594
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 595
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 596
    const/16 v1, 0x20

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 597
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@27
    .line 598
    const/16 v1, 0x7d

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@32
    return-object v1
.end method

.method public unlinkDeathRecipient()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 499
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 500
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@15
    .line 502
    :cond_0
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@17
    .line 498
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 506
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@3
    .line 507
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@d
    .line 508
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@15
    .line 509
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@17
    and-int/lit8 v2, v2, 0x8

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 510
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@1e
    .line 505
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    #@1f
    .line 507
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0
.end method
