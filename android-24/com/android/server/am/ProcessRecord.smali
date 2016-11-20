.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

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

.field public inFullBackup:Z

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

.field interactionEventTime:J

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCachedSwapPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastProviderTime:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastSwapPss:J

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
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procStatFile:Ljava/lang/String;

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

.field unlocked:Z

.field final userId:I

.field usingWrapper:Z

.field verifiedAdj:I

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field whitelistManager:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ProcessRecord;->TAG:Ljava/lang/String;

    #@5
    .line 59
    return-void
.end method

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
    const/16 v5, -0x2710

    #@4
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@e
    .line 101
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@10
    .line 102
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@12
    .line 103
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@14
    .line 104
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@16
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1d
    .line 161
    new-instance v0, Landroid/util/ArraySet;

    #@1f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@24
    .line 163
    new-instance v0, Landroid/util/ArraySet;

    #@26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@2b
    .line 165
    new-instance v0, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@32
    .line 167
    new-instance v0, Landroid/util/ArraySet;

    #@34
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@39
    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    #@3b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@40
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@47
    .line 437
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@49
    .line 438
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@4b
    .line 439
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4d
    if-eq v0, p4, :cond_0

    #@4f
    const/4 v0, 0x1

    #@50
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@52
    .line 440
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@54
    .line 441
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@5a
    .line 442
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5c
    .line 443
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5e
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@62
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@64
    invoke-direct {v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 444
    const/16 v0, 0x3e9

    #@6c
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    #@6e
    .line 445
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@70
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@72
    .line 446
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    #@74
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@76
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@78
    .line 447
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@7a
    .line 448
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@7c
    .line 449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7f
    move-result-wide v0

    #@80
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    #@82
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@84
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    #@86
    .line 436
    return-void

    #@87
    :cond_0
    move v0, v1

    #@88
    .line 439
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
    .line 685
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_2

    #@8
    .line 686
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@a
    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@d
    .line 688
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 690
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@15
    .line 689
    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@1b
    .line 691
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 692
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@22
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@24
    if-eq v1, v2, :cond_0

    #@26
    .line 693
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@2b
    .line 698
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 700
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
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
    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 205
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
    .line 206
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
    .line 207
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@21
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@25
    if-eq v6, v7, :cond_0

    #@27
    .line 208
    const-string/jumbo v6, " ISOLATED uid="

    #@2a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@2f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 210
    :cond_0
    const-string/jumbo v6, " gids={"

    #@35
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 211
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@3a
    if-eqz v6, :cond_2

    #@3c
    .line 212
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
    .line 213
    if-eqz v0, :cond_1

    #@44
    const-string/jumbo v6, ", "

    #@47
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 214
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@4c
    aget v6, v6, v0

    #@4e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 218
    .end local v0    # "gi":I
    :cond_2
    const-string/jumbo v6, "}"

    #@57
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 219
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
    .line 220
    const-string/jumbo v6, " instructionSet="

    #@6b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 221
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@75
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@77
    if-eqz v6, :cond_3

    #@79
    .line 222
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
    .line 224
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@8b
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@8d
    if-eqz v6, :cond_4

    #@8f
    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v6, "manageSpaceActivityName="

    #@95
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 226
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@9a
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@9c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 228
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
    .line 229
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
    .line 230
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
    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    const-string/jumbo v6, "packageList={"

    #@cf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 232
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
    .line 233
    if-lez v1, :cond_5

    #@dd
    const-string/jumbo v6, ", "

    #@e0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 234
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
    .line 232
    add-int/lit8 v1, v1, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 236
    :cond_6
    const-string/jumbo v6, "}"

    #@f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 237
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    #@f9
    if-eqz v6, :cond_9

    #@fb
    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string/jumbo v6, "packageDependencies={"

    #@101
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    .line 239
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
    .line 240
    if-lez v1, :cond_7

    #@10f
    const-string/jumbo v6, ", "

    #@112
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    .line 241
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
    .line 239
    add-int/lit8 v1, v1, 0x1

    #@122
    goto :goto_2

    #@123
    .line 243
    :cond_8
    const-string/jumbo v6, "}"

    #@126
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 245
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
    .line 246
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@139
    if-nez v6, :cond_a

    #@13b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@13d
    if-eqz v6, :cond_23

    #@13f
    .line 248
    :cond_a
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    const-string/jumbo v6, "instrumentationClass="

    #@145
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@148
    .line 249
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@14a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@14d
    .line 250
    const-string/jumbo v6, " instrumentationProfileFile="

    #@150
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    .line 251
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@155
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v6, "instrumentationArguments="

    #@15e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 253
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@163
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@166
    .line 254
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@169
    const-string/jumbo v6, "instrumentationInfo="

    #@16c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16f
    .line 255
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@171
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@174
    .line 256
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@176
    if-eqz v6, :cond_b

    #@178
    .line 257
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
    .line 260
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
    .line 261
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
    .line 262
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    #@1ba
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@1bd
    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    const-string/jumbo v6, "lastActivityTime="

    #@1c3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    .line 264
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    #@1c8
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1cb
    .line 265
    const-string/jumbo v6, " lastPssTime="

    #@1ce
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 266
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@1d3
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1d6
    .line 267
    const-string/jumbo v6, " nextPssTime="

    #@1d9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    .line 268
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    #@1de
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1e1
    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1e4
    .line 270
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
    .line 271
    const-string/jumbo v6, " lruSeq="

    #@1f5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f8
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    #@1fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1fd
    .line 272
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
    .line 273
    const-string/jumbo v6, " lastSwapPss="

    #@20e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    #@213
    const-wide/16 v8, 0x400

    #@215
    mul-long/2addr v6, v8

    #@216
    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@219
    .line 274
    const-string/jumbo v6, " lastCachedPss="

    #@21c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21f
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    #@221
    const-wide/16 v8, 0x400

    #@223
    mul-long/2addr v6, v8

    #@224
    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@227
    .line 275
    const-string/jumbo v6, " lastCachedSwapPss="

    #@22a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22d
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    #@22f
    const-wide/16 v8, 0x400

    #@231
    mul-long/2addr v6, v8

    #@232
    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@235
    .line 276
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@238
    .line 277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23b
    const-string/jumbo v6, "cached="

    #@23e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@241
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    #@243
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@246
    .line 278
    const-string/jumbo v6, " empty="

    #@249
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    #@24e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@251
    .line 279
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    #@253
    if-eqz v6, :cond_c

    #@255
    .line 280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@258
    const-string/jumbo v6, "serviceb="

    #@25b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    #@260
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@263
    .line 281
    const-string/jumbo v6, " serviceHighRam="

    #@266
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@269
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    #@26b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@26e
    .line 283
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    #@270
    if-eqz v6, :cond_d

    #@272
    .line 284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    const-string/jumbo v6, "notCachedSinceIdle="

    #@278
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27b
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    #@27d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@280
    .line 285
    const-string/jumbo v6, " initialIdlePss="

    #@283
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@286
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    #@288
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    #@28b
    .line 287
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28e
    const-string/jumbo v6, "oom: max="

    #@291
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@294
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    #@296
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@299
    .line 288
    const-string/jumbo v6, " curRaw="

    #@29c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29f
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@2a1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2a4
    .line 289
    const-string/jumbo v6, " setRaw="

    #@2a7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2aa
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@2ac
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2af
    .line 290
    const-string/jumbo v6, " cur="

    #@2b2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b5
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@2b7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2ba
    .line 291
    const-string/jumbo v6, " set="

    #@2bd
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c0
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2c2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2c5
    .line 292
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    const-string/jumbo v6, "curSchedGroup="

    #@2cb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ce
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    #@2d0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2d3
    .line 293
    const-string/jumbo v6, " setSchedGroup="

    #@2d6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d9
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@2db
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2de
    .line 294
    const-string/jumbo v6, " systemNoUi="

    #@2e1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e4
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    #@2e6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@2e9
    .line 295
    const-string/jumbo v6, " trimMemoryLevel="

    #@2ec
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    #@2f1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2f4
    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    const-string/jumbo v6, "curProcState="

    #@2fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fd
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@2ff
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@302
    .line 297
    const-string/jumbo v6, " repProcState="

    #@305
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@308
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@30a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@30d
    .line 298
    const-string/jumbo v6, " pssProcState="

    #@310
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@313
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@315
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@318
    .line 299
    const-string/jumbo v6, " setProcState="

    #@31b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31e
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@320
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@323
    .line 300
    const-string/jumbo v6, " lastStateTime="

    #@326
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@329
    .line 301
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    #@32b
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@32e
    .line 302
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@331
    .line 303
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@333
    if-nez v6, :cond_e

    #@335
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@337
    if-nez v6, :cond_e

    #@339
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@33b
    if-nez v6, :cond_e

    #@33d
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@33f
    if-eqz v6, :cond_f

    #@341
    .line 304
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@344
    const-string/jumbo v6, "hasShownUi="

    #@347
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@34c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@34f
    .line 305
    const-string/jumbo v6, " pendingUiClean="

    #@352
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@355
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@357
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@35a
    .line 306
    const-string/jumbo v6, " hasAboveClient="

    #@35d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@360
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@362
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@365
    .line 307
    const-string/jumbo v6, " treatLikeActivity="

    #@368
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36b
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@36d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@370
    .line 309
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@372
    if-nez v6, :cond_10

    #@374
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@376
    if-nez v6, :cond_10

    #@378
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@37a
    if-eqz v6, :cond_11

    #@37c
    .line 310
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37f
    const-string/jumbo v6, "setIsForeground="

    #@382
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@385
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@387
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@38a
    .line 311
    const-string/jumbo v6, " foregroundServices="

    #@38d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@390
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@392
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@395
    .line 312
    const-string/jumbo v6, " forcingToForeground="

    #@398
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@39d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3a0
    .line 314
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@3a2
    if-nez v6, :cond_12

    #@3a4
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3a6
    const-wide/16 v8, 0x0

    #@3a8
    cmp-long v6, v6, v8

    #@3aa
    if-eqz v6, :cond_15

    #@3ac
    .line 315
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    const-string/jumbo v6, "reportedInteraction="

    #@3b2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b5
    .line 316
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@3b7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3ba
    .line 317
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    #@3bc
    const-wide/16 v8, 0x0

    #@3be
    cmp-long v6, v6, v8

    #@3c0
    if-eqz v6, :cond_13

    #@3c2
    .line 318
    const-string/jumbo v6, " time="

    #@3c5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c8
    .line 319
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    #@3ca
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3cd
    move-result-wide v8

    #@3ce
    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3d1
    .line 321
    :cond_13
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3d3
    const-wide/16 v8, 0x0

    #@3d5
    cmp-long v6, v6, v8

    #@3d7
    if-eqz v6, :cond_14

    #@3d9
    .line 322
    const-string/jumbo v6, " fgInteractionTime="

    #@3dc
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3df
    .line 323
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3e1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3e4
    move-result-wide v8

    #@3e5
    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3e8
    .line 325
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3eb
    .line 327
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3ed
    if-nez v6, :cond_16

    #@3ef
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@3f1
    if-eqz v6, :cond_17

    #@3f3
    .line 328
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f6
    const-string/jumbo v6, "persistent="

    #@3f9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fc
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3fe
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@401
    .line 329
    const-string/jumbo v6, " removed="

    #@404
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@407
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@409
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@40c
    .line 331
    :cond_17
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@40e
    if-nez v6, :cond_18

    #@410
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@412
    if-nez v6, :cond_18

    #@414
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@416
    if-eqz v6, :cond_19

    #@418
    .line 332
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41b
    const-string/jumbo v6, "hasClientActivities="

    #@41e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@421
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@423
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@426
    .line 333
    const-string/jumbo v6, " foregroundActivities="

    #@429
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@42e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@431
    .line 334
    const-string/jumbo v6, " (rep="

    #@434
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@437
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@439
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@43c
    const-string/jumbo v6, ")"

    #@43f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@442
    .line 336
    :cond_19
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    #@444
    const-wide/16 v8, 0x0

    #@446
    cmp-long v6, v6, v8

    #@448
    if-lez v6, :cond_1a

    #@44a
    .line 337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44d
    const-string/jumbo v6, "lastProviderTime="

    #@450
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@453
    .line 338
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    #@455
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@458
    .line 339
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@45b
    .line 341
    :cond_1a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@45d
    if-eqz v6, :cond_1b

    #@45f
    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@462
    const-string/jumbo v6, "hasStartedServices="

    #@465
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@468
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@46a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@46d
    .line 344
    :cond_1b
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@46f
    const/16 v7, 0xa

    #@471
    if-lt v6, v7, :cond_1c

    #@473
    .line 346
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@475
    monitor-enter v7

    #@476
    .line 347
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@478
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@47a
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@47c
    .line 348
    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@47e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@481
    move-result-wide v10

    #@482
    .line 347
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@485
    move-result-wide v4

    #@486
    .local v4, "wtime":J
    monitor-exit v7

    #@487
    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48a
    const-string/jumbo v6, "lastWakeTime="

    #@48d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@490
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@492
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@495
    .line 351
    const-string/jumbo v6, " timeUsed="

    #@498
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49b
    .line 352
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@49d
    sub-long v6, v4, v6

    #@49f
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4a2
    const-string/jumbo v6, ""

    #@4a5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a8
    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ab
    const-string/jumbo v6, "lastCpuTime="

    #@4ae
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b1
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@4b3
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@4b6
    .line 354
    const-string/jumbo v6, " timeUsed="

    #@4b9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bc
    .line 355
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    #@4be
    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@4c0
    sub-long/2addr v6, v8

    #@4c1
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4c4
    const-string/jumbo v6, ""

    #@4c7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ca
    .line 357
    .end local v4    # "wtime":J
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cd
    const-string/jumbo v6, "lastRequestedGc="

    #@4d0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d3
    .line 358
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    #@4d5
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4d8
    .line 359
    const-string/jumbo v6, " lastLowMemory="

    #@4db
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4de
    .line 360
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    #@4e0
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4e3
    .line 361
    const-string/jumbo v6, " reportLowMemory="

    #@4e6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e9
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    #@4eb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@4ee
    .line 362
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@4f0
    if-nez v6, :cond_1d

    #@4f2
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@4f4
    if-nez v6, :cond_1d

    #@4f6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@4f8
    if-eqz v6, :cond_1e

    #@4fa
    .line 363
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fd
    const-string/jumbo v6, "killed="

    #@500
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@503
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@505
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@508
    .line 364
    const-string/jumbo v6, " killedByAm="

    #@50b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@510
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@513
    .line 365
    const-string/jumbo v6, " waitingToKill="

    #@516
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@519
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@51b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51e
    .line 367
    :cond_1e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@520
    if-nez v6, :cond_1f

    #@522
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@524
    if-nez v6, :cond_1f

    #@526
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@528
    if-eqz v6, :cond_24

    #@52a
    .line 369
    :cond_1f
    :goto_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52d
    const-string/jumbo v6, "debugging="

    #@530
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@533
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@535
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@538
    .line 370
    const-string/jumbo v6, " crashing="

    #@53b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@540
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@543
    .line 371
    const-string/jumbo v6, " "

    #@546
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@549
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@54b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@54e
    .line 372
    const-string/jumbo v6, " notResponding="

    #@551
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@554
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@556
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@559
    .line 373
    const-string/jumbo v6, " "

    #@55c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55f
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@561
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@564
    .line 374
    const-string/jumbo v6, " bad="

    #@567
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@56c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@56f
    .line 377
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@571
    if-eqz v6, :cond_20

    #@573
    .line 378
    const-string/jumbo v6, " errorReportReceiver="

    #@576
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@579
    .line 379
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@57b
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@57e
    move-result-object v6

    #@57f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@582
    .line 381
    :cond_20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@585
    .line 383
    :cond_21
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@587
    if-eqz v6, :cond_22

    #@589
    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58c
    const-string/jumbo v6, "whitelistManager="

    #@58f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@592
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@594
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@597
    .line 386
    :cond_22
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@599
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@59c
    move-result v6

    #@59d
    if-lez v6, :cond_25

    #@59f
    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a2
    const-string/jumbo v6, "Activities:"

    #@5a5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a8
    .line 388
    const/4 v1, 0x0

    #@5a9
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5ab
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5ae
    move-result v6

    #@5af
    if-ge v1, v6, :cond_25

    #@5b1
    .line 389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b4
    const-string/jumbo v6, "  - "

    #@5b7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ba
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5bc
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5bf
    move-result-object v6

    #@5c0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5c3
    .line 388
    add-int/lit8 v1, v1, 0x1

    #@5c5
    goto :goto_5

    #@5c6
    .line 247
    :cond_23
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@5c8
    if-eqz v6, :cond_b

    #@5ca
    goto/16 :goto_3

    #@5cc
    .line 346
    :catchall_0
    move-exception v6

    #@5cd
    monitor-exit v7

    #@5ce
    throw v6

    #@5cf
    .line 367
    :cond_24
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@5d1
    if-nez v6, :cond_1f

    #@5d3
    .line 368
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@5d5
    if-nez v6, :cond_1f

    #@5d7
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@5d9
    .line 367
    if-eqz v6, :cond_21

    #@5db
    goto/16 :goto_4

    #@5dd
    .line 392
    :cond_25
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5df
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5e2
    move-result v6

    #@5e3
    if-lez v6, :cond_26

    #@5e5
    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e8
    const-string/jumbo v6, "Services:"

    #@5eb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ee
    .line 394
    const/4 v1, 0x0

    #@5ef
    :goto_6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5f1
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5f4
    move-result v6

    #@5f5
    if-ge v1, v6, :cond_26

    #@5f7
    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5fa
    const-string/jumbo v6, "  - "

    #@5fd
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@600
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@602
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@605
    move-result-object v6

    #@606
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@609
    .line 394
    add-int/lit8 v1, v1, 0x1

    #@60b
    goto :goto_6

    #@60c
    .line 398
    :cond_26
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@60e
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@611
    move-result v6

    #@612
    if-lez v6, :cond_27

    #@614
    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@617
    const-string/jumbo v6, "Executing Services (fg="

    #@61a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61d
    .line 400
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@61f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@622
    const-string/jumbo v6, ")"

    #@625
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@628
    .line 401
    const/4 v1, 0x0

    #@629
    :goto_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@62b
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@62e
    move-result v6

    #@62f
    if-ge v1, v6, :cond_27

    #@631
    .line 402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@634
    const-string/jumbo v6, "  - "

    #@637
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@63c
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@63f
    move-result-object v6

    #@640
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@643
    .line 401
    add-int/lit8 v1, v1, 0x1

    #@645
    goto :goto_7

    #@646
    .line 405
    :cond_27
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@648
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@64b
    move-result v6

    #@64c
    if-lez v6, :cond_28

    #@64e
    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@651
    const-string/jumbo v6, "Connections:"

    #@654
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@657
    .line 407
    const/4 v1, 0x0

    #@658
    :goto_8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@65a
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@65d
    move-result v6

    #@65e
    if-ge v1, v6, :cond_28

    #@660
    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@663
    const-string/jumbo v6, "  - "

    #@666
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@669
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@66b
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@66e
    move-result-object v6

    #@66f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@672
    .line 407
    add-int/lit8 v1, v1, 0x1

    #@674
    goto :goto_8

    #@675
    .line 411
    :cond_28
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@677
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@67a
    move-result v6

    #@67b
    if-lez v6, :cond_29

    #@67d
    .line 412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@680
    const-string/jumbo v6, "Published Providers:"

    #@683
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@686
    .line 413
    const/4 v1, 0x0

    #@687
    :goto_9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@689
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@68c
    move-result v6

    #@68d
    if-ge v1, v6, :cond_29

    #@68f
    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@692
    const-string/jumbo v6, "  - "

    #@695
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@698
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@69a
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@69d
    move-result-object v6

    #@69e
    check-cast v6, Ljava/lang/String;

    #@6a0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a3
    .line 415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a6
    const-string/jumbo v6, "    -> "

    #@6a9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6ac
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@6ae
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6b1
    move-result-object v6

    #@6b2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6b5
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@6b7
    goto :goto_9

    #@6b8
    .line 418
    :cond_29
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6ba
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6bd
    move-result v6

    #@6be
    if-lez v6, :cond_2a

    #@6c0
    .line 419
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c3
    const-string/jumbo v6, "Connected Providers:"

    #@6c6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c9
    .line 420
    const/4 v1, 0x0

    #@6ca
    :goto_a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6cc
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6cf
    move-result v6

    #@6d0
    if-ge v1, v6, :cond_2a

    #@6d2
    .line 421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d5
    const-string/jumbo v6, "  - "

    #@6d8
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6db
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6dd
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6e0
    move-result-object v6

    #@6e1
    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    #@6e3
    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    #@6e6
    move-result-object v6

    #@6e7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6ea
    .line 420
    add-int/lit8 v1, v1, 0x1

    #@6ec
    goto :goto_a

    #@6ed
    .line 424
    :cond_2a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@6ef
    if-eqz v6, :cond_2b

    #@6f1
    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f4
    const-string/jumbo v6, "curReceiver="

    #@6f7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6fa
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@6fc
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6ff
    .line 427
    :cond_2b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@701
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@704
    move-result v6

    #@705
    if-lez v6, :cond_2c

    #@707
    .line 428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70a
    const-string/jumbo v6, "Receivers:"

    #@70d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@710
    .line 429
    const/4 v1, 0x0

    #@711
    :goto_b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@713
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@716
    move-result v6

    #@717
    if-ge v1, v6, :cond_2c

    #@719
    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71c
    const-string/jumbo v6, "  - "

    #@71f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@722
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@724
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@727
    move-result-object v6

    #@728
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@72b
    .line 429
    add-int/lit8 v1, v1, 0x1

    #@72d
    goto :goto_b

    #@72e
    .line 202
    :cond_2c
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 713
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@2
    if-le v0, p1, :cond_0

    #@4
    .line 714
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@6
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@8
    .line 712
    :cond_0
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 753
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    .line 754
    .local v2, "size":I
    if-nez v2, :cond_0

    #@8
    .line 755
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 757
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    #@c
    .line 758
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
    .line 759
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
    .line 758
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 761
    :cond_1
    return-object v1
.end method

.method public getSetAdjWithServices()I
    .locals 2

    #@0
    .prologue
    .line 704
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2
    const/16 v1, 0x384

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 705
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 706
    const/16 v0, 0x320

    #@c
    return v0

    #@d
    .line 709
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@f
    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    #@0
    .prologue
    .line 510
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 511
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 512
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 513
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 514
    const/4 v3, 0x1

    #@18
    return v3

    #@19
    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 517
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
    .line 592
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@5
    if-nez v0, :cond_2

    #@7
    .line 593
    const-string/jumbo v0, "kill"

    #@a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 594
    if-eqz p2, :cond_0

    #@f
    .line 595
    sget-object v0, Lcom/android/server/am/ProcessRecord;->TAG:Ljava/lang/String;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Killing "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " (adj "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "): "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 597
    :cond_0
    const/4 v0, 0x5

    #@45
    new-array v0, v0, [Ljava/lang/Object;

    #@47
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v1

    #@4d
    const/4 v2, 0x0

    #@4e
    aput-object v1, v0, v2

    #@50
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v1

    #@56
    aput-object v1, v0, v3

    #@58
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5a
    const/4 v2, 0x2

    #@5b
    aput-object v1, v0, v2

    #@5d
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v1

    #@63
    const/4 v2, 0x3

    #@64
    aput-object v1, v0, v2

    #@66
    const/4 v1, 0x4

    #@67
    aput-object p1, v0, v1

    #@69
    const/16 v1, 0x7547

    #@6b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6e
    .line 598
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@70
    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    #@73
    .line 599
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@75
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@77
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    #@7a
    .line 600
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@7c
    if-nez v0, :cond_1

    #@7e
    .line 601
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@80
    .line 602
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@82
    .line 604
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@85
    .line 591
    :cond_2
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2
    if-nez v2, :cond_3

    #@4
    .line 461
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@6
    .line 462
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    #@8
    .line 464
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
    .line 463
    const/4 v2, -0x1

    #@13
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@16
    .line 465
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@19
    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1d
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1f
    .line 468
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@21
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@23
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@25
    .line 467
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@2b
    .line 469
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@30
    .line 470
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
    .line 471
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@41
    .line 472
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@43
    if-eqz v2, :cond_1

    #@45
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@47
    if-eq v2, v1, :cond_1

    #@49
    .line 473
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@4e
    .line 475
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
    .line 476
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@5c
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5e
    .line 475
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@61
    move-result-object v2

    #@62
    iput-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@64
    .line 477
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@66
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@68
    if-eq v2, v3, :cond_2

    #@6a
    .line 478
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@6c
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@6f
    .line 470
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@71
    goto :goto_0

    #@72
    .line 482
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v7    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@74
    .line 459
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 656
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@7
    if-eqz v1, :cond_5

    #@9
    .line 657
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 658
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 659
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@17
    instance-of v1, v1, Landroid/content/ComponentName;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 660
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
    .line 666
    :goto_0
    const-string/jumbo v1, "<="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 667
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@2e
    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 668
    const-string/jumbo v1, "Proc{"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 669
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
    .line 670
    const-string/jumbo v1, "}"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 676
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 661
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 662
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
    .line 664
    :cond_2
    const-string/jumbo v1, "{null}"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_0

    #@63
    .line 671
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@65
    if-eqz v1, :cond_4

    #@67
    .line 672
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
    .line 674
    :cond_4
    const-string/jumbo v1, "{null}"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    goto :goto_1

    #@78
    .line 678
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
    .line 486
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3
    .line 487
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@5
    .line 488
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_2

    #@7
    .line 489
    if-eqz v1, :cond_0

    #@9
    .line 491
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
    .line 490
    const/4 v2, -0x1

    #@14
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@17
    .line 492
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@1a
    .line 494
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@1c
    .line 495
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
    .line 496
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@2d
    .line 497
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@2f
    if-eqz v2, :cond_1

    #@31
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@33
    if-eq v2, v1, :cond_1

    #@35
    .line 498
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@3a
    .line 500
    :cond_1
    iput-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@3c
    .line 495
    add-int/lit8 v7, v7, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 485
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    #@0
    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 553
    if-gez p1, :cond_1

    #@6
    .line 565
    :cond_0
    :goto_0
    return p1

    #@7
    .line 555
    :cond_1
    const/16 v0, 0x64

    #@9
    if-ge p1, v0, :cond_2

    #@b
    .line 556
    const/16 p1, 0x64

    #@d
    goto :goto_0

    #@e
    .line 557
    :cond_2
    const/16 v0, 0xc8

    #@10
    if-ge p1, v0, :cond_3

    #@12
    .line 558
    const/16 p1, 0xc8

    #@14
    goto :goto_0

    #@15
    .line 559
    :cond_3
    const/16 v0, 0x384

    #@17
    if-ge p1, v0, :cond_4

    #@19
    .line 560
    const/16 p1, 0x384

    #@1b
    goto :goto_0

    #@1c
    .line 561
    :cond_4
    const/16 v0, 0x38a

    #@1e
    if-ge p1, v0, :cond_0

    #@20
    .line 562
    add-int/lit8 p1, p1, 0x1

    #@22
    goto :goto_0
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 722
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v0

    #@7
    .line 723
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@9
    if-eqz v1, :cond_3

    #@b
    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v4

    #@f
    .line 725
    .local v4, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@11
    .line 726
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@14
    move-result v3

    #@15
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@17
    .line 725
    const/4 v2, -0x1

    #@18
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@1b
    .line 727
    if-eq v0, v10, :cond_2

    #@1d
    .line 728
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    #@20
    .line 729
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@28
    .line 730
    .local v7, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@2e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@30
    if-eq v1, v2, :cond_0

    #@32
    .line 731
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@37
    .line 728
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 735
    .end local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@3f
    .line 737
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
    .line 736
    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@4e
    move-result-object v9

    #@4f
    .line 738
    .local v9, "ps":Lcom/android/internal/app/procstats/ProcessState;
    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@51
    .line 739
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@53
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@55
    .line 738
    invoke-direct {v7, v1}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@58
    .line 740
    .restart local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@5a
    .line 741
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5e
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 742
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@65
    if-eq v9, v1, :cond_2

    #@67
    .line 743
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@6a
    .line 721
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    :goto_1
    return-void

    #@6b
    .line 746
    :cond_3
    if-eq v0, v10, :cond_2

    #@6d
    .line 747
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@6f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@72
    .line 748
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@74
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@76
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@7a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@7c
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@7e
    invoke-direct {v3, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@81
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    goto :goto_1
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 572
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 573
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@a
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@d
    move-result v4

    #@e
    if-ne v1, v4, :cond_0

    #@10
    .line 574
    sget-object v1, Lcom/android/server/am/ProcessRecord;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v4, "scheduleCrash: trying to crash system process!"

    #@15
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 575
    return-void

    #@19
    .line 577
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 579
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1f
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 568
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    return-void

    #@26
    .line 580
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@27
    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "scheduleCrash for \'"

    #@2f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v4, "\' failed"

    #@3a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    const/4 v4, 0x1

    #@43
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    goto :goto_0

    #@4a
    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4b
    .line 585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 584
    throw v1
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 453
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@3
    .line 454
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    #@5
    .line 455
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@7
    .line 456
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@9
    .line 452
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    #@0
    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 522
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@8
    .line 523
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 524
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
    .line 520
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 610
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 613
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@11
    .line 614
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
    .line 618
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7
    .line 619
    const/16 v1, 0x3a

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 620
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 621
    const/16 v1, 0x2f

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 622
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a
    if-ge v1, v2, :cond_1

    #@1c
    .line 623
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 617
    :cond_0
    :goto_0
    return-void

    #@22
    .line 625
    :cond_1
    const/16 v1, 0x75

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 626
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 627
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@30
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@33
    move-result v0

    #@34
    .line 628
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    #@36
    .line 629
    const/16 v1, 0x61

    #@38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 630
    add-int/lit16 v1, v0, -0x2710

    #@3d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 635
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@42
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@44
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@46
    if-eq v1, v2, :cond_0

    #@48
    .line 636
    const/16 v1, 0x69

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 637
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
    .line 632
    :cond_2
    const/16 v1, 0x73

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 633
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 644
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 647
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 648
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
    .line 649
    const/16 v1, 0x20

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 650
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@27
    .line 651
    const/16 v1, 0x7d

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 652
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
    .line 529
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 530
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
    .line 532
    :cond_0
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@17
    .line 528
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 536
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@3
    .line 537
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
    .line 538
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@15
    .line 539
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@17
    and-int/lit8 v2, v2, 0x8

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 540
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@1e
    .line 535
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    #@1f
    .line 537
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0
.end method
