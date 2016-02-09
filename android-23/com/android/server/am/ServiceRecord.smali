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

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


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

.field restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortName:Ljava/lang/String;

.field startRequested:Z

.field startingBgTimeout:J

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I

.field tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

.field final userId:I


# direct methods
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
    .line 307
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
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@18
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@1f
    .line 311
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@21
    .line 312
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@23
    .line 313
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@25
    .line 314
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@2b
    .line 315
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@2d
    .line 316
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2f
    .line 317
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    .line 318
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@39
    .line 319
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@3b
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    #@3d
    .line 320
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@3f
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@41
    .line 321
    iget-boolean v0, p5, Landroid/content/pm/ServiceInfo;->exported:Z

    #@43
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    #@45
    .line 322
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    #@47
    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4a
    move-result-wide v0

    #@4b
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@4d
    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@50
    move-result-wide v0

    #@51
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@53
    .line 325
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
    .line 326
    iput-boolean p6, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@5f
    .line 310
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 4

    #@0
    .prologue
    .line 529
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 532
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@6
    .line 533
    .local v1, "localPackageName":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@8
    .line 534
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
    .line 528
    .end local v0    # "localForegroundId":I
    .end local v1    # "localPackageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    #@0
    .prologue
    .line 578
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
    .line 579
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
    .line 578
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 577
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v4, "intent={"

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 208
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
    .line 209
    const/16 v4, 0x7d

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(C)V

    #@27
    .line 210
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
    .line 211
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
    .line 212
    move-object/from16 v0, p0

    #@51
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    #@53
    if-eqz v4, :cond_0

    #@55
    .line 213
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
    .line 215
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6c
    move-result-wide v8

    #@6d
    .line 216
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@70
    move-result-wide v20

    #@71
    .line 217
    .local v20, "nowReal":J
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@75
    if-eqz v4, :cond_2

    #@77
    .line 218
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
    .line 219
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
    .line 220
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
    .line 222
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
    .line 224
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
    .line 225
    move-object/from16 v0, p0

    #@e1
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    #@e3
    if-eqz v4, :cond_3

    #@e5
    .line 226
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
    .line 228
    :cond_3
    move-object/from16 v0, p0

    #@fb
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@fd
    if-eqz v4, :cond_4

    #@ff
    .line 229
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    const-string/jumbo v4, "delayed="

    #@105
    move-object/from16 v0, p1

    #@107
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@113
    .line 231
    :cond_4
    move-object/from16 v0, p0

    #@115
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@117
    if-nez v4, :cond_5

    #@119
    move-object/from16 v0, p0

    #@11b
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@11d
    if-eqz v4, :cond_6

    #@11f
    .line 232
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    const-string/jumbo v4, "isForeground="

    #@125
    move-object/from16 v0, p1

    #@127
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@12e
    move-object/from16 v0, p1

    #@130
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@133
    .line 233
    const-string/jumbo v4, " foregroundId="

    #@136
    move-object/from16 v0, p1

    #@138
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@13f
    move-object/from16 v0, p1

    #@141
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@144
    .line 234
    const-string/jumbo v4, " foregroundNoti="

    #@147
    move-object/from16 v0, p1

    #@149
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@155
    .line 236
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    const-string/jumbo v4, "createTime="

    #@15b
    move-object/from16 v0, p1

    #@15d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    .line 237
    move-object/from16 v0, p0

    #@162
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@164
    move-wide/from16 v0, v20

    #@166
    move-object/from16 v2, p1

    #@168
    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@16b
    .line 238
    const-string/jumbo v4, " startingBgTimeout="

    #@16e
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    .line 239
    move-object/from16 v0, p0

    #@175
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@177
    move-object/from16 v0, p1

    #@179
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@17c
    .line 240
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@17f
    .line 241
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v4, "lastActivity="

    #@185
    move-object/from16 v0, p1

    #@187
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    .line 242
    move-object/from16 v0, p0

    #@18c
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@193
    .line 243
    const-string/jumbo v4, " restartTime="

    #@196
    move-object/from16 v0, p1

    #@198
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19b
    .line 244
    move-object/from16 v0, p0

    #@19d
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@19f
    move-object/from16 v0, p1

    #@1a1
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1a4
    .line 245
    const-string/jumbo v4, " createdFromFg="

    #@1a7
    move-object/from16 v0, p1

    #@1a9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@1b5
    .line 246
    move-object/from16 v0, p0

    #@1b7
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@1b9
    if-nez v4, :cond_7

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@1bf
    if-nez v4, :cond_7

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@1c5
    if-eqz v4, :cond_8

    #@1c7
    .line 247
    :cond_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    const-string/jumbo v4, "startRequested="

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@1d6
    move-object/from16 v0, p1

    #@1d8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@1db
    .line 248
    const-string/jumbo v4, " delayedStop="

    #@1de
    move-object/from16 v0, p1

    #@1e0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@1e7
    move-object/from16 v0, p1

    #@1e9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@1ec
    .line 249
    const-string/jumbo v4, " stopIfKilled="

    #@1ef
    move-object/from16 v0, p1

    #@1f1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    #@1f8
    move-object/from16 v0, p1

    #@1fa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@1fd
    .line 250
    const-string/jumbo v4, " callStart="

    #@200
    move-object/from16 v0, p1

    #@202
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@205
    move-object/from16 v0, p0

    #@207
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    #@209
    move-object/from16 v0, p1

    #@20b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@20e
    .line 251
    const-string/jumbo v4, " lastStartId="

    #@211
    move-object/from16 v0, p1

    #@213
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@216
    move-object/from16 v0, p0

    #@218
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@21a
    move-object/from16 v0, p1

    #@21c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@21f
    .line 253
    :cond_8
    move-object/from16 v0, p0

    #@221
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@223
    if-eqz v4, :cond_9

    #@225
    .line 254
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    const-string/jumbo v4, "executeNesting="

    #@22b
    move-object/from16 v0, p1

    #@22d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@230
    move-object/from16 v0, p0

    #@232
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    #@234
    move-object/from16 v0, p1

    #@236
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@239
    .line 255
    const-string/jumbo v4, " executeFg="

    #@23c
    move-object/from16 v0, p1

    #@23e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@241
    move-object/from16 v0, p0

    #@243
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    #@245
    move-object/from16 v0, p1

    #@247
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@24a
    .line 256
    const-string/jumbo v4, " executingStart="

    #@24d
    move-object/from16 v0, p1

    #@24f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@252
    .line 257
    move-object/from16 v0, p0

    #@254
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    #@256
    move-object/from16 v0, p1

    #@258
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@25b
    .line 258
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@25e
    .line 260
    :cond_9
    move-object/from16 v0, p0

    #@260
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@262
    if-nez v4, :cond_a

    #@264
    move-object/from16 v0, p0

    #@266
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@268
    const-wide/16 v6, 0x0

    #@26a
    cmp-long v4, v4, v6

    #@26c
    if-eqz v4, :cond_b

    #@26e
    .line 261
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@271
    const-string/jumbo v4, "destroying="

    #@274
    move-object/from16 v0, p1

    #@276
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@279
    move-object/from16 v0, p0

    #@27b
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    #@27d
    move-object/from16 v0, p1

    #@27f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@282
    .line 262
    const-string/jumbo v4, " destroyTime="

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    .line 263
    move-object/from16 v0, p0

    #@28c
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    #@28e
    move-object/from16 v0, p1

    #@290
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@293
    .line 264
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@296
    .line 266
    :cond_b
    move-object/from16 v0, p0

    #@298
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@29a
    if-nez v4, :cond_c

    #@29c
    move-object/from16 v0, p0

    #@29e
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@2a0
    if-eqz v4, :cond_11

    #@2a2
    .line 268
    :cond_c
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a5
    const-string/jumbo v4, "restartCount="

    #@2a8
    move-object/from16 v0, p1

    #@2aa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@2b1
    move-object/from16 v0, p1

    #@2b3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@2b6
    .line 269
    const-string/jumbo v4, " restartDelay="

    #@2b9
    move-object/from16 v0, p1

    #@2bb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2be
    .line 270
    move-object/from16 v0, p0

    #@2c0
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@2c2
    move-object/from16 v0, p1

    #@2c4
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2c7
    .line 271
    const-string/jumbo v4, " nextRestartTime="

    #@2ca
    move-object/from16 v0, p1

    #@2cc
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cf
    .line 272
    move-object/from16 v0, p0

    #@2d1
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@2d3
    move-object/from16 v0, p1

    #@2d5
    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2d8
    .line 273
    const-string/jumbo v4, " crashCount="

    #@2db
    move-object/from16 v0, p1

    #@2dd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e0
    move-object/from16 v0, p0

    #@2e2
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@2e4
    move-object/from16 v0, p1

    #@2e6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@2e9
    .line 275
    :cond_d
    move-object/from16 v0, p0

    #@2eb
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@2ed
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2f0
    move-result v4

    #@2f1
    if-lez v4, :cond_e

    #@2f3
    .line 276
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f6
    const-string/jumbo v4, "Delivered Starts:"

    #@2f9
    move-object/from16 v0, p1

    #@2fb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fe
    .line 277
    move-object/from16 v0, p0

    #@300
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@302
    move-object/from16 v4, p0

    #@304
    move-object/from16 v5, p1

    #@306
    move-object/from16 v6, p2

    #@308
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    #@30b
    .line 279
    :cond_e
    move-object/from16 v0, p0

    #@30d
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@30f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@312
    move-result v4

    #@313
    if-lez v4, :cond_f

    #@315
    .line 280
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@318
    const-string/jumbo v4, "Pending Starts:"

    #@31b
    move-object/from16 v0, p1

    #@31d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@320
    .line 281
    move-object/from16 v0, p0

    #@322
    iget-object v13, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@324
    const-wide/16 v14, 0x0

    #@326
    move-object/from16 v10, p0

    #@328
    move-object/from16 v11, p1

    #@32a
    move-object/from16 v12, p2

    #@32c
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    #@32f
    .line 283
    :cond_f
    move-object/from16 v0, p0

    #@331
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@333
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@336
    move-result v4

    #@337
    if-lez v4, :cond_12

    #@339
    .line 284
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33c
    const-string/jumbo v4, "Bindings:"

    #@33f
    move-object/from16 v0, p1

    #@341
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@344
    .line 285
    const/16 v19, 0x0

    #@346
    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@348
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@34a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@34d
    move-result v4

    #@34e
    move/from16 v0, v19

    #@350
    if-ge v0, v4, :cond_12

    #@352
    .line 286
    move-object/from16 v0, p0

    #@354
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@356
    move/from16 v0, v19

    #@358
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@35b
    move-result-object v16

    #@35c
    check-cast v16, Lcom/android/server/am/IntentBindRecord;

    #@35e
    .line 287
    .local v16, "b":Lcom/android/server/am/IntentBindRecord;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@361
    const-string/jumbo v4, "* IntentBindRecord{"

    #@364
    move-object/from16 v0, p1

    #@366
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@369
    .line 288
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@36c
    move-result v4

    #@36d
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@370
    move-result-object v4

    #@371
    move-object/from16 v0, p1

    #@373
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@376
    .line 289
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    #@379
    move-result v4

    #@37a
    and-int/lit8 v4, v4, 0x1

    #@37c
    if-eqz v4, :cond_10

    #@37e
    .line 290
    const-string/jumbo v4, " CREATE"

    #@381
    move-object/from16 v0, p1

    #@383
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@386
    .line 292
    :cond_10
    const-string/jumbo v4, "}:"

    #@389
    move-object/from16 v0, p1

    #@38b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38e
    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    #@390
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@393
    move-object/from16 v0, p2

    #@395
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v4

    #@399
    const-string/jumbo v5, "  "

    #@39c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v4

    #@3a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a3
    move-result-object v4

    #@3a4
    move-object/from16 v0, v16

    #@3a6
    move-object/from16 v1, p1

    #@3a8
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3ab
    .line 285
    add-int/lit8 v19, v19, 0x1

    #@3ad
    goto :goto_1

    #@3ae
    .line 267
    .end local v16    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v19    # "i":I
    :cond_11
    move-object/from16 v0, p0

    #@3b0
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@3b2
    const-wide/16 v6, 0x0

    #@3b4
    cmp-long v4, v4, v6

    #@3b6
    if-nez v4, :cond_c

    #@3b8
    move-object/from16 v0, p0

    #@3ba
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    #@3bc
    const-wide/16 v6, 0x0

    #@3be
    cmp-long v4, v4, v6

    #@3c0
    if-eqz v4, :cond_d

    #@3c2
    goto/16 :goto_0

    #@3c4
    .line 296
    :cond_12
    move-object/from16 v0, p0

    #@3c6
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3c8
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3cb
    move-result v4

    #@3cc
    if-lez v4, :cond_14

    #@3ce
    .line 297
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d1
    const-string/jumbo v4, "All Connections:"

    #@3d4
    move-object/from16 v0, p1

    #@3d6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d9
    .line 298
    const/16 v18, 0x0

    #@3db
    .local v18, "conni":I
    :goto_2
    move-object/from16 v0, p0

    #@3dd
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3df
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3e2
    move-result v4

    #@3e3
    move/from16 v0, v18

    #@3e5
    if-ge v0, v4, :cond_14

    #@3e7
    .line 299
    move-object/from16 v0, p0

    #@3e9
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@3eb
    move/from16 v0, v18

    #@3ed
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3f0
    move-result-object v17

    #@3f1
    check-cast v17, Ljava/util/ArrayList;

    #@3f3
    .line 300
    .local v17, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v19, 0x0

    #@3f5
    .restart local v19    # "i":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@3f8
    move-result v4

    #@3f9
    move/from16 v0, v19

    #@3fb
    if-ge v0, v4, :cond_13

    #@3fd
    .line 301
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@400
    const-string/jumbo v4, "  "

    #@403
    move-object/from16 v0, p1

    #@405
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@408
    move-object/from16 v0, v17

    #@40a
    move/from16 v1, v19

    #@40c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40f
    move-result-object v4

    #@410
    move-object/from16 v0, p1

    #@412
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@415
    .line 300
    add-int/lit8 v19, v19, 0x1

    #@417
    goto :goto_3

    #@418
    .line 298
    :cond_13
    add-int/lit8 v18, v18, 0x1

    #@41a
    goto :goto_2

    #@41b
    .line 206
    .end local v17    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v18    # "conni":I
    .end local v19    # "i":I
    :cond_14
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
    .line 177
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 178
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@7
    .line 179
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    #@d
    .line 180
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    const-string/jumbo v3, "#"

    #@13
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 181
    const-string/jumbo v3, " id="

    #@1c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@21
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@24
    .line 182
    const-wide/16 v4, 0x0

    #@26
    cmp-long v3, p4, v4

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 183
    const-string/jumbo v3, " dur="

    #@2d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 184
    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    #@32
    invoke-static {v4, v5, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@35
    .line 186
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 187
    const-string/jumbo v3, " dc="

    #@3c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    #@41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@44
    .line 189
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 190
    const-string/jumbo v3, " dxc="

    #@4b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    #@50
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@53
    .line 192
    :cond_2
    const-string/jumbo v3, ""

    #@56
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    const-string/jumbo v3, "  intent="

    #@5f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 194
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
    .line 196
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@71
    if-eqz v3, :cond_3

    #@73
    .line 197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    const-string/jumbo v3, "  neededGrants="

    #@79
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 198
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@7e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 200
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@83
    if-eqz v3, :cond_4

    #@85
    .line 201
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@87
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@8a
    .line 178
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto/16 :goto_0

    #@8e
    .line 195
    :cond_5
    const-string/jumbo v3, "null"

    #@91
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    goto :goto_1

    #@95
    .line 176
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
    .line 401
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 402
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 403
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    #@11
    .line 404
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@13
    if-ne v3, p1, :cond_1

    #@15
    .line 405
    if-eqz p2, :cond_0

    #@17
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c
    .line 406
    :cond_0
    return-object v2

    #@1d
    .line 402
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 410
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
    .line 343
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 344
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    #@b
    .line 345
    iput-object v2, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@d
    .line 342
    :cond_0
    return-void
.end method

.method public getLastStartId()I
    .locals 1

    #@0
    .prologue
    .line 414
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@2
    return v0
.end method

.method public getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 6

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 331
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@6
    return-object v0

    #@7
    .line 333
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
    .line 334
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@15
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@17
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@19
    .line 335
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
    .line 336
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@27
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@29
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@2d
    .line 334
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@33
    .line 337
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@35
    invoke-virtual {v0, p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    #@38
    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@3a
    return-object v0
.end method

.method public hasAutoCreateConnections()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 383
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
    .line 384
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/util/ArrayList;

    #@13
    .line 385
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
    .line 386
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
    .line 387
    const/4 v3, 0x1

    #@27
    return v3

    #@28
    .line 385
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 383
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 391
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
    .line 418
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@7
    .line 419
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 420
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    #@d
    .line 422
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
    .line 350
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 351
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
    .line 352
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@12
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16
    .line 353
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
    .line 354
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@24
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@26
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@2a
    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@30
    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@32
    if-nez v0, :cond_1

    #@34
    .line 357
    return-void

    #@35
    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    #@37
    const/4 v1, 0x1

    #@38
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    #@3b
    .line 349
    return-void
.end method

.method public postNotification()V
    .locals 8

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4
    .line 427
    .local v4, "appUid":I
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@8
    .line 428
    .local v5, "appPid":I
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 431
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@12
    .line 432
    .local v3, "localPackageName":Ljava/lang/String;
    iget v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@14
    .line 433
    .local v6, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@16
    .line 434
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
    .line 425
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
    .line 395
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    #@5
    .line 396
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    #@7
    .line 397
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    #@9
    .line 394
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 365
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@2
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@5
    .line 366
    .local v1, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    #@d
    .line 367
    .local v2, "i":Lcom/android/server/am/IntentBindRecord;
    if-nez v2, :cond_0

    #@f
    .line 368
    new-instance v2, Lcom/android/server/am/IntentBindRecord;

    #@11
    .end local v2    # "i":Lcom/android/server/am/IntentBindRecord;
    invoke-direct {v2, p0, v1}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    #@14
    .line 369
    .restart local v2    # "i":Lcom/android/server/am/IntentBindRecord;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 371
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/am/AppBindRecord;

    #@21
    .line 372
    .local v0, "a":Lcom/android/server/am/AppBindRecord;
    if-eqz v0, :cond_1

    #@23
    .line 373
    return-object v0

    #@24
    .line 375
    :cond_1
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    #@26
    .end local v0    # "a":Lcom/android/server/am/AppBindRecord;
    invoke-direct {v0, p0, v2, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    #@29
    .line 376
    .restart local v0    # "a":Lcom/android/server/am/AppBindRecord;
    iget-object v3, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 377
    return-object v0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .locals 5

    #@0
    .prologue
    .line 553
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@2
    if-nez v3, :cond_0

    #@4
    .line 554
    return-void

    #@5
    .line 557
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    #@7
    .line 558
    .local v0, "localForegroundId":I
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@9
    .line 559
    .local v2, "localUserId":I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    #@b
    .line 563
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
    .line 552
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 586
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 588
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 589
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ServiceRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 590
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 591
    const-string/jumbo v2, " u"

    #@24
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 591
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    #@2a
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 592
    const/16 v2, 0x20

    #@30
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 592
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@36
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 592
    const/16 v2, 0x7d

    #@3c
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    #@45
    return-object v1
.end method
