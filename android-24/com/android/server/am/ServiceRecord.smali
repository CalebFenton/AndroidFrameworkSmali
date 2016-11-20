.class final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field static final MAX_DELIVERY_COUNT:I = 0x3

.field static final MAX_DONE_EXECUTING_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final ams:Lcom/android/server/am/ActivityManagerService;

.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final bindings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field callStart:Z

.field final connections:Landroid/util/ArrayMap;
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

.field crashCount:I

.field final createTime:J

.field createdFromFg:Z

.field delayed:Z

.field delayedStop:Z

.field final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field destroyTime:J

.field destroying:Z

.field executeFg:Z

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field foregroundId:I

.field foregroundNoti:Landroid/app/Notification;

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field isolatedProc:Lcom/android/server/am/ProcessRecord;

.field lastActivity:J

.field private lastStartId:I

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartTime:J

.field restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortName:Ljava/lang/String;

.field startRequested:Z

.field startingBgTimeout:J

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I

.field tracker:Lcom/android/internal/app/procstats/ServiceState;

.field final userId:I

.field whitelistManager:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/am/ServiceRecord;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ServiceRecord;->TAG:Ljava/lang/String;

    #@5
    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "servStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "intent"    # Landroid/content/Intent$FilterComparison;
    .param p5, "sInfo"    # Landroid/content/pm/ServiceInfo;
    .param p6, "callerIsFg"    # Z
    .param p7, "restarter"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 82
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@a
    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 85
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@11
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@18
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@1f
    .line 315
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@21
    .line 316
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@23
    .line 317
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@25
    .line 318
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@2b
    .line 319
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@2d
    .line 320
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2f
    .line 321
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    .line 322
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@39
    .line 323
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@3b
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@3d
    .line 324
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@3f
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@41
    .line 325
    iget-boolean v0, p5, Landroid/content/pm/ServiceInfo;->exported:Z

    #@43
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@45
    .line 326
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@47
    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4a
    move-result-wide v0

    #@4b
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@4d
    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@50
    move-result-wide v0

    #@51
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@53
    .line 329
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@55
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@57
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@5d
    .line 330
    iput-boolean p6, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@5f
    .line 314
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 4

    #@0
    .prologue
    .line 546
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 549
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@6
    .line 550
    .local v1, "localPackageName":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@8
    .line 551
    .local v0, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@c
    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    #@e
    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    #@11
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 545
    .end local v0    # "localForegroundId":I
    .end local v1    # "localPackageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    #@0
    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 596
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    #@12
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    #@15
    .line 595
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 594
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v4, "intent={"

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 209
    move-object/from16 v0, p0

    #@d
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@f
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@12
    move-result-object v4

    #@13
    const/4 v5, 0x0

    #@14
    const/4 v6, 0x1

    #@15
    const/4 v7, 0x0

    #@16
    const/4 v10, 0x1

    #@17
    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 210
    const/16 v4, 0x7d

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(C)V

    #@27
    .line 211
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    const-string/jumbo v4, "packageName="

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 212
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    const-string/jumbo v4, "processName="

    #@41
    move-object/from16 v0, p1

    #@43
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 213
    move-object/from16 v0, p0

    #@51
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@53
    if-eqz v4, :cond_0

    #@55
    .line 214
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58
    const-string/jumbo v4, "permission="

    #@5b
    move-object/from16 v0, p1

    #@5d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 216
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6c
    move-result-wide v8

    #@6d
    .line 217
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@70
    move-result-wide v20

    #@71
    .line 218
    .local v20, "nowReal":J
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@75
    if-eqz v4, :cond_2

    #@77
    .line 219
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v4, "baseDir="

    #@7d
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@86
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8d
    .line 220
    move-object/from16 v0, p0

    #@8f
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@91
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@97
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@99
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9c
    move-result v4

    #@9d
    if-nez v4, :cond_1

    #@9f
    .line 221
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    const-string/jumbo v4, "resDir="

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ae
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 223
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    const-string/jumbo v4, "dataDir="

    #@bb
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@c4
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 225
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    const-string/jumbo v4, "app="

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@da
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@df
    .line 226
    move-object/from16 v0, p0

    #@e1
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@e3
    if-eqz v4, :cond_3

    #@e5
    .line 227
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    const-string/jumbo v4, "isolatedProc="

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@f4
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f9
    .line 229
    :cond_3
    move-object/from16 v0, p0

    #@fb
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@fd
    if-eqz v4, :cond_4

    #@ff
    .line 230
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    const-string/jumbo v4, "whitelistManager="

    #@105
    move-object/from16 v0, p1

    #@107
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@113
    .line 232
    :cond_4
    move-object/from16 v0, p0

    #@115
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@117
    if-eqz v4, :cond_5

    #@119
    .line 233
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    const-string/jumbo v4, "delayed="

    #@11f
    move-object/from16 v0, p1

    #@121
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@124
    move-object/from16 v0, p0

    #@126
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@128
    move-object/from16 v0, p1

    #@12a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@12d
    .line 235
    :cond_5
    move-object/from16 v0, p0

    #@12f
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@131
    if-nez v4, :cond_6

    #@133
    move-object/from16 v0, p0

    #@135
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@137
    if-eqz v4, :cond_7

    #@139
    .line 236
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    const-string/jumbo v4, "isForeground="

    #@13f
    move-object/from16 v0, p1

    #@141
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    move-object/from16 v0, p0

    #@146
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@14d
    .line 237
    const-string/jumbo v4, " foregroundId="

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@155
    move-object/from16 v0, p0

    #@157
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@159
    move-object/from16 v0, p1

    #@15b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@15e
    .line 238
    const-string/jumbo v4, " foregroundNoti="

    #@161
    move-object/from16 v0, p1

    #@163
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@16a
    move-object/from16 v0, p1

    #@16c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@16f
    .line 240
    :cond_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@172
    const-string/jumbo v4, "createTime="

    #@175
    move-object/from16 v0, p1

    #@177
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 241
    move-object/from16 v0, p0

    #@17c
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@17e
    move-wide/from16 v0, v20

    #@180
    move-object/from16 v2, p1

    #@182
    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@185
    .line 242
    const-string/jumbo v4, " startingBgTimeout="

    #@188
    move-object/from16 v0, p1

    #@18a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 243
    move-object/from16 v0, p0

    #@18f
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@191
    move-object/from16 v0, p1

    #@193
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@196
    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@199
    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    const-string/jumbo v4, "lastActivity="

    #@19f
    move-object/from16 v0, p1

    #@1a1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a4
    .line 246
    move-object/from16 v0, p0

    #@1a6
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@1a8
    move-object/from16 v0, p1

    #@1aa
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1ad
    .line 247
    const-string/jumbo v4, " restartTime="

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b5
    .line 248
    move-object/from16 v0, p0

    #@1b7
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1be
    .line 249
    const-string/jumbo v4, " createdFromFg="

    #@1c1
    move-object/from16 v0, p1

    #@1c3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@1ca
    move-object/from16 v0, p1

    #@1cc
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@1cf
    .line 250
    move-object/from16 v0, p0

    #@1d1
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@1d3
    if-nez v4, :cond_8

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@1d9
    if-nez v4, :cond_8

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@1df
    if-eqz v4, :cond_9

    #@1e1
    .line 251
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e4
    const-string/jumbo v4, "startRequested="

    #@1e7
    move-object/from16 v0, p1

    #@1e9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@1f5
    .line 252
    const-string/jumbo v4, " delayedStop="

    #@1f8
    move-object/from16 v0, p1

    #@1fa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@201
    move-object/from16 v0, p1

    #@203
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@206
    .line 253
    const-string/jumbo v4, " stopIfKilled="

    #@209
    move-object/from16 v0, p1

    #@20b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@212
    move-object/from16 v0, p1

    #@214
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@217
    .line 254
    const-string/jumbo v4, " callStart="

    #@21a
    move-object/from16 v0, p1

    #@21c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21f
    move-object/from16 v0, p0

    #@221
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@223
    move-object/from16 v0, p1

    #@225
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@228
    .line 255
    const-string/jumbo v4, " lastStartId="

    #@22b
    move-object/from16 v0, p1

    #@22d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@230
    move-object/from16 v0, p0

    #@232
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@234
    move-object/from16 v0, p1

    #@236
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@239
    .line 257
    :cond_9
    move-object/from16 v0, p0

    #@23b
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@23d
    if-eqz v4, :cond_a

    #@23f
    .line 258
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@242
    const-string/jumbo v4, "executeNesting="

    #@245
    move-object/from16 v0, p1

    #@247
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24a
    move-object/from16 v0, p0

    #@24c
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@24e
    move-object/from16 v0, p1

    #@250
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@253
    .line 259
    const-string/jumbo v4, " executeFg="

    #@256
    move-object/from16 v0, p1

    #@258
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25b
    move-object/from16 v0, p0

    #@25d
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@25f
    move-object/from16 v0, p1

    #@261
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@264
    .line 260
    const-string/jumbo v4, " executingStart="

    #@267
    move-object/from16 v0, p1

    #@269
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26c
    .line 261
    move-object/from16 v0, p0

    #@26e
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@270
    move-object/from16 v0, p1

    #@272
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@275
    .line 262
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@278
    .line 264
    :cond_a
    move-object/from16 v0, p0

    #@27a
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@27c
    if-nez v4, :cond_b

    #@27e
    move-object/from16 v0, p0

    #@280
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@282
    const-wide/16 v6, 0x0

    #@284
    cmp-long v4, v4, v6

    #@286
    if-eqz v4, :cond_c

    #@288
    .line 265
    :cond_b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28b
    const-string/jumbo v4, "destroying="

    #@28e
    move-object/from16 v0, p1

    #@290
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@293
    move-object/from16 v0, p0

    #@295
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@297
    move-object/from16 v0, p1

    #@299
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@29c
    .line 266
    const-string/jumbo v4, " destroyTime="

    #@29f
    move-object/from16 v0, p1

    #@2a1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a4
    .line 267
    move-object/from16 v0, p0

    #@2a6
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@2a8
    move-object/from16 v0, p1

    #@2aa
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2ad
    .line 268
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2b0
    .line 270
    :cond_c
    move-object/from16 v0, p0

    #@2b2
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@2b4
    if-nez v4, :cond_d

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@2ba
    if-eqz v4, :cond_12

    #@2bc
    .line 272
    :cond_d
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bf
    const-string/jumbo v4, "restartCount="

    #@2c2
    move-object/from16 v0, p1

    #@2c4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@2cb
    move-object/from16 v0, p1

    #@2cd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@2d0
    .line 273
    const-string/jumbo v4, " restartDelay="

    #@2d3
    move-object/from16 v0, p1

    #@2d5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d8
    .line 274
    move-object/from16 v0, p0

    #@2da
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2dc
    move-object/from16 v0, p1

    #@2de
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2e1
    .line 275
    const-string/jumbo v4, " nextRestartTime="

    #@2e4
    move-object/from16 v0, p1

    #@2e6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e9
    .line 276
    move-object/from16 v0, p0

    #@2eb
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@2ed
    move-object/from16 v0, p1

    #@2ef
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2f2
    .line 277
    const-string/jumbo v4, " crashCount="

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@2fe
    move-object/from16 v0, p1

    #@300
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@303
    .line 279
    :cond_e
    move-object/from16 v0, p0

    #@305
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@307
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@30a
    move-result v4

    #@30b
    if-lez v4, :cond_f

    #@30d
    .line 280
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    const-string/jumbo v4, "Delivered Starts:"

    #@313
    move-object/from16 v0, p1

    #@315
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@318
    .line 281
    move-object/from16 v0, p0

    #@31a
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@31c
    move-object/from16 v4, p0

    #@31e
    move-object/from16 v5, p1

    #@320
    move-object/from16 v6, p2

    #@322
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    #@325
    .line 283
    :cond_f
    move-object/from16 v0, p0

    #@327
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@329
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@32c
    move-result v4

    #@32d
    if-lez v4, :cond_10

    #@32f
    .line 284
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@332
    const-string/jumbo v4, "Pending Starts:"

    #@335
    move-object/from16 v0, p1

    #@337
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33a
    .line 285
    move-object/from16 v0, p0

    #@33c
    iget-object v13, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@33e
    const-wide/16 v14, 0x0

    #@340
    move-object/from16 v10, p0

    #@342
    move-object/from16 v11, p1

    #@344
    move-object/from16 v12, p2

    #@346
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    #@349
    .line 287
    :cond_10
    move-object/from16 v0, p0

    #@34b
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@34d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@350
    move-result v4

    #@351
    if-lez v4, :cond_13

    #@353
    .line 288
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@356
    const-string/jumbo v4, "Bindings:"

    #@359
    move-object/from16 v0, p1

    #@35b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35e
    .line 289
    const/16 v19, 0x0

    #@360
    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@362
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@364
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@367
    move-result v4

    #@368
    move/from16 v0, v19

    #@36a
    if-ge v0, v4, :cond_13

    #@36c
    .line 290
    move-object/from16 v0, p0

    #@36e
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@370
    move/from16 v0, v19

    #@372
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@375
    move-result-object v16

    #@376
    check-cast v16, Lcom/android/server/am/IntentBindRecord;

    #@378
    .line 291
    .local v16, "b":Lcom/android/server/am/IntentBindRecord;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37b
    const-string/jumbo v4, "* IntentBindRecord{"

    #@37e
    move-object/from16 v0, p1

    #@380
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@383
    .line 292
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@386
    move-result v4

    #@387
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38a
    move-result-object v4

    #@38b
    move-object/from16 v0, p1

    #@38d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@390
    .line 293
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    #@393
    move-result v4

    #@394
    and-int/lit8 v4, v4, 0x1

    #@396
    if-eqz v4, :cond_11

    #@398
    .line 294
    const-string/jumbo v4, " CREATE"

    #@39b
    move-object/from16 v0, p1

    #@39d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@3a0
    .line 296
    :cond_11
    const-string/jumbo v4, "}:"

    #@3a3
    move-object/from16 v0, p1

    #@3a5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a8
    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    #@3aa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3ad
    move-object/from16 v0, p2

    #@3af
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v4

    #@3b3
    const-string/jumbo v5, "  "

    #@3b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v4

    #@3ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v4

    #@3be
    move-object/from16 v0, v16

    #@3c0
    move-object/from16 v1, p1

    #@3c2
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3c5
    .line 289
    add-int/lit8 v19, v19, 0x1

    #@3c7
    goto :goto_1

    #@3c8
    .line 271
    .end local v16    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v19    # "i":I
    :cond_12
    move-object/from16 v0, p0

    #@3ca
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@3cc
    const-wide/16 v6, 0x0

    #@3ce
    cmp-long v4, v4, v6

    #@3d0
    if-nez v4, :cond_d

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@3d6
    const-wide/16 v6, 0x0

    #@3d8
    cmp-long v4, v4, v6

    #@3da
    if-eqz v4, :cond_e

    #@3dc
    goto/16 :goto_0

    #@3de
    .line 300
    :cond_13
    move-object/from16 v0, p0

    #@3e0
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3e2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3e5
    move-result v4

    #@3e6
    if-lez v4, :cond_15

    #@3e8
    .line 301
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3eb
    const-string/jumbo v4, "All Connections:"

    #@3ee
    move-object/from16 v0, p1

    #@3f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f3
    .line 302
    const/16 v18, 0x0

    #@3f5
    .local v18, "conni":I
    :goto_2
    move-object/from16 v0, p0

    #@3f7
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3f9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3fc
    move-result v4

    #@3fd
    move/from16 v0, v18

    #@3ff
    if-ge v0, v4, :cond_15

    #@401
    .line 303
    move-object/from16 v0, p0

    #@403
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@405
    move/from16 v0, v18

    #@407
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@40a
    move-result-object v17

    #@40b
    check-cast v17, Ljava/util/ArrayList;

    #@40d
    .line 304
    .local v17, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v19, 0x0

    #@40f
    .restart local v19    # "i":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@412
    move-result v4

    #@413
    move/from16 v0, v19

    #@415
    if-ge v0, v4, :cond_14

    #@417
    .line 305
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41a
    const-string/jumbo v4, "  "

    #@41d
    move-object/from16 v0, p1

    #@41f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@422
    move-object/from16 v0, v17

    #@424
    move/from16 v1, v19

    #@426
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@429
    move-result-object v4

    #@42a
    move-object/from16 v0, p1

    #@42c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@42f
    .line 304
    add-int/lit8 v19, v19, 0x1

    #@431
    goto :goto_3

    #@432
    .line 302
    :cond_14
    add-int/lit8 v18, v18, 0x1

    #@434
    goto :goto_2

    #@435
    .line 207
    .end local v17    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v18    # "conni":I
    .end local v19    # "i":I
    :cond_15
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 178
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@7
    .line 180
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    #@d
    .line 181
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    const-string/jumbo v3, "#"

    #@13
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 182
    const-string/jumbo v3, " id="

    #@1c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@21
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@24
    .line 183
    const-wide/16 v4, 0x0

    #@26
    cmp-long v3, p4, v4

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 184
    const-string/jumbo v3, " dur="

    #@2d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 185
    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@32
    invoke-static {v4, v5, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@35
    .line 187
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 188
    const-string/jumbo v3, " dc="

    #@3c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@44
    .line 190
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 191
    const-string/jumbo v3, " dxc="

    #@4b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@50
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@53
    .line 193
    :cond_2
    const-string/jumbo v3, ""

    #@56
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    const-string/jumbo v3, "  intent="

    #@5f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 195
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@64
    if-eqz v3, :cond_5

    #@66
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@68
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 197
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@71
    if-eqz v3, :cond_3

    #@73
    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    const-string/jumbo v3, "  neededGrants="

    #@79
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 199
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@7e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 201
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@83
    if-eqz v3, :cond_4

    #@85
    .line 202
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@87
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@8a
    .line 179
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto/16 :goto_0

    #@8e
    .line 196
    :cond_5
    const-string/jumbo v3, "null"

    #@91
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    goto :goto_1

    #@95
    .line 177
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_6
    return-void
.end method

.method public findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4
    .param p1, "id"    # I
    .param p2, "remove"    # Z

    #@0
    .prologue
    .line 418
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 419
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 420
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    #@11
    .line 421
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@13
    if-ne v3, p1, :cond_1

    #@15
    .line 422
    if-eqz p2, :cond_0

    #@17
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c
    .line 423
    :cond_0
    return-object v2

    #@1d
    .line 419
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 427
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    const/4 v3, 0x0

    #@21
    return-object v3
.end method

.method public forceClearTracker()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 348
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@b
    .line 349
    iput-object v2, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@d
    .line 346
    :cond_0
    return-void
.end method

.method public getLastStartId()I
    .locals 1

    #@0
    .prologue
    .line 431
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@2
    return v0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .locals 6

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 335
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@6
    return-object v0

    #@7
    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@9
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@d
    and-int/lit8 v0, v0, 0x8

    #@f
    if-nez v0, :cond_1

    #@11
    .line 338
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@15
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@17
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@19
    .line 339
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1b
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1f
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@21
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@25
    .line 340
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@27
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@29
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@2d
    .line 338
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@33
    .line 341
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@35
    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    #@38
    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    #@3a
    return-object v0
.end method

.method public hasAutoCreateConnections()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 387
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 388
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/util/ArrayList;

    #@13
    .line 389
    .local v1, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    if-ge v2, v3, :cond_1

    #@1a
    .line 390
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    #@20
    iget v3, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@22
    and-int/lit8 v3, v3, 0x1

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 391
    const/4 v3, 0x1

    #@27
    return v3

    #@28
    .line 389
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 387
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 395
    .end local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method public makeNextStartId()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 435
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@7
    .line 436
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 437
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@d
    .line 439
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@f
    return v0
.end method

.method public makeRestarting(IJ)V
    .locals 6
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 355
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    and-int/lit8 v0, v0, 0x8

    #@c
    if-nez v0, :cond_0

    #@e
    .line 356
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@12
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16
    .line 357
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@18
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1c
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1e
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@22
    .line 358
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@24
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@26
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@2a
    .line 356
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@30
    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@32
    if-nez v0, :cond_1

    #@34
    .line 361
    return-void

    #@35
    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    #@37
    const/4 v1, 0x1

    #@38
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    #@3b
    .line 353
    return-void
.end method

.method public postNotification()V
    .locals 8

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4
    .line 444
    .local v4, "appUid":I
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@8
    .line 445
    .local v5, "appPid":I
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 448
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@12
    .line 449
    .local v3, "localPackageName":Ljava/lang/String;
    iget v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@14
    .line 450
    .local v6, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@16
    .line 451
    .local v2, "_foregroundNoti":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@1a
    new-instance v0, Lcom/android/server/am/ServiceRecord$1;

    #@1c
    move-object v1, p0

    #@1d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V

    #@20
    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@23
    .line 442
    .end local v2    # "_foregroundNoti":Landroid/app/Notification;
    .end local v3    # "localPackageName":Ljava/lang/String;
    .end local v6    # "localForegroundId":I
    :cond_0
    return-void
.end method

.method public resetRestartCounter()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 412
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@5
    .line 413
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@7
    .line 414
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@9
    .line 411
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 369
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@2
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@5
    .line 370
    .local v1, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    #@d
    .line 371
    .local v2, "i":Lcom/android/server/am/IntentBindRecord;
    if-nez v2, :cond_0

    #@f
    .line 372
    new-instance v2, Lcom/android/server/am/IntentBindRecord;

    #@11
    .end local v2    # "i":Lcom/android/server/am/IntentBindRecord;
    invoke-direct {v2, p0, v1}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    #@14
    .line 373
    .restart local v2    # "i":Lcom/android/server/am/IntentBindRecord;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 375
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/am/AppBindRecord;

    #@21
    .line 376
    .local v0, "a":Lcom/android/server/am/AppBindRecord;
    if-eqz v0, :cond_1

    #@23
    .line 377
    return-object v0

    #@24
    .line 379
    :cond_1
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    #@26
    .end local v0    # "a":Lcom/android/server/am/AppBindRecord;
    invoke-direct {v0, p0, v2, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    #@29
    .line 380
    .restart local v0    # "a":Lcom/android/server/am/AppBindRecord;
    iget-object v3, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 381
    return-object v0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .locals 5

    #@0
    .prologue
    .line 570
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@2
    if-nez v3, :cond_0

    #@4
    .line 571
    return-void

    #@5
    .line 574
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@7
    .line 575
    .local v0, "localForegroundId":I
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@9
    .line 576
    .local v2, "localUserId":I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@b
    .line 580
    .local v1, "localPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@d
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@f
    new-instance v4, Lcom/android/server/am/ServiceRecord$3;

    #@11
    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    #@14
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 569
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 603
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 606
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ServiceRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 607
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 608
    const-string/jumbo v2, " u"

    #@24
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 608
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@2a
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 609
    const/16 v2, 0x20

    #@30
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 609
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@36
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 609
    const/16 v2, 0x7d

    #@3c
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@45
    return-object v1
.end method

.method public updateWhitelistManager()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 399
    iput-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@3
    .line 400
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v0, v3, -0x1

    #@b
    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    #@d
    .line 401
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/ArrayList;

    #@15
    .line 402
    .local v1, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    if-ge v2, v3, :cond_1

    #@1c
    .line 403
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    #@22
    iget v3, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@24
    const/high16 v4, 0x1000000

    #@26
    and-int/2addr v3, v4

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 404
    const/4 v3, 0x1

    #@2a
    iput-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    #@2c
    .line 405
    return-void

    #@2d
    .line 402
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 400
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_0

    #@33
    .line 398
    .end local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
