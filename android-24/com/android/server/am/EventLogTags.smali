.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AM_ACTIVITY_FULLY_DRAWN_TIME:I = 0x755a

.field public static final AM_ACTIVITY_LAUNCH_TIME:I = 0x7539

.field public static final AM_ANR:I = 0x7538

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_ACTIVITY:I = 0x7535

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_CREATE_TASK:I = 0x7534

.field public static final AM_DESTROY_ACTIVITY:I = 0x7542

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FAILED_TO_PAUSE:I = 0x753c

.field public static final AM_FINISH_ACTIVITY:I = 0x7531

.field public static final AM_FOCUSED_ACTIVITY:I = 0x755b

.field public static final AM_FOCUSED_STACK:I = 0x755c

.field public static final AM_KILL:I = 0x7547

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_MEMINFO:I = 0x755e

.field public static final AM_MEM_FACTOR:I = 0x7562

.field public static final AM_NEW_INTENT:I = 0x7533

.field public static final AM_ON_PAUSED_CALLED:I = 0x7545

.field public static final AM_ON_RESUME_CALLED:I = 0x7546

.field public static final AM_ON_STOP_CALLED:I = 0x7561

.field public static final AM_PAUSE_ACTIVITY:I = 0x753d

.field public static final AM_PRE_BOOT:I = 0x755d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_PSS:I = 0x755f

.field public static final AM_RELAUNCH_ACTIVITY:I = 0x7544

.field public static final AM_RELAUNCH_RESUME_ACTIVITY:I = 0x7543

.field public static final AM_RESTART_ACTIVITY:I = 0x7536

.field public static final AM_RESUME_ACTIVITY:I = 0x7537

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_STOP_ACTIVITY:I = 0x7560

.field public static final AM_SWITCH_USER:I = 0x7559

.field public static final AM_TASK_TO_FRONT:I = 0x7532

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeAmActivityFullyDrawnTime(IILjava/lang/String;J)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    #@0
    .prologue
    .line 321
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/16 v1, 0x755a

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 320
    return-void
.end method

.method public static writeAmActivityLaunchTime(IILjava/lang/String;J)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    #@0
    .prologue
    .line 209
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/16 v1, 0x7539

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 208
    return-void
.end method

.method public static writeAmAnr(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/16 v1, 0x7538

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 204
    return-void
.end method

.method public static writeAmBroadcastDiscardApp(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "app"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/16 v1, 0x7549

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 272
    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(IILjava/lang/String;II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "broadcastfilter"    # I

    #@0
    .prologue
    .line 269
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const/16 v1, 0x7548

    #@24
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@27
    .line 268
    return-void
.end method

.method public static writeAmCrash(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "exception"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "file"    # Ljava/lang/String;
    .param p7, "line"    # I

    #@0
    .prologue
    .line 309
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    const/4 v1, 0x2

    #@13
    aput-object p2, v0, v1

    #@15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const/4 v1, 0x4

    #@1d
    aput-object p4, v0, v1

    #@1f
    const/4 v1, 0x5

    #@20
    aput-object p5, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    aput-object p6, v0, v1

    #@25
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    const/16 v1, 0x7557

    #@2e
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@31
    .line 308
    return-void
.end method

.method public static writeAmCreateActivity(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 193
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x2

    #@17
    aput-object v1, v0, v2

    #@19
    const/4 v1, 0x3

    #@1a
    aput-object p3, v0, v1

    #@1c
    const/4 v1, 0x4

    #@1d
    aput-object p4, v0, v1

    #@1f
    const/4 v1, 0x5

    #@20
    aput-object p5, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    aput-object p6, v0, v1

    #@25
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    const/16 v1, 0x7535

    #@2e
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@31
    .line 192
    return-void
.end method

.method public static writeAmCreateService(IILjava/lang/String;II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    #@0
    .prologue
    .line 277
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const/16 v1, 0x754e

    #@24
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@27
    .line 276
    return-void
.end method

.method public static writeAmCreateTask(II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 189
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/16 v1, 0x7534

    #@13
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@16
    .line 188
    return-void
.end method

.method public static writeAmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/16 v1, 0x7542

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 244
    return-void
.end method

.method public static writeAmDestroyService(III)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 281
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/16 v1, 0x754f

    #@1a
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1d
    .line 280
    return-void
.end method

.method public static writeAmDropProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 289
    const/16 v0, 0x7551

    #@2
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@5
    .line 288
    return-void
.end method

.method public static writeAmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "wantingToPause"    # Ljava/lang/String;
    .param p3, "currentlyPausing"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/4 v1, 0x3

    #@15
    aput-object p3, v0, v1

    #@17
    const/16 v1, 0x753c

    #@19
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1c
    .line 220
    return-void
.end method

.method public static writeAmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/16 v1, 0x7531

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 176
    return-void
.end method

.method public static writeAmFocusedActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    aput-object p2, v0, v1

    #@10
    const/16 v1, 0x755b

    #@12
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@15
    .line 324
    return-void
.end method

.method public static writeAmFocusedStack(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "focusedStackId"    # I
    .param p2, "lastFocusedStackId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x755c

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 328
    return-void
.end method

.method public static writeAmKill(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/16 v1, 0x7547

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 264
    return-void
.end method

.method public static writeAmLowMemory(I)V
    .locals 1
    .param p0, "numProcesses"    # I

    #@0
    .prologue
    .line 241
    const/16 v0, 0x7541

    #@2
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@5
    .line 240
    return-void
.end method

.method public static writeAmMemFactor(II)V
    .locals 3
    .param p0, "current"    # I
    .param p1, "previous"    # I

    #@0
    .prologue
    .line 353
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/16 v1, 0x7562

    #@13
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@16
    .line 352
    return-void
.end method

.method public static writeAmMeminfo(JJJJJ)V
    .locals 4
    .param p0, "cached"    # J
    .param p2, "free"    # J
    .param p4, "zram"    # J
    .param p6, "kernel"    # J
    .param p8, "native_"    # J

    #@0
    .prologue
    .line 337
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    const/16 v1, 0x755e

    #@28
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2b
    .line 336
    return-void
.end method

.method public static writeAmNewIntent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 185
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x2

    #@17
    aput-object v1, v0, v2

    #@19
    const/4 v1, 0x3

    #@1a
    aput-object p3, v0, v1

    #@1c
    const/4 v1, 0x4

    #@1d
    aput-object p4, v0, v1

    #@1f
    const/4 v1, 0x5

    #@20
    aput-object p5, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    aput-object p6, v0, v1

    #@25
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    const/16 v1, 0x7533

    #@2e
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@31
    .line 184
    return-void
.end method

.method public static writeAmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    aput-object p2, v0, v1

    #@10
    const/16 v1, 0x7545

    #@12
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@15
    .line 256
    return-void
.end method

.method public static writeAmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    aput-object p2, v0, v1

    #@10
    const/16 v1, 0x7546

    #@12
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@15
    .line 260
    return-void
.end method

.method public static writeAmOnStopCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    aput-object p2, v0, v1

    #@10
    const/16 v1, 0x7561

    #@12
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@15
    .line 348
    return-void
.end method

.method public static writeAmPauseActivity(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x753d

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 224
    return-void
.end method

.method public static writeAmPreBoot(ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "package_"    # Ljava/lang/String;

    #@0
    .prologue
    .line 333
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/16 v1, 0x755d

    #@f
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@12
    .line 332
    return-void
.end method

.method public static writeAmProcBad(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x753f

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 232
    return-void
.end method

.method public static writeAmProcBound(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x753a

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 212
    return-void
.end method

.method public static writeAmProcDied(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x753b

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 216
    return-void
.end method

.method public static writeAmProcGood(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x7540

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 236
    return-void
.end method

.method public static writeAmProcStart(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "component"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/4 v1, 0x5

    #@1f
    aput-object p5, v0, v1

    #@21
    const/16 v1, 0x753e

    #@23
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@26
    .line 228
    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(ILjava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 285
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    const/16 v1, 0x7550

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 284
    return-void
.end method

.method public static writeAmProcessStartTimeout(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 305
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x7555

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 304
    return-void
.end method

.method public static writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 301
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    const/4 v1, 0x3

    #@15
    aput-object p3, v0, v1

    #@17
    const/16 v1, 0x7554

    #@19
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1c
    .line 300
    return-void
.end method

.method public static writeAmPss(IILjava/lang/String;JJJ)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swappss"    # J

    #@0
    .prologue
    .line 341
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v1

    #@26
    const/4 v2, 0x5

    #@27
    aput-object v1, v0, v2

    #@29
    const/16 v1, 0x755f

    #@2b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2e
    .line 340
    return-void
.end method

.method public static writeAmRelaunchActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 253
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x7544

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 252
    return-void
.end method

.method public static writeAmRelaunchResumeActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x7543

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 248
    return-void
.end method

.method public static writeAmRestartActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x7536

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 196
    return-void
.end method

.method public static writeAmResumeActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const/4 v1, 0x3

    #@19
    aput-object p3, v0, v1

    #@1b
    const/16 v1, 0x7537

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 200
    return-void
.end method

.method public static writeAmScheduleServiceRestart(ILjava/lang/String;J)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 297
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    const/16 v1, 0x7553

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 296
    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(IILjava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "crashCount"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    #@0
    .prologue
    .line 293
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/16 v1, 0x7552

    #@1d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@20
    .line 292
    return-void
.end method

.method public static writeAmStopActivity(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    const/16 v1, 0x7560

    #@16
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19
    .line 344
    return-void
.end method

.method public static writeAmSwitchUser(I)V
    .locals 1
    .param p0, "id"    # I

    #@0
    .prologue
    .line 317
    const/16 v0, 0x7559

    #@2
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@5
    .line 316
    return-void
.end method

.method public static writeAmTaskToFront(II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "task"    # I

    #@0
    .prologue
    .line 181
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/16 v1, 0x7532

    #@13
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@16
    .line 180
    return-void
.end method

.method public static writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 313
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const/4 v1, 0x2

    #@12
    aput-object p2, v0, v1

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    const/4 v1, 0x5

    #@1f
    aput-object p5, v0, v1

    #@21
    const/16 v1, 0x7558

    #@23
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@26
    .line 312
    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 169
    const/16 v0, 0xbe0

    #@2
    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@5
    .line 168
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 173
    const/16 v0, 0xbea

    #@2
    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@5
    .line 172
    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .locals 1
    .param p0, "configMask"    # I

    #@0
    .prologue
    .line 161
    const/16 v0, 0xa9f

    #@2
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@5
    .line 160
    return-void
.end method

.method public static writeCpu(IIIIII)V
    .locals 3
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    #@0
    .prologue
    .line 165
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x5

    #@2b
    aput-object v1, v0, v2

    #@2d
    const/16 v1, 0xaa1

    #@2f
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@32
    .line 164
    return-void
.end method
