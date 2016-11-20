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

.field hasTopUi:Z

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

.field renderThreadTid:I

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field reportedInteraction:Z

.field requiredAbi:Ljava/lang/String;

.field savedPriority:I

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

.field vrThreadTid:I

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
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@e
    .line 102
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@10
    .line 103
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@12
    .line 104
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@14
    .line 105
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@16
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1d
    .line 166
    new-instance v0, Landroid/util/ArraySet;

    #@1f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@24
    .line 168
    new-instance v0, Landroid/util/ArraySet;

    #@26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@2b
    .line 170
    new-instance v0, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@32
    .line 172
    new-instance v0, Landroid/util/ArraySet;

    #@34
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@39
    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    #@3b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@40
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@47
    .line 446
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@49
    .line 447
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@4b
    .line 448
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4d
    if-eq v0, p4, :cond_0

    #@4f
    const/4 v0, 0x1

    #@50
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@52
    .line 449
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@54
    .line 450
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@5a
    .line 451
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5c
    .line 452
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
    .line 453
    const/16 v0, 0x3e9

    #@6c
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    #@6e
    .line 454
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@70
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@72
    .line 455
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    #@74
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@76
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@78
    .line 456
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@7a
    .line 457
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@7c
    .line 458
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
    .line 445
    return-void

    #@87
    :cond_0
    move v0, v1

    #@88
    .line 448
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
    .line 694
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_2

    #@8
    .line 695
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@a
    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@d
    .line 697
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 699
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@15
    .line 698
    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@1b
    .line 700
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 701
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@22
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@24
    if-eq v1, v2, :cond_0

    #@26
    .line 702
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@2b
    .line 707
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 705
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 709
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
    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 210
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
    .line 211
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
    .line 212
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@21
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@25
    if-eq v6, v7, :cond_0

    #@27
    .line 213
    const-string/jumbo v6, " ISOLATED uid="

    #@2a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@2f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 215
    :cond_0
    const-string/jumbo v6, " gids={"

    #@35
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 216
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@3a
    if-eqz v6, :cond_2

    #@3c
    .line 217
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
    .line 218
    if-eqz v0, :cond_1

    #@44
    const-string/jumbo v6, ", "

    #@47
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 219
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    #@4c
    aget v6, v6, v0

    #@4e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 223
    .end local v0    # "gi":I
    :cond_2
    const-string/jumbo v6, "}"

    #@57
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 224
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
    .line 225
    const-string/jumbo v6, " instructionSet="

    #@6b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 226
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@75
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@77
    if-eqz v6, :cond_3

    #@79
    .line 227
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
    .line 229
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@8b
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@8d
    if-eqz v6, :cond_4

    #@8f
    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v6, "manageSpaceActivityName="

    #@95
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 231
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@9a
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@9c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 233
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
    .line 234
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
    .line 235
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
    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    const-string/jumbo v6, "packageList={"

    #@cf
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 237
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
    .line 238
    if-lez v1, :cond_5

    #@dd
    const-string/jumbo v6, ", "

    #@e0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 239
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
    .line 237
    add-int/lit8 v1, v1, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 241
    :cond_6
    const-string/jumbo v6, "}"

    #@f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 242
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    #@f9
    if-eqz v6, :cond_9

    #@fb
    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string/jumbo v6, "packageDependencies={"

    #@101
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    .line 244
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
    .line 245
    if-lez v1, :cond_7

    #@10f
    const-string/jumbo v6, ", "

    #@112
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    .line 246
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
    .line 244
    add-int/lit8 v1, v1, 0x1

    #@122
    goto :goto_2

    #@123
    .line 248
    :cond_8
    const-string/jumbo v6, "}"

    #@126
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 250
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
    .line 251
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@139
    if-nez v6, :cond_a

    #@13b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@13d
    if-eqz v6, :cond_23

    #@13f
    .line 253
    :cond_a
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    const-string/jumbo v6, "instrumentationClass="

    #@145
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@148
    .line 254
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    #@14a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@14d
    .line 255
    const-string/jumbo v6, " instrumentationProfileFile="

    #@150
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    .line 256
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    #@155
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 257
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v6, "instrumentationArguments="

    #@15e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 258
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@163
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@166
    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@169
    const-string/jumbo v6, "instrumentationInfo="

    #@16c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16f
    .line 260
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@171
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@174
    .line 261
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    #@176
    if-eqz v6, :cond_b

    #@178
    .line 262
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
    .line 265
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
    .line 266
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
    .line 267
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    #@1ba
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@1bd
    .line 268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    const-string/jumbo v6, "lastActivityTime="

    #@1c3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    .line 269
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    #@1c8
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1cb
    .line 270
    const-string/jumbo v6, " lastPssTime="

    #@1ce
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 271
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@1d3
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1d6
    .line 272
    const-string/jumbo v6, " nextPssTime="

    #@1d9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    .line 273
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    #@1de
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1e1
    .line 274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1e4
    .line 275
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
    .line 276
    const-string/jumbo v6, " lruSeq="

    #@1f5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f8
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    #@1fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1fd
    .line 277
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
    .line 278
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
    .line 279
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
    .line 280
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
    .line 281
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@238
    .line 282
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
    .line 283
    const-string/jumbo v6, " empty="

    #@249
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    #@24e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@251
    .line 284
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    #@253
    if-eqz v6, :cond_c

    #@255
    .line 285
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
    .line 286
    const-string/jumbo v6, " serviceHighRam="

    #@266
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@269
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    #@26b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@26e
    .line 288
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    #@270
    if-eqz v6, :cond_d

    #@272
    .line 289
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
    .line 290
    const-string/jumbo v6, " initialIdlePss="

    #@283
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@286
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    #@288
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    #@28b
    .line 292
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
    .line 293
    const-string/jumbo v6, " curRaw="

    #@29c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29f
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    #@2a1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2a4
    .line 294
    const-string/jumbo v6, " setRaw="

    #@2a7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2aa
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    #@2ac
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2af
    .line 295
    const-string/jumbo v6, " cur="

    #@2b2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b5
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    #@2b7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2ba
    .line 296
    const-string/jumbo v6, " set="

    #@2bd
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c0
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2c2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2c5
    .line 297
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
    .line 298
    const-string/jumbo v6, " setSchedGroup="

    #@2d6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d9
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@2db
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2de
    .line 299
    const-string/jumbo v6, " systemNoUi="

    #@2e1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e4
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    #@2e6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@2e9
    .line 300
    const-string/jumbo v6, " trimMemoryLevel="

    #@2ec
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    #@2f1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@2f4
    .line 301
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    const-string/jumbo v6, "vrThreadTid="

    #@2fa
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fd
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    #@2ff
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@302
    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@305
    const-string/jumbo v6, "curProcState="

    #@308
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30b
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@30d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@310
    .line 303
    const-string/jumbo v6, " repProcState="

    #@313
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@316
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@318
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@31b
    .line 304
    const-string/jumbo v6, " pssProcState="

    #@31e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@321
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@323
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@326
    .line 305
    const-string/jumbo v6, " setProcState="

    #@329
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32c
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@32e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@331
    .line 306
    const-string/jumbo v6, " lastStateTime="

    #@334
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@337
    .line 307
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    #@339
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@33c
    .line 308
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@33f
    .line 309
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@341
    if-nez v6, :cond_e

    #@343
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@345
    if-nez v6, :cond_e

    #@347
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@349
    if-nez v6, :cond_e

    #@34b
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@34d
    if-eqz v6, :cond_f

    #@34f
    .line 310
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@352
    const-string/jumbo v6, "hasShownUi="

    #@355
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@358
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@35a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@35d
    .line 311
    const-string/jumbo v6, " pendingUiClean="

    #@360
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@363
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@365
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@368
    .line 312
    const-string/jumbo v6, " hasAboveClient="

    #@36b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@370
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@373
    .line 313
    const-string/jumbo v6, " treatLikeActivity="

    #@376
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@379
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    #@37b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@37e
    .line 315
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@380
    if-nez v6, :cond_10

    #@382
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@384
    if-nez v6, :cond_10

    #@386
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@388
    if-eqz v6, :cond_11

    #@38a
    .line 316
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38d
    const-string/jumbo v6, "setIsForeground="

    #@390
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@393
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    #@395
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@398
    .line 317
    const-string/jumbo v6, " foregroundServices="

    #@39b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    #@3a0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3a3
    .line 318
    const-string/jumbo v6, " forcingToForeground="

    #@3a6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    #@3ab
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3ae
    .line 320
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@3b0
    if-nez v6, :cond_12

    #@3b2
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3b4
    const-wide/16 v8, 0x0

    #@3b6
    cmp-long v6, v6, v8

    #@3b8
    if-eqz v6, :cond_15

    #@3ba
    .line 321
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bd
    const-string/jumbo v6, "reportedInteraction="

    #@3c0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c3
    .line 322
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    #@3c5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@3c8
    .line 323
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    #@3ca
    const-wide/16 v8, 0x0

    #@3cc
    cmp-long v6, v6, v8

    #@3ce
    if-eqz v6, :cond_13

    #@3d0
    .line 324
    const-string/jumbo v6, " time="

    #@3d3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d6
    .line 325
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    #@3d8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3db
    move-result-wide v8

    #@3dc
    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3df
    .line 327
    :cond_13
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3e1
    const-wide/16 v8, 0x0

    #@3e3
    cmp-long v6, v6, v8

    #@3e5
    if-eqz v6, :cond_14

    #@3e7
    .line 328
    const-string/jumbo v6, " fgInteractionTime="

    #@3ea
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ed
    .line 329
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    #@3ef
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3f2
    move-result-wide v8

    #@3f3
    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3f6
    .line 331
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3f9
    .line 333
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@3fb
    if-nez v6, :cond_16

    #@3fd
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@3ff
    if-eqz v6, :cond_17

    #@401
    .line 334
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@404
    const-string/jumbo v6, "persistent="

    #@407
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@40c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@40f
    .line 335
    const-string/jumbo v6, " removed="

    #@412
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@415
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@417
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@41a
    .line 337
    :cond_17
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@41c
    if-nez v6, :cond_18

    #@41e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@420
    if-nez v6, :cond_18

    #@422
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@424
    if-eqz v6, :cond_19

    #@426
    .line 338
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@429
    const-string/jumbo v6, "hasClientActivities="

    #@42c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    #@431
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@434
    .line 339
    const-string/jumbo v6, " foregroundActivities="

    #@437
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    #@43c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@43f
    .line 340
    const-string/jumbo v6, " (rep="

    #@442
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@445
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    #@447
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@44a
    const-string/jumbo v6, ")"

    #@44d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@450
    .line 342
    :cond_19
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    #@452
    const-wide/16 v8, 0x0

    #@454
    cmp-long v6, v6, v8

    #@456
    if-lez v6, :cond_1a

    #@458
    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45b
    const-string/jumbo v6, "lastProviderTime="

    #@45e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@461
    .line 344
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    #@463
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@466
    .line 345
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@469
    .line 347
    :cond_1a
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@46b
    if-eqz v6, :cond_1b

    #@46d
    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@470
    const-string/jumbo v6, "hasStartedServices="

    #@473
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@476
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@478
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@47b
    .line 350
    :cond_1b
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@47d
    const/16 v7, 0xa

    #@47f
    if-lt v6, v7, :cond_1c

    #@481
    .line 352
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@483
    monitor-enter v7

    #@484
    .line 353
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@486
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@488
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@48a
    .line 354
    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@48c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@48f
    move-result-wide v10

    #@490
    .line 353
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@493
    move-result-wide v4

    #@494
    .local v4, "wtime":J
    monitor-exit v7

    #@495
    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@498
    const-string/jumbo v6, "lastWakeTime="

    #@49b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49e
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@4a0
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@4a3
    .line 357
    const-string/jumbo v6, " timeUsed="

    #@4a6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a9
    .line 358
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    #@4ab
    sub-long v6, v4, v6

    #@4ad
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4b0
    const-string/jumbo v6, ""

    #@4b3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b6
    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b9
    const-string/jumbo v6, "lastCpuTime="

    #@4bc
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bf
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@4c1
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@4c4
    .line 360
    const-string/jumbo v6, " timeUsed="

    #@4c7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ca
    .line 361
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    #@4cc
    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    #@4ce
    sub-long/2addr v6, v8

    #@4cf
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4d2
    const-string/jumbo v6, ""

    #@4d5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d8
    .line 363
    .end local v4    # "wtime":J
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4db
    const-string/jumbo v6, "lastRequestedGc="

    #@4de
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e1
    .line 364
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    #@4e3
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4e6
    .line 365
    const-string/jumbo v6, " lastLowMemory="

    #@4e9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ec
    .line 366
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    #@4ee
    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4f1
    .line 367
    const-string/jumbo v6, " reportLowMemory="

    #@4f4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f7
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    #@4f9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@4fc
    .line 368
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@4fe
    if-nez v6, :cond_1d

    #@500
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@502
    if-nez v6, :cond_1d

    #@504
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@506
    if-eqz v6, :cond_1e

    #@508
    .line 369
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50b
    const-string/jumbo v6, "killed="

    #@50e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@511
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@513
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@516
    .line 370
    const-string/jumbo v6, " killedByAm="

    #@519
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@51e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@521
    .line 371
    const-string/jumbo v6, " waitingToKill="

    #@524
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@527
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@529
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52c
    .line 373
    :cond_1e
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@52e
    if-nez v6, :cond_1f

    #@530
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@532
    if-nez v6, :cond_1f

    #@534
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@536
    if-eqz v6, :cond_24

    #@538
    .line 375
    :cond_1f
    :goto_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53b
    const-string/jumbo v6, "debugging="

    #@53e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@541
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    #@543
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@546
    .line 376
    const-string/jumbo v6, " crashing="

    #@549
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@54e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@551
    .line 377
    const-string/jumbo v6, " "

    #@554
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@557
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@559
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@55c
    .line 378
    const-string/jumbo v6, " notResponding="

    #@55f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@562
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@564
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@567
    .line 379
    const-string/jumbo v6, " "

    #@56a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56d
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@56f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@572
    .line 380
    const-string/jumbo v6, " bad="

    #@575
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@578
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@57a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@57d
    .line 383
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@57f
    if-eqz v6, :cond_20

    #@581
    .line 384
    const-string/jumbo v6, " errorReportReceiver="

    #@584
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@587
    .line 385
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@589
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@58c
    move-result-object v6

    #@58d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@590
    .line 387
    :cond_20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@593
    .line 389
    :cond_21
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@595
    if-eqz v6, :cond_22

    #@597
    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59a
    const-string/jumbo v6, "whitelistManager="

    #@59d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a0
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    #@5a2
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@5a5
    .line 392
    :cond_22
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5a7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5aa
    move-result v6

    #@5ab
    if-lez v6, :cond_25

    #@5ad
    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b0
    const-string/jumbo v6, "Activities:"

    #@5b3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b6
    .line 394
    const/4 v1, 0x0

    #@5b7
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5b9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5bc
    move-result v6

    #@5bd
    if-ge v1, v6, :cond_25

    #@5bf
    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c2
    const-string/jumbo v6, "  - "

    #@5c5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5ca
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5cd
    move-result-object v6

    #@5ce
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5d1
    .line 394
    add-int/lit8 v1, v1, 0x1

    #@5d3
    goto :goto_5

    #@5d4
    .line 252
    :cond_23
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    #@5d6
    if-eqz v6, :cond_b

    #@5d8
    goto/16 :goto_3

    #@5da
    .line 352
    :catchall_0
    move-exception v6

    #@5db
    monitor-exit v7

    #@5dc
    throw v6

    #@5dd
    .line 373
    :cond_24
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@5df
    if-nez v6, :cond_1f

    #@5e1
    .line 374
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@5e3
    if-nez v6, :cond_1f

    #@5e5
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@5e7
    .line 373
    if-eqz v6, :cond_21

    #@5e9
    goto/16 :goto_4

    #@5eb
    .line 398
    :cond_25
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5ed
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@5f0
    move-result v6

    #@5f1
    if-lez v6, :cond_26

    #@5f3
    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f6
    const-string/jumbo v6, "Services:"

    #@5f9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5fc
    .line 400
    const/4 v1, 0x0

    #@5fd
    :goto_6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@5ff
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@602
    move-result v6

    #@603
    if-ge v1, v6, :cond_26

    #@605
    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@608
    const-string/jumbo v6, "  - "

    #@60b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@610
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@613
    move-result-object v6

    #@614
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@617
    .line 400
    add-int/lit8 v1, v1, 0x1

    #@619
    goto :goto_6

    #@61a
    .line 404
    :cond_26
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@61c
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@61f
    move-result v6

    #@620
    if-lez v6, :cond_27

    #@622
    .line 405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@625
    const-string/jumbo v6, "Executing Services (fg="

    #@628
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62b
    .line 406
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    #@62d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@630
    const-string/jumbo v6, ")"

    #@633
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@636
    .line 407
    const/4 v1, 0x0

    #@637
    :goto_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@639
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@63c
    move-result v6

    #@63d
    if-ge v1, v6, :cond_27

    #@63f
    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@642
    const-string/jumbo v6, "  - "

    #@645
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@648
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    #@64a
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@64d
    move-result-object v6

    #@64e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@651
    .line 407
    add-int/lit8 v1, v1, 0x1

    #@653
    goto :goto_7

    #@654
    .line 411
    :cond_27
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@656
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@659
    move-result v6

    #@65a
    if-lez v6, :cond_28

    #@65c
    .line 412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65f
    const-string/jumbo v6, "Connections:"

    #@662
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@665
    .line 413
    const/4 v1, 0x0

    #@666
    :goto_8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@668
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@66b
    move-result v6

    #@66c
    if-ge v1, v6, :cond_28

    #@66e
    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@671
    const-string/jumbo v6, "  - "

    #@674
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@677
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@679
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@67c
    move-result-object v6

    #@67d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@680
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@682
    goto :goto_8

    #@683
    .line 417
    :cond_28
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@685
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@688
    move-result v6

    #@689
    if-lez v6, :cond_29

    #@68b
    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68e
    const-string/jumbo v6, "Published Providers:"

    #@691
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@694
    .line 419
    const/4 v1, 0x0

    #@695
    :goto_9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@697
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@69a
    move-result v6

    #@69b
    if-ge v1, v6, :cond_29

    #@69d
    .line 420
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a0
    const-string/jumbo v6, "  - "

    #@6a3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@6a8
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@6ab
    move-result-object v6

    #@6ac
    check-cast v6, Ljava/lang/String;

    #@6ae
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b1
    .line 421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b4
    const-string/jumbo v6, "    -> "

    #@6b7
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6ba
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    #@6bc
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6bf
    move-result-object v6

    #@6c0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6c3
    .line 419
    add-int/lit8 v1, v1, 0x1

    #@6c5
    goto :goto_9

    #@6c6
    .line 424
    :cond_29
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6c8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6cb
    move-result v6

    #@6cc
    if-lez v6, :cond_2a

    #@6ce
    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d1
    const-string/jumbo v6, "Connected Providers:"

    #@6d4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d7
    .line 426
    const/4 v1, 0x0

    #@6d8
    :goto_a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6da
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6dd
    move-result v6

    #@6de
    if-ge v1, v6, :cond_2a

    #@6e0
    .line 427
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e3
    const-string/jumbo v6, "  - "

    #@6e6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    #@6eb
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6ee
    move-result-object v6

    #@6ef
    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    #@6f1
    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    #@6f4
    move-result-object v6

    #@6f5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f8
    .line 426
    add-int/lit8 v1, v1, 0x1

    #@6fa
    goto :goto_a

    #@6fb
    .line 430
    :cond_2a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@6fd
    if-eqz v6, :cond_2b

    #@6ff
    .line 431
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@702
    const-string/jumbo v6, "curReceiver="

    #@705
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@708
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@70a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@70d
    .line 433
    :cond_2b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@70f
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@712
    move-result v6

    #@713
    if-lez v6, :cond_2c

    #@715
    .line 434
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@718
    const-string/jumbo v6, "Receivers:"

    #@71b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71e
    .line 435
    const/4 v1, 0x0

    #@71f
    :goto_b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@721
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@724
    move-result v6

    #@725
    if-ge v1, v6, :cond_2c

    #@727
    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72a
    const-string/jumbo v6, "  - "

    #@72d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@730
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    #@732
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@735
    move-result-object v6

    #@736
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@739
    .line 435
    add-int/lit8 v1, v1, 0x1

    #@73b
    goto :goto_b

    #@73c
    .line 439
    :cond_2c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    #@73e
    if-eqz v6, :cond_2d

    #@740
    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@743
    const-string/jumbo v6, "hasTopUi="

    #@746
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@749
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    #@74b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@74e
    .line 207
    :cond_2d
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 722
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@2
    if-le v0, p1, :cond_0

    #@4
    .line 723
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@6
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@8
    .line 721
    :cond_0
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 762
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    .line 763
    .local v2, "size":I
    if-nez v2, :cond_0

    #@8
    .line 764
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 766
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    #@c
    .line 767
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
    .line 768
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
    .line 767
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 770
    :cond_1
    return-object v1
.end method

.method public getSetAdjWithServices()I
    .locals 2

    #@0
    .prologue
    .line 713
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@2
    const/16 v1, 0x384

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 714
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 715
    const/16 v0, 0x320

    #@c
    return v0

    #@d
    .line 718
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    #@f
    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    #@0
    .prologue
    .line 519
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 520
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 521
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 522
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 523
    const/4 v3, 0x1

    #@18
    return v3

    #@19
    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 526
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
    .line 601
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@5
    if-nez v0, :cond_2

    #@7
    .line 602
    const-string/jumbo v0, "kill"

    #@a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 603
    if-eqz p2, :cond_0

    #@f
    .line 604
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
    .line 606
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
    .line 607
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@70
    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    #@73
    .line 608
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@75
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@77
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    #@7a
    .line 609
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@7c
    if-nez v0, :cond_1

    #@7e
    .line 610
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    #@80
    .line 611
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@82
    .line 613
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@85
    .line 600
    :cond_2
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2
    if-nez v2, :cond_3

    #@4
    .line 470
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@6
    .line 471
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    #@8
    .line 473
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
    .line 472
    const/4 v2, -0x1

    #@13
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@16
    .line 474
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@19
    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1d
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1f
    .line 477
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@21
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@23
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@25
    .line 476
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@2b
    .line 478
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@30
    .line 479
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
    .line 480
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@41
    .line 481
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@43
    if-eqz v2, :cond_1

    #@45
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@47
    if-eq v2, v1, :cond_1

    #@49
    .line 482
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@4e
    .line 484
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
    .line 485
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@5c
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@5e
    .line 484
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@61
    move-result-object v2

    #@62
    iput-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@64
    .line 486
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@66
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@68
    if-eq v2, v3, :cond_2

    #@6a
    .line 487
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@6c
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@6f
    .line 479
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@71
    goto :goto_0

    #@72
    .line 491
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v7    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@74
    .line 468
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 665
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@7
    if-eqz v1, :cond_5

    #@9
    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 667
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 668
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@17
    instance-of v1, v1, Landroid/content/ComponentName;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 669
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
    .line 675
    :goto_0
    const-string/jumbo v1, "<="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 676
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@2e
    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 677
    const-string/jumbo v1, "Proc{"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 678
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
    .line 679
    const-string/jumbo v1, "}"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 685
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 670
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 671
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
    .line 673
    :cond_2
    const-string/jumbo v1, "{null}"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_0

    #@63
    .line 680
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    #@65
    if-eqz v1, :cond_4

    #@67
    .line 681
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
    .line 683
    :cond_4
    const-string/jumbo v1, "{null}"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    goto :goto_1

    #@78
    .line 687
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
    .line 495
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3
    .line 496
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@5
    .line 497
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_2

    #@7
    .line 498
    if-eqz v1, :cond_0

    #@9
    .line 500
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
    .line 499
    const/4 v2, -0x1

    #@14
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@17
    .line 501
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@1a
    .line 503
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@1c
    .line 504
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
    .line 505
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@2d
    .line 506
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@2f
    if-eqz v2, :cond_1

    #@31
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@33
    if-eq v2, v1, :cond_1

    #@35
    .line 507
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@3a
    .line 509
    :cond_1
    iput-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@3c
    .line 504
    add-int/lit8 v7, v7, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 494
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
    .line 556
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 562
    if-gez p1, :cond_1

    #@6
    .line 574
    :cond_0
    :goto_0
    return p1

    #@7
    .line 564
    :cond_1
    const/16 v0, 0x64

    #@9
    if-ge p1, v0, :cond_2

    #@b
    .line 565
    const/16 p1, 0x64

    #@d
    goto :goto_0

    #@e
    .line 566
    :cond_2
    const/16 v0, 0xc8

    #@10
    if-ge p1, v0, :cond_3

    #@12
    .line 567
    const/16 p1, 0xc8

    #@14
    goto :goto_0

    #@15
    .line 568
    :cond_3
    const/16 v0, 0x384

    #@17
    if-ge p1, v0, :cond_4

    #@19
    .line 569
    const/16 p1, 0x384

    #@1b
    goto :goto_0

    #@1c
    .line 570
    :cond_4
    const/16 v0, 0x38a

    #@1e
    if-ge p1, v0, :cond_0

    #@20
    .line 571
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
    .line 731
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v0

    #@7
    .line 732
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@9
    if-eqz v1, :cond_3

    #@b
    .line 733
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v4

    #@f
    .line 734
    .local v4, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@11
    .line 735
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    #@14
    move-result v3

    #@15
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@17
    .line 734
    const/4 v2, -0x1

    #@18
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    #@1b
    .line 736
    if-eq v0, v10, :cond_2

    #@1d
    .line 737
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    #@20
    .line 738
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@28
    .line 739
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
    .line 740
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    #@37
    .line 737
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 744
    .end local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@3f
    .line 746
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
    .line 745
    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@4e
    move-result-object v9

    #@4f
    .line 747
    .local v9, "ps":Lcom/android/internal/app/procstats/ProcessState;
    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@51
    .line 748
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@53
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@55
    .line 747
    invoke-direct {v7, v1}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(I)V

    #@58
    .line 749
    .restart local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@5a
    .line 750
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@5e
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 751
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    #@65
    if-eq v9, v1, :cond_2

    #@67
    .line 752
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    #@6a
    .line 730
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    :goto_1
    return-void

    #@6b
    .line 755
    :cond_3
    if-eq v0, v10, :cond_2

    #@6d
    .line 756
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@6f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@72
    .line 757
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
    .line 580
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 581
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 582
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@a
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@d
    move-result v4

    #@e
    if-ne v1, v4, :cond_0

    #@10
    .line 583
    sget-object v1, Lcom/android/server/am/ProcessRecord;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v4, "scheduleCrash: trying to crash system process!"

    #@15
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 584
    return-void

    #@19
    .line 586
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 588
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1f
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 577
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    return-void

    #@26
    .line 589
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@27
    .line 592
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
    .line 594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    goto :goto_0

    #@4a
    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4b
    .line 594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 593
    throw v1
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 462
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@3
    .line 463
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    #@5
    .line 464
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@7
    .line 465
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@9
    .line 461
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    #@0
    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 531
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@8
    .line 532
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 533
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
    .line 529
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 619
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 621
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 622
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@11
    .line 623
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
    .line 627
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7
    .line 628
    const/16 v1, 0x3a

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 629
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 630
    const/16 v1, 0x2f

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 631
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a
    if-ge v1, v2, :cond_1

    #@1c
    .line 632
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 626
    :cond_0
    :goto_0
    return-void

    #@22
    .line 634
    :cond_1
    const/16 v1, 0x75

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 635
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 636
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@30
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@33
    move-result v0

    #@34
    .line 637
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    #@36
    .line 638
    const/16 v1, 0x61

    #@38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 639
    add-int/lit16 v1, v0, -0x2710

    #@3d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 644
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@42
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@44
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@46
    if-eq v1, v2, :cond_0

    #@48
    .line 645
    const/16 v1, 0x69

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 646
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
    .line 641
    :cond_2
    const/16 v1, 0x73

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 653
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 655
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 656
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 657
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
    .line 658
    const/16 v1, 0x20

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 659
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    #@27
    .line 660
    const/16 v1, 0x7d

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 661
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
    .line 538
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 539
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
    .line 541
    :cond_0
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@17
    .line 537
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 545
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@3
    .line 546
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
    .line 547
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@15
    .line 548
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@17
    and-int/lit8 v2, v2, 0x8

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 549
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    #@1e
    .line 544
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    #@1f
    .line 546
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0
.end method
