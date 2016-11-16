.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@5
    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@a
    .line 86
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@c
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    #@11
    .line 96
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@13
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@18
    .line 100
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1a
    .line 101
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@1c
    .line 99
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 540
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 541
    return-object v4

    #@8
    .line 544
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@a
    if-nez v3, :cond_1

    #@c
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@e
    if-eqz v3, :cond_5

    #@10
    .line 548
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    #@12
    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    #@15
    .line 549
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@17
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@19
    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    #@1b
    .line 550
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    #@23
    .line 551
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@25
    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    #@27
    .line 552
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    #@29
    .line 553
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@2b
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2d
    and-int/lit8 v3, v3, 0x1

    #@2f
    if-eqz v3, :cond_2

    #@31
    move v1, v2

    #@32
    :cond_2
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    #@34
    .line 555
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@36
    if-nez v1, :cond_3

    #@38
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    #@3a
    if-eqz v1, :cond_6

    #@3c
    .line 556
    :cond_3
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    #@3e
    .line 557
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@40
    .line 567
    :cond_4
    :goto_0
    return-object v0

    #@41
    .line 544
    .end local v0    # "report":Landroid/app/ApplicationErrorReport;
    :cond_5
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    #@43
    if-nez v3, :cond_1

    #@45
    .line 545
    return-object v4

    #@46
    .line 558
    .restart local v0    # "report":Landroid/app/ApplicationErrorReport;
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 559
    const/4 v1, 0x2

    #@4b
    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    #@4d
    .line 560
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    #@4f
    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    #@52
    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@54
    .line 562
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@56
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@58
    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    #@5a
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    #@5c
    .line 563
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@5e
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@60
    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    #@62
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    #@64
    .line 564
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@66
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@68
    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    #@6a
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    #@6c
    goto :goto_0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    #@0
    .prologue
    .line 511
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    #@5
    .line 513
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    #@7
    .line 514
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@9
    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    #@b
    .line 515
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@d
    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    #@f
    .line 516
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@13
    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    #@15
    .line 517
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    #@17
    .line 518
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    #@19
    .line 519
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    #@1b
    .line 520
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    #@1d
    .line 522
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 434
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 438
    :cond_0
    if-eqz p1, :cond_2

    #@a
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@c
    .line 439
    :goto_0
    if-eqz p1, :cond_3

    #@e
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@10
    .line 440
    .local v3, "pid":I
    :goto_1
    if-eqz p1, :cond_4

    #@12
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@14
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16
    .line 441
    .local v10, "uid":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@1a
    .line 442
    iget-object v8, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@1c
    move-object v4, p3

    #@1d
    move-object/from16 v5, p4

    #@1f
    move-wide/from16 v6, p6

    #@21
    .line 441
    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_6

    #@27
    .line 443
    const-string/jumbo v1, "1"

    #@2a
    const-string/jumbo v4, "ro.debuggable"

    #@2d
    const-string/jumbo v5, "0"

    #@30
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_5

    #@3a
    .line 444
    const-string/jumbo v1, "Native crash"

    #@3d
    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    .line 443
    if-eqz v1, :cond_5

    #@45
    .line 445
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Skip killing native crashed app "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 446
    const-string/jumbo v5, "("

    #@5a
    .line 445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 446
    const-string/jumbo v5, ") during testing"

    #@65
    .line 445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 461
    :cond_1
    :goto_3
    const/4 v1, 0x1

    #@71
    return v1

    #@72
    .line 438
    .end local v3    # "pid":I
    .end local v10    # "uid":I
    :cond_2
    const/4 v2, 0x0

    #@73
    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    #@74
    .line 439
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@77
    move-result v3

    #@78
    .restart local v3    # "pid":I
    goto :goto_1

    #@79
    .line 440
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7c
    move-result v10

    #@7d
    .restart local v10    # "uid":I
    goto :goto_2

    #@7e
    .line 448
    :cond_5
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "Force-killing crashed app "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    .line 449
    const-string/jumbo v5, " at watcher\'s request"

    #@93
    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 450
    if-eqz p1, :cond_7

    #@a0
    .line 451
    const/4 v9, 0x0

    #@a1
    move-object v4, p0

    #@a2
    move-object v5, p1

    #@a3
    move-object v6, p3

    #@a4
    move-object/from16 v7, p4

    #@a6
    move-object/from16 v8, p5

    #@a8
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    #@ab
    move-result v1

    #@ac
    if-nez v1, :cond_1

    #@ae
    .line 453
    const-string/jumbo v1, "crash"

    #@b1
    const/4 v4, 0x1

    #@b2
    invoke-virtual {p1, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b5
    goto :goto_3

    #@b6
    .line 463
    .end local v3    # "pid":I
    .end local v10    # "uid":I
    :catch_0
    move-exception v0

    #@b7
    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b9
    const/4 v4, 0x0

    #@ba
    iput-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@bc
    .line 465
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@bf
    move-result-object v1

    #@c0
    const/4 v4, 0x0

    #@c1
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@c4
    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v1, 0x0

    #@c5
    return v1

    #@c6
    .line 457
    .restart local v3    # "pid":I
    .restart local v10    # "uid":I
    :cond_7
    :try_start_1
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    #@c9
    .line 458
    invoke-static {v10, v3}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@cc
    goto :goto_3
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 472
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@3
    .line 474
    const/4 v3, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v4, p2

    #@7
    move-object v5, p3

    #@8
    move-object v6, p4

    #@9
    .line 473
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@f
    .line 475
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    #@12
    .line 476
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    #@15
    .line 477
    const-string/jumbo v2, "force-crash"

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move-object v3, p2

    #@1b
    move-object v4, p3

    #@1c
    move-object v5, p4

    #@1d
    move-object v6, p5

    #@1e
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 915
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@3
    .line 917
    const/4 v2, 0x2

    #@4
    .line 918
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    .line 916
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@10
    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    #@13
    .line 920
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    #@16
    .line 914
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 31
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 732
    new-instance v17, Ljava/util/ArrayList;

    #@2
    const/4 v4, 0x5

    #@3
    move-object/from16 v0, v17

    #@5
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 733
    .local v17, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Landroid/util/SparseArray;

    #@a
    const/16 v4, 0x14

    #@c
    move-object/from16 v0, v21

    #@e
    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    #@11
    .line 735
    .local v21, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    #@13
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 738
    :try_start_0
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1d
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@1f
    .line 739
    move-object/from16 v0, p1

    #@21
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@23
    move-object/from16 v0, p1

    #@25
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@27
    .line 738
    move-object/from16 v0, p5

    #@29
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    #@2c
    move-result v29

    #@2d
    .line 740
    .local v29, "res":I
    if-gez v29, :cond_0

    #@2f
    move-object/from16 v0, p1

    #@31
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@33
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@35
    if-eq v4, v5, :cond_0

    #@37
    .line 741
    const-string/jumbo v4, "anr"

    #@3a
    const/4 v5, 0x1

    #@3b
    move-object/from16 v0, p1

    #@3d
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 749
    .end local v29    # "res":I
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@43
    move-result-wide v14

    #@44
    .line 751
    .local v14, "anrTime":J
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@48
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    #@4b
    .line 755
    move-object/from16 v0, p0

    #@4d
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@4f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@52
    move-result-object v4

    #@53
    .line 756
    const-string/jumbo v5, "anr_show_background"

    #@56
    const/4 v6, 0x0

    #@57
    .line 755
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_1

    #@5d
    const/16 v30, 0x1

    #@5f
    .line 760
    .local v30, "showBackground":Z
    :goto_1
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@63
    monitor-enter v5

    #@64
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@67
    .line 762
    move-object/from16 v0, p0

    #@69
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6b
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@6d
    if-eqz v4, :cond_2

    #@6f
    .line 763
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@71
    new-instance v6, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v7, "During shutdown skipping ANR: "

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    const-string/jumbo v7, " "

    #@86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    move-object/from16 v0, p5

    #@8c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@97
    monitor-exit v5

    #@98
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@9b
    .line 764
    return-void

    #@9c
    .line 743
    .end local v14    # "anrTime":J
    .end local v30    # "showBackground":Z
    :catch_0
    move-exception v16

    #@9d
    .line 744
    .local v16, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@9f
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a1
    const/4 v5, 0x0

    #@a2
    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@a4
    .line 745
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@a7
    move-result-object v4

    #@a8
    const/4 v5, 0x0

    #@a9
    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@ac
    goto :goto_0

    #@ad
    .line 755
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v14    # "anrTime":J
    :cond_1
    const/16 v30, 0x0

    #@af
    .restart local v30    # "showBackground":Z
    goto :goto_1

    #@b0
    .line 765
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    #@b2
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@b4
    if-eqz v4, :cond_3

    #@b6
    .line 766
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@b8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v7, "Skipping duplicate ANR: "

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    const-string/jumbo v7, " "

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v6

    #@d1
    move-object/from16 v0, p5

    #@d3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@de
    monitor-exit v5

    #@df
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@e2
    .line 767
    return-void

    #@e3
    .line 768
    :cond_3
    :try_start_3
    move-object/from16 v0, p1

    #@e5
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@e7
    if-eqz v4, :cond_4

    #@e9
    .line 769
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@eb
    new-instance v6, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v7, "Crashing app skipping ANR: "

    #@f3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v6

    #@f7
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v6

    #@fd
    const-string/jumbo v7, " "

    #@100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v6

    #@104
    move-object/from16 v0, p5

    #@106
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v6

    #@10a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@111
    monitor-exit v5

    #@112
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@115
    .line 770
    return-void

    #@116
    .line 775
    :cond_4
    const/4 v4, 0x1

    #@117
    :try_start_4
    move-object/from16 v0, p1

    #@119
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@11b
    .line 778
    const/4 v4, 0x5

    #@11c
    new-array v4, v4, [Ljava/lang/Object;

    #@11e
    move-object/from16 v0, p1

    #@120
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v6

    #@126
    const/4 v7, 0x0

    #@127
    aput-object v6, v4, v7

    #@129
    move-object/from16 v0, p1

    #@12b
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@12d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@130
    move-result-object v6

    #@131
    const/4 v7, 0x1

    #@132
    aput-object v6, v4, v7

    #@134
    .line 779
    move-object/from16 v0, p1

    #@136
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@138
    const/4 v7, 0x2

    #@139
    aput-object v6, v4, v7

    #@13b
    move-object/from16 v0, p1

    #@13d
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@13f
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@144
    move-result-object v6

    #@145
    const/4 v7, 0x3

    #@146
    aput-object v6, v4, v7

    #@148
    const/4 v6, 0x4

    #@149
    aput-object p5, v4, v6

    #@14b
    .line 778
    const/16 v6, 0x7538

    #@14d
    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@150
    .line 782
    move-object/from16 v0, p1

    #@152
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@157
    move-result-object v4

    #@158
    move-object/from16 v0, v17

    #@15a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15d
    .line 785
    if-nez v30, :cond_5

    #@15f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    #@162
    move-result v4

    #@163
    if-eqz v4, :cond_a

    #@165
    :cond_5
    const/16 v20, 0x0

    #@167
    .line 786
    .local v20, "isSilentANR":Z
    :goto_2
    if-nez v20, :cond_c

    #@169
    .line 787
    move-object/from16 v0, p1

    #@16b
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@16d
    move/from16 v25, v0

    #@16f
    .line 788
    .local v25, "parentPid":I
    if-eqz p3, :cond_6

    #@171
    move-object/from16 v0, p3

    #@173
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@175
    if-eqz v4, :cond_6

    #@177
    move-object/from16 v0, p3

    #@179
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@17b
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@17d
    if-lez v4, :cond_6

    #@17f
    .line 789
    move-object/from16 v0, p3

    #@181
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@183
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@185
    move/from16 v25, v0

    #@187
    .line 791
    :cond_6
    move-object/from16 v0, p1

    #@189
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@18b
    move/from16 v0, v25

    #@18d
    if-eq v0, v4, :cond_7

    #@18f
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@192
    move-result-object v4

    #@193
    move-object/from16 v0, v17

    #@195
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@198
    .line 793
    :cond_7
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@19a
    move-object/from16 v0, p1

    #@19c
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@19e
    if-eq v4, v6, :cond_8

    #@1a0
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@1a2
    move/from16 v0, v25

    #@1a4
    if-eq v4, v0, :cond_8

    #@1a6
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@1a8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ab
    move-result-object v4

    #@1ac
    move-object/from16 v0, v17

    #@1ae
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b1
    .line 795
    :cond_8
    move-object/from16 v0, p0

    #@1b3
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b5
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@1b7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1ba
    move-result v4

    #@1bb
    add-int/lit8 v18, v4, -0x1

    #@1bd
    .local v18, "i":I
    :goto_3
    if-ltz v18, :cond_c

    #@1bf
    .line 796
    move-object/from16 v0, p0

    #@1c1
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c3
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@1c5
    move/from16 v0, v18

    #@1c7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ca
    move-result-object v28

    #@1cb
    check-cast v28, Lcom/android/server/am/ProcessRecord;

    #@1cd
    .line 797
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v28, :cond_9

    #@1cf
    move-object/from16 v0, v28

    #@1d1
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1d3
    if-eqz v4, :cond_9

    #@1d5
    .line 798
    move-object/from16 v0, v28

    #@1d7
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1d9
    move/from16 v26, v0

    #@1db
    .line 799
    .local v26, "pid":I
    if-lez v26, :cond_9

    #@1dd
    move-object/from16 v0, p1

    #@1df
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1e1
    move/from16 v0, v26

    #@1e3
    if-eq v0, v4, :cond_9

    #@1e5
    move/from16 v0, v26

    #@1e7
    move/from16 v1, v25

    #@1e9
    if-eq v0, v1, :cond_9

    #@1eb
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@1ed
    move/from16 v0, v26

    #@1ef
    if-eq v0, v4, :cond_9

    #@1f1
    .line 800
    move-object/from16 v0, v28

    #@1f3
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@1f5
    if-eqz v4, :cond_b

    #@1f7
    .line 801
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1fa
    move-result-object v4

    #@1fb
    move-object/from16 v0, v17

    #@1fd
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@200
    .line 795
    .end local v26    # "pid":I
    :cond_9
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@202
    goto :goto_3

    #@203
    .line 785
    .end local v18    # "i":I
    .end local v20    # "isSilentANR":Z
    .end local v25    # "parentPid":I
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_a
    move-object/from16 v0, p1

    #@205
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@207
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@209
    if-eq v4, v6, :cond_5

    #@20b
    const/16 v20, 0x1

    #@20d
    .restart local v20    # "isSilentANR":Z
    goto/16 :goto_2

    #@20f
    .line 804
    .restart local v18    # "i":I
    .restart local v25    # "parentPid":I
    .restart local v26    # "pid":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_b
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@211
    move-object/from16 v0, v21

    #@213
    move/from16 v1, v26

    #@215
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@218
    goto :goto_4

    #@219
    .line 760
    .end local v18    # "i":I
    .end local v20    # "isSilentANR":Z
    .end local v25    # "parentPid":I
    .end local v26    # "pid":I
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v4

    #@21a
    monitor-exit v5

    #@21b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@21e
    throw v4

    #@21f
    .restart local v20    # "isSilentANR":Z
    :cond_c
    monitor-exit v5

    #@220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@223
    .line 814
    new-instance v19, Ljava/lang/StringBuilder;

    #@225
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    .line 815
    .local v19, "info":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@229
    move-object/from16 v0, v19

    #@22b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@22e
    .line 816
    const-string/jumbo v4, "ANR in "

    #@231
    move-object/from16 v0, v19

    #@233
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v4

    #@237
    move-object/from16 v0, p1

    #@239
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@23b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    .line 817
    if-eqz p2, :cond_d

    #@240
    move-object/from16 v0, p2

    #@242
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@244
    if-eqz v4, :cond_d

    #@246
    .line 818
    const-string/jumbo v4, " ("

    #@249
    move-object/from16 v0, v19

    #@24b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v4

    #@24f
    move-object/from16 v0, p2

    #@251
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v4

    #@257
    const-string/jumbo v5, ")"

    #@25a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    .line 820
    :cond_d
    const-string/jumbo v4, "\n"

    #@260
    move-object/from16 v0, v19

    #@262
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    .line 821
    const-string/jumbo v4, "PID: "

    #@268
    move-object/from16 v0, v19

    #@26a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v4

    #@26e
    move-object/from16 v0, p1

    #@270
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@275
    move-result-object v4

    #@276
    const-string/jumbo v5, "\n"

    #@279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    .line 822
    if-eqz p5, :cond_e

    #@27e
    .line 823
    const-string/jumbo v4, "Reason: "

    #@281
    move-object/from16 v0, v19

    #@283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v4

    #@287
    move-object/from16 v0, p5

    #@289
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v4

    #@28d
    const-string/jumbo v5, "\n"

    #@290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    .line 825
    :cond_e
    if-eqz p3, :cond_f

    #@295
    move-object/from16 v0, p3

    #@297
    move-object/from16 v1, p2

    #@299
    if-eq v0, v1, :cond_f

    #@29b
    .line 826
    const-string/jumbo v4, "Parent: "

    #@29e
    move-object/from16 v0, v19

    #@2a0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v4

    #@2a4
    move-object/from16 v0, p3

    #@2a6
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@2a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v4

    #@2ac
    const-string/jumbo v5, "\n"

    #@2af
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    .line 829
    :cond_f
    new-instance v27, Lcom/android/internal/os/ProcessCpuTracker;

    #@2b4
    const/4 v4, 0x1

    #@2b5
    move-object/from16 v0, v27

    #@2b7
    invoke-direct {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    #@2ba
    .line 831
    .local v27, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    sget-object v24, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    #@2bc
    .line 833
    .local v24, "nativeProcs":[Ljava/lang/String;
    const/4 v12, 0x0

    #@2bd
    .line 834
    .local v12, "tracesFile":Ljava/io/File;
    if-eqz v20, :cond_11

    #@2bf
    .line 835
    move-object/from16 v0, p0

    #@2c1
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c3
    const/4 v4, 0x1

    #@2c4
    const/4 v5, 0x0

    #@2c5
    .line 836
    const/4 v6, 0x0

    #@2c6
    .line 835
    move-object/from16 v0, v17

    #@2c8
    move-object/from16 v1, v21

    #@2ca
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    #@2cd
    move-result-object v12

    #@2ce
    .line 842
    .local v12, "tracesFile":Ljava/io/File;
    :goto_5
    const/4 v11, 0x0

    #@2cf
    .line 844
    .local v11, "cpuInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d1
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2d3
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    #@2d6
    .line 845
    move-object/from16 v0, p0

    #@2d8
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2da
    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@2dc
    monitor-enter v5

    #@2dd
    .line 846
    :try_start_5
    move-object/from16 v0, p0

    #@2df
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2e1
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@2e3
    invoke-virtual {v4, v14, v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2e6
    move-result-object v11

    #@2e7
    .local v11, "cpuInfo":Ljava/lang/String;
    monitor-exit v5

    #@2e8
    .line 848
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    #@2eb
    move-result-object v4

    #@2ec
    move-object/from16 v0, v19

    #@2ee
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    .line 849
    move-object/from16 v0, v19

    #@2f3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    .line 852
    move-object/from16 v0, v27

    #@2f8
    invoke-virtual {v0, v14, v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    #@2fb
    move-result-object v4

    #@2fc
    move-object/from16 v0, v19

    #@2fe
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    .line 854
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@303
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@306
    move-result-object v5

    #@307
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30a
    .line 855
    if-nez v12, :cond_10

    #@30c
    .line 857
    move-object/from16 v0, p1

    #@30e
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@310
    const/4 v5, 0x3

    #@311
    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    #@314
    .line 860
    :cond_10
    move-object/from16 v0, p0

    #@316
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@318
    const-string/jumbo v5, "anr"

    #@31b
    move-object/from16 v0, p1

    #@31d
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@31f
    .line 861
    const/4 v13, 0x0

    #@320
    move-object/from16 v6, p1

    #@322
    move-object/from16 v8, p2

    #@324
    move-object/from16 v9, p3

    #@326
    move-object/from16 v10, p5

    #@328
    .line 860
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    #@32b
    .line 863
    move-object/from16 v0, p0

    #@32d
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@32f
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@331
    if-eqz v4, :cond_13

    #@333
    .line 866
    :try_start_6
    move-object/from16 v0, p0

    #@335
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@337
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@339
    .line 867
    move-object/from16 v0, p1

    #@33b
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@33d
    move-object/from16 v0, p1

    #@33f
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@341
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@344
    move-result-object v7

    #@345
    .line 866
    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    #@348
    move-result v29

    #@349
    .line 868
    .restart local v29    # "res":I
    if-eqz v29, :cond_13

    #@34b
    .line 869
    if-gez v29, :cond_12

    #@34d
    move-object/from16 v0, p1

    #@34f
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@351
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@353
    if-eq v4, v5, :cond_12

    #@355
    .line 870
    const-string/jumbo v4, "anr"

    #@358
    const/4 v5, 0x1

    #@359
    move-object/from16 v0, p1

    #@35b
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    #@35e
    .line 876
    :goto_6
    return-void

    #@35f
    .line 838
    .end local v11    # "cpuInfo":Ljava/lang/String;
    .end local v29    # "res":I
    .local v12, "tracesFile":Ljava/io/File;
    :cond_11
    move-object/from16 v0, p0

    #@361
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@363
    const/4 v4, 0x1

    #@364
    move-object/from16 v0, v17

    #@366
    move-object/from16 v1, v27

    #@368
    move-object/from16 v2, v21

    #@36a
    move-object/from16 v3, v24

    #@36c
    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    #@36f
    move-result-object v12

    #@370
    .local v12, "tracesFile":Ljava/io/File;
    goto/16 :goto_5

    #@372
    .line 845
    .local v11, "cpuInfo":Ljava/lang/String;
    :catchall_1
    move-exception v4

    #@373
    monitor-exit v5

    #@374
    throw v4

    #@375
    .line 872
    .local v11, "cpuInfo":Ljava/lang/String;
    .restart local v29    # "res":I
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    #@377
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@379
    monitor-enter v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    #@37a
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@37d
    .line 873
    move-object/from16 v0, p0

    #@37f
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@381
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@383
    move-object/from16 v0, p1

    #@385
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@388
    :try_start_9
    monitor-exit v5

    #@389
    .line 872
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    #@38c
    goto :goto_6

    #@38d
    .line 878
    .end local v29    # "res":I
    :catch_1
    move-exception v16

    #@38e
    .line 879
    .restart local v16    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@390
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@392
    const/4 v5, 0x0

    #@393
    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@395
    .line 880
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@398
    move-result-object v4

    #@399
    const/4 v5, 0x0

    #@39a
    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@39d
    .line 884
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_13
    move-object/from16 v0, p0

    #@39f
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3a1
    monitor-enter v6

    #@3a2
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3a5
    .line 885
    move-object/from16 v0, p0

    #@3a7
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3a9
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@3ab
    move-object/from16 v0, p1

    #@3ad
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@3af
    move-object/from16 v0, p1

    #@3b1
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@3b3
    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    #@3b6
    .line 887
    if-eqz v20, :cond_14

    #@3b8
    .line 888
    const-string/jumbo v4, "bg anr"

    #@3bb
    const/4 v5, 0x1

    #@3bc
    move-object/from16 v0, p1

    #@3be
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@3c1
    monitor-exit v6

    #@3c2
    .line 884
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3c5
    .line 889
    return-void

    #@3c6
    .line 872
    .restart local v29    # "res":I
    :catchall_2
    move-exception v4

    #@3c7
    :try_start_b
    monitor-exit v5

    #@3c8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3cb
    throw v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    #@3cc
    .line 894
    .end local v29    # "res":I
    :cond_14
    if-eqz p2, :cond_16

    #@3ce
    :try_start_c
    move-object/from16 v0, p2

    #@3d0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@3d2
    move-object v5, v4

    #@3d3
    .line 895
    :goto_7
    if-eqz p5, :cond_17

    #@3d5
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3da
    const-string/jumbo v7, "ANR "

    #@3dd
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e0
    move-result-object v4

    #@3e1
    move-object/from16 v0, p5

    #@3e3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v4

    #@3e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ea
    move-result-object v4

    #@3eb
    .line 896
    :goto_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ee
    move-result-object v7

    #@3ef
    .line 893
    move-object/from16 v0, p0

    #@3f1
    move-object/from16 v1, p1

    #@3f3
    invoke-direct {v0, v1, v5, v4, v7}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3f6
    .line 899
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3f9
    move-result-object v23

    #@3fa
    .line 900
    .local v23, "msg":Landroid/os/Message;
    new-instance v22, Ljava/util/HashMap;

    #@3fc
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    #@3ff
    .line 901
    .local v22, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    #@400
    move-object/from16 v0, v23

    #@402
    iput v4, v0, Landroid/os/Message;->what:I

    #@404
    .line 902
    move-object/from16 v0, v22

    #@406
    move-object/from16 v1, v23

    #@408
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40a
    .line 903
    if-eqz p4, :cond_18

    #@40c
    const/4 v4, 0x1

    #@40d
    :goto_9
    move-object/from16 v0, v23

    #@40f
    iput v4, v0, Landroid/os/Message;->arg1:I

    #@411
    .line 904
    const-string/jumbo v4, "app"

    #@414
    move-object/from16 v0, v22

    #@416
    move-object/from16 v1, p1

    #@418
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41b
    .line 905
    if-eqz p2, :cond_15

    #@41d
    .line 906
    const-string/jumbo v4, "activity"

    #@420
    move-object/from16 v0, v22

    #@422
    move-object/from16 v1, p2

    #@424
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@427
    .line 909
    :cond_15
    move-object/from16 v0, p0

    #@429
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@42b
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    #@42d
    move-object/from16 v0, v23

    #@42f
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@432
    monitor-exit v6

    #@433
    .line 884
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@436
    .line 731
    return-void

    #@437
    .line 894
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "msg":Landroid/os/Message;
    :cond_16
    const/4 v4, 0x0

    #@438
    move-object v5, v4

    #@439
    goto :goto_7

    #@43a
    .line 895
    :cond_17
    :try_start_d
    const-string/jumbo v4, "ANR"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@43d
    goto :goto_8

    #@43e
    .line 903
    .restart local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v23    # "msg":Landroid/os/Message;
    :cond_18
    const/4 v4, 0x0

    #@43f
    goto :goto_9

    #@440
    .line 884
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v4

    #@441
    monitor-exit v6

    #@442
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@445
    throw v4
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@4
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    #@9
    .line 195
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    #@0
    .prologue
    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 305
    .local v0, "origId":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a
    .line 302
    return-void

    #@b
    .line 306
    :catchall_0
    move-exception v2

    #@c
    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 306
    throw v2
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 41
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    #@0
    .prologue
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v10

    #@4
    .line 313
    .local v10, "timeMillis":J
    move-object/from16 v0, p2

    #@6
    iget-object v7, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@8
    .line 314
    .local v7, "shortMsg":Ljava/lang/String;
    move-object/from16 v0, p2

    #@a
    iget-object v8, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@c
    .line 315
    .local v8, "longMsg":Ljava/lang/String;
    move-object/from16 v0, p2

    #@e
    iget-object v9, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@10
    .line 316
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@12
    if-eqz v8, :cond_1

    #@14
    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, ": "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    .line 322
    :cond_0
    :goto_0
    new-instance v39, Lcom/android/server/am/AppErrorResult;

    #@2e
    invoke-direct/range {v39 .. v39}, Lcom/android/server/am/AppErrorResult;-><init>()V

    #@31
    .line 324
    .local v39, "result":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@35
    move-object/from16 v18, v0

    #@37
    monitor-enter v18

    #@38
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3b
    move-object/from16 v4, p0

    #@3d
    move-object/from16 v5, p1

    #@3f
    move-object/from16 v6, p2

    #@41
    .line 329
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_2

    #@47
    monitor-exit v18

    #@48
    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4b
    .line 331
    return-void

    #@4c
    .line 318
    .end local v39    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_1
    if-eqz v7, :cond_0

    #@4e
    .line 319
    move-object v8, v7

    #@4f
    goto :goto_0

    #@50
    .line 338
    .restart local v39    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_2
    if-eqz p1, :cond_3

    #@52
    :try_start_1
    move-object/from16 v0, p1

    #@54
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    if-eqz v4, :cond_3

    #@58
    monitor-exit v18

    #@59
    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5c
    .line 339
    return-void

    #@5d
    .line 343
    :cond_3
    if-eqz p1, :cond_4

    #@5f
    .line 344
    :try_start_2
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@63
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@65
    move-object/from16 v0, p1

    #@67
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@69
    move-object/from16 v0, p1

    #@6b
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@6d
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    #@70
    .line 347
    :cond_4
    new-instance v17, Lcom/android/server/am/AppErrorDialog$Data;

    #@72
    invoke-direct/range {v17 .. v17}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    #@75
    .line 348
    .local v17, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v0, v39

    #@77
    move-object/from16 v1, v17

    #@79
    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    #@7b
    .line 349
    move-object/from16 v0, p1

    #@7d
    move-object/from16 v1, v17

    #@7f
    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    #@81
    .line 353
    if-eqz p1, :cond_e

    #@83
    move-object/from16 v12, p0

    #@85
    move-object/from16 v13, p1

    #@87
    move-object v14, v7

    #@88
    move-object v15, v8

    #@89
    move-object/from16 v16, v9

    #@8b
    invoke-direct/range {v12 .. v17}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_e

    #@91
    .line 357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@94
    move-result-object v35

    #@95
    .line 358
    .local v35, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@96
    move-object/from16 v0, v35

    #@98
    iput v4, v0, Landroid/os/Message;->what:I

    #@9a
    .line 360
    move-object/from16 v0, v17

    #@9c
    iget-object v0, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    #@9e
    move-object/from16 v40, v0

    #@a0
    .line 361
    .local v40, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v17

    #@a2
    move-object/from16 v1, v35

    #@a4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a6
    .line 362
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@aa
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    #@ac
    move-object/from16 v0, v35

    #@ae
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b1
    monitor-exit v18

    #@b2
    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b5
    .line 365
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/AppErrorResult;->get()I

    #@b8
    move-result v38

    #@b9
    .line 367
    .local v38, "res":I
    const/16 v31, 0x0

    #@bb
    .line 368
    .local v31, "appErrorIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@bd
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@bf
    const/16 v5, 0x13c

    #@c1
    move/from16 v0, v38

    #@c3
    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@c6
    .line 369
    const/4 v4, 0x6

    #@c7
    move/from16 v0, v38

    #@c9
    if-eq v0, v4, :cond_5

    #@cb
    const/4 v4, 0x7

    #@cc
    move/from16 v0, v38

    #@ce
    if-ne v0, v4, :cond_6

    #@d0
    .line 370
    :cond_5
    const/16 v38, 0x1

    #@d2
    .line 372
    :cond_6
    move-object/from16 v0, p0

    #@d4
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d6
    monitor-enter v5

    #@d7
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@da
    .line 373
    const/4 v4, 0x5

    #@db
    move/from16 v0, v38

    #@dd
    if-ne v0, v4, :cond_7

    #@df
    .line 374
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@e2
    .line 376
    :cond_7
    const/4 v4, 0x3

    #@e3
    move/from16 v0, v38

    #@e5
    if-ne v0, v4, :cond_8

    #@e7
    .line 377
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@eb
    const-string/jumbo v6, "crash"

    #@ee
    const/4 v12, 0x0

    #@ef
    const/4 v13, 0x1

    #@f0
    move-object/from16 v0, p1

    #@f2
    invoke-virtual {v4, v0, v12, v13, v6}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@f5
    .line 378
    if-eqz v40, :cond_8

    #@f7
    .line 380
    :try_start_4
    move-object/from16 v0, p0

    #@f9
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@fb
    move-object/from16 v0, v40

    #@fd
    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@ff
    .line 381
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    #@102
    move-result-object v12

    #@103
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@106
    move-result-object v12

    #@107
    .line 380
    invoke-virtual {v4, v6, v12}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@10a
    .line 396
    :cond_8
    :goto_1
    const/4 v4, 0x1

    #@10b
    move/from16 v0, v38

    #@10d
    if-ne v0, v4, :cond_a

    #@10f
    .line 397
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@112
    move-result-wide v36

    #@113
    .line 400
    .local v36, "orig":J
    :try_start_6
    move-object/from16 v0, p0

    #@115
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@117
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@119
    move-object/from16 v0, p1

    #@11b
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    #@11e
    .line 401
    move-object/from16 v0, p1

    #@120
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@122
    if-nez v4, :cond_9

    #@124
    .line 402
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@128
    const-string/jumbo v6, "crash"

    #@12b
    const/4 v12, 0x0

    #@12c
    const/4 v13, 0x0

    #@12d
    move-object/from16 v0, p1

    #@12f
    invoke-virtual {v4, v0, v12, v13, v6}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    #@132
    .line 403
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@136
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@138
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@13b
    .line 406
    :cond_9
    :try_start_7
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13e
    .line 409
    .end local v36    # "orig":J
    :cond_a
    const/4 v4, 0x2

    #@13f
    move/from16 v0, v38

    #@141
    if-ne v0, v4, :cond_b

    #@143
    .line 410
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, p1

    #@147
    move-object/from16 v2, p2

    #@149
    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    #@14c
    move-result-object v31

    #@14d
    .line 412
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    :cond_b
    if-eqz p1, :cond_c

    #@14f
    move-object/from16 v0, p1

    #@151
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@153
    if-eqz v4, :cond_f

    #@155
    :cond_c
    :goto_2
    monitor-exit v5

    #@156
    .line 372
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@159
    .line 420
    if-eqz v31, :cond_d

    #@15b
    .line 422
    :try_start_8
    move-object/from16 v0, p0

    #@15d
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@15f
    new-instance v5, Landroid/os/UserHandle;

    #@161
    move-object/from16 v0, p1

    #@163
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@165
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@168
    move-object/from16 v0, v31

    #@16a
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    #@16d
    .line 311
    :cond_d
    :goto_3
    return-void

    #@16e
    .end local v35    # "msg":Landroid/os/Message;
    .end local v38    # "res":I
    .end local v40    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e
    monitor-exit v18

    #@16f
    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@172
    .line 354
    return-void

    #@173
    .line 324
    .end local v17    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_0
    move-exception v4

    #@174
    monitor-exit v18

    #@175
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@178
    throw v4

    #@179
    .line 382
    .restart local v17    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v31    # "appErrorIntent":Landroid/content/Intent;
    .restart local v35    # "msg":Landroid/os/Message;
    .restart local v38    # "res":I
    .restart local v40    # "task":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v34

    #@17a
    .line 385
    .local v34, "e":Ljava/lang/IllegalArgumentException;
    :try_start_9
    move-object/from16 v0, v40

    #@17c
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@17e
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@181
    move-result-object v32

    #@182
    .line 386
    .local v32, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v32, :cond_8

    #@184
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    #@187
    move-object/from16 v0, v32

    #@189
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@18c
    move-result v4

    #@18d
    if-eqz v4, :cond_8

    #@18f
    .line 387
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@193
    move-object/from16 v18, v0

    #@195
    move-object/from16 v0, v40

    #@197
    iget v0, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@199
    move/from16 v19, v0

    #@19b
    .line 388
    move-object/from16 v0, v40

    #@19d
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@19f
    move-object/from16 v20, v0

    #@1a1
    move-object/from16 v0, v40

    #@1a3
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@1a5
    move-object/from16 v21, v0

    #@1a7
    .line 390
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    #@1aa
    move-result-object v4

    #@1ab
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1ae
    move-result-object v27

    #@1af
    .line 391
    move-object/from16 v0, v40

    #@1b1
    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    #@1b3
    move/from16 v28, v0

    #@1b5
    .line 389
    const/16 v22, 0x0

    #@1b7
    const/16 v23, 0x0

    #@1b9
    const/16 v24, 0x0

    #@1bb
    const/16 v25, 0x0

    #@1bd
    const/16 v26, 0x0

    #@1bf
    .line 391
    const/16 v29, 0x0

    #@1c1
    const/16 v30, 0x0

    #@1c3
    .line 387
    invoke-virtual/range {v18 .. v30}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 372
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    .end local v32    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v4

    #@1c9
    monitor-exit v5

    #@1ca
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1cd
    throw v4

    #@1ce
    .line 405
    .restart local v31    # "appErrorIntent":Landroid/content/Intent;
    .restart local v36    # "orig":J
    :catchall_2
    move-exception v4

    #@1cf
    .line 406
    :try_start_a
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d2
    .line 405
    throw v4

    #@1d3
    .line 412
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    .end local v36    # "orig":J
    :cond_f
    const/4 v4, 0x3

    #@1d4
    move/from16 v0, v38

    #@1d6
    if-eq v0, v4, :cond_c

    #@1d8
    .line 415
    move-object/from16 v0, p0

    #@1da
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@1dc
    move-object/from16 v0, p1

    #@1de
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1e0
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@1e2
    move-object/from16 v0, p1

    #@1e4
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1e6
    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e9
    move-result-wide v14

    #@1ea
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1ed
    move-result-object v13

    #@1ee
    .line 415
    invoke-virtual {v4, v6, v12, v13}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1f1
    goto/16 :goto_2

    #@1f3
    .line 423
    :catch_1
    move-exception v33

    #@1f4
    .line 424
    .local v33, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@1f6
    const-string/jumbo v5, "bug report receiver dissappeared"

    #@1f9
    move-object/from16 v0, v33

    #@1fb
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1fe
    goto/16 :goto_3
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 527
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    #@4
    move-result-object v0

    #@5
    .line 528
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    #@7
    .line 529
    return-object v2

    #@8
    .line 531
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@a
    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    #@d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 532
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@15
    .line 533
    const-string/jumbo v2, "android.intent.extra.BUG_REPORT"

    #@18
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1b
    .line 534
    const/high16 v2, 0x10000000

    #@1d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    .line 535
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@4
    move-object/from16 v21, v0

    #@6
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@9
    move-result-object v21

    #@a
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    #@d
    move-result v21

    #@e
    if-nez v21, :cond_5

    #@10
    .line 107
    const/4 v14, 0x0

    #@11
    .line 108
    .local v14, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v8

    #@15
    .line 109
    .local v8, "now":J
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@19
    move-object/from16 v21, v0

    #@1b
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@1e
    move-result-object v11

    #@1f
    .line 110
    .local v11, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@22
    move-result v15

    #@23
    .line 111
    .local v15, "processCount":I
    const/4 v6, 0x0

    #@24
    .end local p3    # "needSep":Z
    .local v6, "ip":I
    :goto_0
    if-ge v6, v15, :cond_5

    #@26
    .line 112
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@29
    move-result-object v12

    #@2a
    check-cast v12, Ljava/lang/String;

    #@2c
    .line 113
    .local v12, "pname":Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v20

    #@30
    check-cast v20, Landroid/util/SparseArray;

    #@32
    .line 114
    .local v20, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@35
    move-result v18

    #@36
    .line 115
    .local v18, "uidCount":I
    const/4 v4, 0x0

    #@37
    .local v4, "i":I
    :goto_1
    move/from16 v0, v18

    #@39
    if-ge v4, v0, :cond_4

    #@3b
    .line 116
    move-object/from16 v0, v20

    #@3d
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    #@40
    move-result v16

    #@41
    .line 117
    .local v16, "puid":I
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@45
    move-object/from16 v21, v0

    #@47
    move-object/from16 v0, v21

    #@49
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    #@4b
    move-object/from16 v21, v0

    #@4d
    move-object/from16 v0, v21

    #@4f
    move/from16 v1, v16

    #@51
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@54
    move-result-object v17

    #@55
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    #@57
    .line 118
    .local v17, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p4, :cond_0

    #@59
    if-eqz v17, :cond_3

    #@5b
    .line 119
    move-object/from16 v0, v17

    #@5d
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5f
    move-object/from16 v21, v0

    #@61
    move-object/from16 v0, v21

    #@63
    move-object/from16 v1, p4

    #@65
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@68
    move-result v21

    #@69
    if-eqz v21, :cond_3

    #@6b
    .line 122
    :cond_0
    if-nez v14, :cond_2

    #@6d
    .line 123
    if-eqz p3, :cond_1

    #@6f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@72
    .line 124
    :cond_1
    const/16 p3, 0x1

    #@74
    .line 125
    .local p3, "needSep":Z
    const-string/jumbo v21, "  Time since processes crashed:"

    #@77
    move-object/from16 v0, p2

    #@79
    move-object/from16 v1, v21

    #@7b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 126
    const/4 v14, 0x1

    #@7f
    .line 128
    .end local p3    # "needSep":Z
    :cond_2
    const-string/jumbo v21, "    Process "

    #@82
    move-object/from16 v0, p2

    #@84
    move-object/from16 v1, v21

    #@86
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 129
    const-string/jumbo v21, " uid "

    #@91
    move-object/from16 v0, p2

    #@93
    move-object/from16 v1, v21

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    move-object/from16 v0, p2

    #@9a
    move/from16 v1, v16

    #@9c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@9f
    .line 130
    const-string/jumbo v21, ": last crashed "

    #@a2
    move-object/from16 v0, p2

    #@a4
    move-object/from16 v1, v21

    #@a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    .line 131
    move-object/from16 v0, v20

    #@ab
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@ae
    move-result-object v21

    #@af
    check-cast v21, Ljava/lang/Long;

    #@b1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@b4
    move-result-wide v22

    #@b5
    sub-long v22, v8, v22

    #@b7
    move-wide/from16 v0, v22

    #@b9
    move-object/from16 v2, p2

    #@bb
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@be
    .line 132
    const-string/jumbo v21, " ago"

    #@c1
    move-object/from16 v0, p2

    #@c3
    move-object/from16 v1, v21

    #@c5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c8
    .line 115
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@ca
    goto/16 :goto_1

    #@cc
    .line 111
    .end local v16    # "puid":I
    .end local v17    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 137
    .end local v4    # "i":I
    .end local v6    # "ip":I
    .end local v8    # "now":J
    .end local v11    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v12    # "pname":Ljava/lang/String;
    .end local v14    # "printed":Z
    .end local v15    # "processCount":I
    .end local v18    # "uidCount":I
    .end local v20    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_5
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@d4
    move-object/from16 v21, v0

    #@d6
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@d9
    move-result-object v21

    #@da
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    #@dd
    move-result v21

    #@de
    if-nez v21, :cond_f

    #@e0
    .line 138
    const/4 v14, 0x0

    #@e1
    .line 139
    .restart local v14    # "printed":Z
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@e5
    move-object/from16 v21, v0

    #@e7
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@ea
    move-result-object v10

    #@eb
    .line 140
    .local v10, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@ee
    move-result v15

    #@ef
    .line 141
    .restart local v15    # "processCount":I
    const/4 v6, 0x0

    #@f0
    .restart local v6    # "ip":I
    :goto_2
    if-ge v6, v15, :cond_f

    #@f2
    .line 142
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@f5
    move-result-object v12

    #@f6
    check-cast v12, Ljava/lang/String;

    #@f8
    .line 143
    .restart local v12    # "pname":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@fb
    move-result-object v19

    #@fc
    check-cast v19, Landroid/util/SparseArray;

    #@fe
    .line 144
    .local v19, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@101
    move-result v18

    #@102
    .line 145
    .restart local v18    # "uidCount":I
    const/4 v4, 0x0

    #@103
    .restart local v4    # "i":I
    :goto_3
    move/from16 v0, v18

    #@105
    if-ge v4, v0, :cond_e

    #@107
    .line 146
    move-object/from16 v0, v19

    #@109
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    #@10c
    move-result v16

    #@10d
    .line 147
    .restart local v16    # "puid":I
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@111
    move-object/from16 v21, v0

    #@113
    move-object/from16 v0, v21

    #@115
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    #@117
    move-object/from16 v21, v0

    #@119
    move-object/from16 v0, v21

    #@11b
    move/from16 v1, v16

    #@11d
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@120
    move-result-object v17

    #@121
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    #@123
    .line 148
    .restart local v17    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p4, :cond_6

    #@125
    if-eqz v17, :cond_d

    #@127
    .line 149
    move-object/from16 v0, v17

    #@129
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@12b
    move-object/from16 v21, v0

    #@12d
    move-object/from16 v0, v21

    #@12f
    move-object/from16 v1, p4

    #@131
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@134
    move-result v21

    #@135
    if-eqz v21, :cond_d

    #@137
    .line 152
    :cond_6
    if-nez v14, :cond_8

    #@139
    .line 153
    if-eqz p3, :cond_7

    #@13b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@13e
    .line 154
    :cond_7
    const/16 p3, 0x1

    #@140
    .line 155
    .restart local p3    # "needSep":Z
    const-string/jumbo v21, "  Bad processes:"

    #@143
    move-object/from16 v0, p2

    #@145
    move-object/from16 v1, v21

    #@147
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 156
    const/4 v14, 0x1

    #@14b
    .line 158
    .end local p3    # "needSep":Z
    :cond_8
    move-object/from16 v0, v19

    #@14d
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@150
    move-result-object v5

    #@151
    check-cast v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    #@153
    .line 159
    .local v5, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string/jumbo v21, "    Bad process "

    #@156
    move-object/from16 v0, p2

    #@158
    move-object/from16 v1, v21

    #@15a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@162
    .line 160
    const-string/jumbo v21, " uid "

    #@165
    move-object/from16 v0, p2

    #@167
    move-object/from16 v1, v21

    #@169
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    move-object/from16 v0, p2

    #@16e
    move/from16 v1, v16

    #@170
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@173
    .line 161
    const-string/jumbo v21, ": crashed at time "

    #@176
    move-object/from16 v0, p2

    #@178
    move-object/from16 v1, v21

    #@17a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17d
    iget-wide v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    #@17f
    move-wide/from16 v22, v0

    #@181
    move-object/from16 v0, p2

    #@183
    move-wide/from16 v1, v22

    #@185
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    #@188
    .line 162
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    #@18a
    move-object/from16 v21, v0

    #@18c
    if-eqz v21, :cond_9

    #@18e
    .line 163
    const-string/jumbo v21, "      Short msg: "

    #@191
    move-object/from16 v0, p2

    #@193
    move-object/from16 v1, v21

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    #@19a
    move-object/from16 v21, v0

    #@19c
    move-object/from16 v0, p2

    #@19e
    move-object/from16 v1, v21

    #@1a0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a3
    .line 165
    :cond_9
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    #@1a5
    move-object/from16 v21, v0

    #@1a7
    if-eqz v21, :cond_a

    #@1a9
    .line 166
    const-string/jumbo v21, "      Long msg: "

    #@1ac
    move-object/from16 v0, p2

    #@1ae
    move-object/from16 v1, v21

    #@1b0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    #@1b5
    move-object/from16 v21, v0

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    move-object/from16 v1, v21

    #@1bb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 168
    :cond_a
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@1c0
    move-object/from16 v21, v0

    #@1c2
    if-eqz v21, :cond_d

    #@1c4
    .line 169
    const-string/jumbo v21, "      Stack:"

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    move-object/from16 v1, v21

    #@1cb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 170
    const/4 v7, 0x0

    #@1cf
    .line 171
    .local v7, "lastPos":I
    const/4 v13, 0x0

    #@1d0
    .local v13, "pos":I
    :goto_4
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@1d2
    move-object/from16 v21, v0

    #@1d4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@1d7
    move-result v21

    #@1d8
    move/from16 v0, v21

    #@1da
    if-ge v13, v0, :cond_c

    #@1dc
    .line 172
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@1de
    move-object/from16 v21, v0

    #@1e0
    move-object/from16 v0, v21

    #@1e2
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    #@1e5
    move-result v21

    #@1e6
    const/16 v22, 0xa

    #@1e8
    move/from16 v0, v21

    #@1ea
    move/from16 v1, v22

    #@1ec
    if-ne v0, v1, :cond_b

    #@1ee
    .line 173
    const-string/jumbo v21, "        "

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    move-object/from16 v1, v21

    #@1f5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f8
    .line 174
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@1fa
    move-object/from16 v21, v0

    #@1fc
    sub-int v22, v13, v7

    #@1fe
    move-object/from16 v0, p2

    #@200
    move-object/from16 v1, v21

    #@202
    move/from16 v2, v22

    #@204
    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    #@207
    .line 175
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@20a
    .line 176
    add-int/lit8 v7, v13, 0x1

    #@20c
    .line 171
    :cond_b
    add-int/lit8 v13, v13, 0x1

    #@20e
    goto :goto_4

    #@20f
    .line 179
    :cond_c
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@211
    move-object/from16 v21, v0

    #@213
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@216
    move-result v21

    #@217
    move/from16 v0, v21

    #@219
    if-ge v7, v0, :cond_d

    #@21b
    .line 180
    const-string/jumbo v21, "        "

    #@21e
    move-object/from16 v0, p2

    #@220
    move-object/from16 v1, v21

    #@222
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    .line 181
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@227
    move-object/from16 v21, v0

    #@229
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    #@22b
    move-object/from16 v22, v0

    #@22d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@230
    move-result v22

    #@231
    sub-int v22, v22, v7

    #@233
    move-object/from16 v0, p2

    #@235
    move-object/from16 v1, v21

    #@237
    move/from16 v2, v22

    #@239
    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    #@23c
    .line 182
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@23f
    .line 145
    .end local v5    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v7    # "lastPos":I
    .end local v13    # "pos":I
    :cond_d
    add-int/lit8 v4, v4, 0x1

    #@241
    goto/16 :goto_3

    #@243
    .line 141
    .end local v16    # "puid":I
    .end local v17    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    #@245
    goto/16 :goto_2

    #@247
    .line 188
    .end local v4    # "i":I
    .end local v6    # "ip":I
    .end local v10    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v12    # "pname":Ljava/lang/String;
    .end local v14    # "printed":Z
    .end local v15    # "processCount":I
    .end local v18    # "uidCount":I
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_f
    return p3
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 24
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    #@0
    .prologue
    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 573
    .local v6, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v5

    #@c
    .line 574
    const-string/jumbo v8, "anr_show_background"

    #@f
    const/4 v9, 0x0

    #@10
    .line 573
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    const/16 v19, 0x1

    #@18
    .line 578
    .local v19, "showBackground":Z
    :goto_0
    move-object/from16 v0, p1

    #@1a
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@1c
    if-nez v5, :cond_2

    #@1e
    .line 579
    move-object/from16 v0, p0

    #@20
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@22
    move-object/from16 v0, p1

    #@24
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@26
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@28
    move-object/from16 v0, p1

    #@2a
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@2c
    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@2f
    move-result-object v14

    #@30
    check-cast v14, Ljava/lang/Long;

    #@32
    .line 580
    .local v14, "crashTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    #@34
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    #@36
    move-object/from16 v0, p1

    #@38
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@3a
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@3c
    move-object/from16 v0, p1

    #@3e
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@40
    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@43
    move-result-object v15

    #@44
    check-cast v15, Ljava/lang/Long;

    #@46
    .line 584
    .end local v14    # "crashTime":Ljava/lang/Long;
    :goto_1
    if-eqz v14, :cond_7

    #@48
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    #@4b
    move-result-wide v8

    #@4c
    const-wide/32 v22, 0xea60

    #@4f
    add-long v8, v8, v22

    #@51
    cmp-long v5, v6, v8

    #@53
    if-gez v5, :cond_7

    #@55
    .line 586
    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@57
    new-instance v8, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v9, "Process "

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    move-object/from16 v0, p1

    #@65
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@67
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@69
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    .line 587
    const-string/jumbo v9, " has crashed too many times: killing!"

    #@70
    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 588
    const/4 v5, 0x3

    #@7c
    new-array v5, v5, [Ljava/lang/Object;

    #@7e
    .line 589
    move-object/from16 v0, p1

    #@80
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v8

    #@86
    const/4 v9, 0x0

    #@87
    aput-object v8, v5, v9

    #@89
    move-object/from16 v0, p1

    #@8b
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@8d
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@8f
    const/4 v9, 0x1

    #@90
    aput-object v8, v5, v9

    #@92
    move-object/from16 v0, p1

    #@94
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@99
    move-result-object v8

    #@9a
    const/4 v9, 0x2

    #@9b
    aput-object v8, v5, v9

    #@9d
    .line 588
    const/16 v8, 0x7550

    #@9f
    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@a2
    .line 590
    move-object/from16 v0, p0

    #@a4
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a6
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a8
    move-object/from16 v0, p1

    #@aa
    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    #@ad
    .line 591
    move-object/from16 v0, p1

    #@af
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@b1
    if-nez v5, :cond_3

    #@b3
    .line 596
    const/4 v5, 0x3

    #@b4
    new-array v5, v5, [Ljava/lang/Object;

    #@b6
    move-object/from16 v0, p1

    #@b8
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@ba
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v8

    #@be
    const/4 v9, 0x0

    #@bf
    aput-object v8, v5, v9

    #@c1
    move-object/from16 v0, p1

    #@c3
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@c5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object v8

    #@c9
    const/4 v9, 0x1

    #@ca
    aput-object v8, v5, v9

    #@cc
    .line 597
    move-object/from16 v0, p1

    #@ce
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@d0
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@d2
    const/4 v9, 0x2

    #@d3
    aput-object v8, v5, v9

    #@d5
    .line 596
    const/16 v8, 0x753f

    #@d7
    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@da
    .line 598
    move-object/from16 v0, p1

    #@dc
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@de
    if-nez v5, :cond_0

    #@e0
    .line 601
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@e4
    move-object/from16 v21, v0

    #@e6
    move-object/from16 v0, p1

    #@e8
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@ea
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@ec
    move-object/from16 v22, v0

    #@ee
    move-object/from16 v0, p1

    #@f0
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@f2
    move/from16 v23, v0

    #@f4
    .line 602
    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    #@f6
    move-object/from16 v8, p3

    #@f8
    move-object/from16 v9, p4

    #@fa
    move-object/from16 v10, p5

    #@fc
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ff
    .line 601
    move-object/from16 v0, v21

    #@101
    move-object/from16 v1, v22

    #@103
    move/from16 v2, v23

    #@105
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@108
    .line 603
    move-object/from16 v0, p0

    #@10a
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@10c
    move-object/from16 v0, p1

    #@10e
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@110
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@112
    move-object/from16 v0, p1

    #@114
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@116
    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    #@119
    .line 605
    :cond_0
    const/4 v5, 0x1

    #@11a
    move-object/from16 v0, p1

    #@11c
    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    #@11e
    .line 606
    const/4 v5, 0x1

    #@11f
    move-object/from16 v0, p1

    #@121
    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@123
    .line 610
    move-object/from16 v0, p0

    #@125
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@127
    const-string/jumbo v8, "crash"

    #@12a
    const/4 v9, 0x0

    #@12b
    const/4 v10, 0x0

    #@12c
    move-object/from16 v0, p1

    #@12e
    invoke-virtual {v5, v0, v9, v10, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    #@131
    .line 611
    move-object/from16 v0, p0

    #@133
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@135
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@137
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@13a
    .line 612
    if-nez v19, :cond_3

    #@13c
    .line 613
    const/4 v5, 0x0

    #@13d
    return v5

    #@13e
    .line 573
    .end local v19    # "showBackground":Z
    :cond_1
    const/16 v19, 0x0

    #@140
    .restart local v19    # "showBackground":Z
    goto/16 :goto_0

    #@142
    .line 582
    :cond_2
    const/4 v15, 0x0

    #@143
    .local v15, "crashTimePersistent":Ljava/lang/Long;
    const/4 v14, 0x0

    #@144
    .local v14, "crashTime":Ljava/lang/Long;
    goto/16 :goto_1

    #@146
    .line 616
    .end local v14    # "crashTime":Ljava/lang/Long;
    .end local v15    # "crashTimePersistent":Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    #@148
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14a
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14c
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@14f
    .line 630
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    #@151
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    #@153
    const/4 v8, 0x3

    #@154
    if-ne v5, v8, :cond_9

    #@156
    const/16 v17, 0x1

    #@158
    .line 632
    .local v17, "procIsBoundForeground":Z
    :goto_3
    move-object/from16 v0, p1

    #@15a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@15c
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@15f
    move-result v5

    #@160
    add-int/lit8 v16, v5, -0x1

    #@162
    .local v16, "i":I
    :goto_4
    if-ltz v16, :cond_a

    #@164
    .line 635
    move-object/from16 v0, p1

    #@166
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    #@168
    move/from16 v0, v16

    #@16a
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@16d
    move-result-object v20

    #@16e
    check-cast v20, Lcom/android/server/am/ServiceRecord;

    #@170
    .line 636
    .local v20, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v20

    #@172
    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@174
    add-int/lit8 v5, v5, 0x1

    #@176
    move-object/from16 v0, v20

    #@178
    iput v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@17a
    .line 640
    if-eqz p6, :cond_6

    #@17c
    move-object/from16 v0, v20

    #@17e
    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    #@180
    const/4 v8, 0x1

    #@181
    if-gt v5, v8, :cond_6

    #@183
    .line 641
    move-object/from16 v0, v20

    #@185
    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    #@187
    if-nez v5, :cond_5

    #@189
    .line 640
    if-eqz v17, :cond_6

    #@18b
    .line 642
    :cond_5
    const/4 v5, 0x1

    #@18c
    move-object/from16 v0, p6

    #@18e
    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    #@190
    .line 632
    :cond_6
    add-int/lit8 v16, v16, -0x1

    #@192
    goto :goto_4

    #@193
    .line 619
    .end local v16    # "i":I
    .end local v17    # "procIsBoundForeground":Z
    .end local v20    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7
    move-object/from16 v0, p0

    #@195
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@197
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@199
    move-object/from16 v0, p1

    #@19b
    move-object/from16 v1, p2

    #@19d
    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    #@1a0
    move-result-object v12

    #@1a1
    .line 620
    .local v12, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz p6, :cond_8

    #@1a3
    .line 621
    move-object/from16 v0, p6

    #@1a5
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    #@1a7
    .line 623
    :cond_8
    if-eqz p6, :cond_4

    #@1a9
    if-eqz v15, :cond_4

    #@1ab
    .line 624
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@1ae
    move-result-wide v8

    #@1af
    const-wide/32 v22, 0xea60

    #@1b2
    add-long v8, v8, v22

    #@1b4
    cmp-long v5, v6, v8

    #@1b6
    if-gez v5, :cond_4

    #@1b8
    .line 625
    const/4 v5, 0x1

    #@1b9
    move-object/from16 v0, p6

    #@1bb
    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    #@1bd
    goto :goto_2

    #@1be
    .line 630
    .end local v12    # "affectedTask":Lcom/android/server/am/TaskRecord;
    :cond_9
    const/16 v17, 0x0

    #@1c0
    .restart local v17    # "procIsBoundForeground":Z
    goto :goto_3

    #@1c1
    .line 650
    .restart local v16    # "i":I
    :cond_a
    move-object/from16 v0, p1

    #@1c3
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1c5
    .line 651
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    #@1c7
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c9
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    if-ne v0, v5, :cond_c

    #@1cf
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d2
    move-result v5

    #@1d3
    if-lez v5, :cond_c

    #@1d5
    .line 652
    move-object/from16 v0, p0

    #@1d7
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1d9
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@1db
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1dd
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1df
    and-int/lit8 v5, v5, 0x1

    #@1e1
    if-nez v5, :cond_c

    #@1e3
    .line 653
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1e6
    move-result v5

    #@1e7
    add-int/lit8 v11, v5, -0x1

    #@1e9
    .local v11, "activityNdx":I
    :goto_5
    if-ltz v11, :cond_c

    #@1eb
    .line 654
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ee
    move-result-object v18

    #@1ef
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    #@1f1
    .line 655
    .local v18, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@1f4
    move-result v5

    #@1f5
    if-eqz v5, :cond_b

    #@1f7
    .line 656
    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@1f9
    new-instance v8, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v9, "Clearing package preferred activities from "

    #@201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v8

    #@205
    move-object/from16 v0, v18

    #@207
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@209
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v8

    #@20d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@210
    move-result-object v8

    #@211
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@214
    .line 658
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@217
    move-result-object v5

    #@218
    .line 659
    move-object/from16 v0, v18

    #@21a
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@21c
    .line 658
    invoke-interface {v5, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21f
    .line 653
    :cond_b
    :goto_6
    add-int/lit8 v11, v11, -0x1

    #@221
    goto :goto_5

    #@222
    .line 667
    .end local v11    # "activityNdx":I
    .end local v18    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p1

    #@224
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    #@226
    if-nez v5, :cond_d

    #@228
    .line 670
    move-object/from16 v0, p0

    #@22a
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@22c
    move-object/from16 v0, p1

    #@22e
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@230
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@232
    move-object/from16 v0, p1

    #@234
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@236
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@239
    move-result-object v10

    #@23a
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@23d
    .line 671
    move-object/from16 v0, p0

    #@23f
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    #@241
    move-object/from16 v0, p1

    #@243
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@245
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@247
    move-object/from16 v0, p1

    #@249
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@24b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24e
    move-result-object v10

    #@24f
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@252
    .line 674
    :cond_d
    move-object/from16 v0, p1

    #@254
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    #@256
    if-eqz v5, :cond_e

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@25c
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@25e
    move-object/from16 v0, p1

    #@260
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    #@262
    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@265
    .line 675
    :cond_e
    const/4 v5, 0x1

    #@266
    return v5

    #@267
    .line 660
    .restart local v11    # "activityNdx":I
    .restart local v18    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v13

    #@268
    .local v13, "c":Landroid/os/RemoteException;
    goto :goto_6
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 924
    const/16 v18, 0x0

    #@2
    .line 925
    .local v18, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6
    move-object/from16 v22, v0

    #@8
    monitor-enter v22

    #@9
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c
    .line 926
    move-object/from16 v0, p1

    #@e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    move-object/from16 v19, v0

    #@12
    check-cast v19, Ljava/util/HashMap;

    #@14
    .line 927
    .local v19, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "app"

    #@17
    move-object/from16 v0, v19

    #@19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v20

    #@1d
    check-cast v20, Lcom/android/server/am/ProcessRecord;

    #@1f
    .line 928
    .local v20, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v20, :cond_0

    #@21
    move-object/from16 v0, v20

    #@23
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 929
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "App already has anr dialog: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, v20

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 930
    move-object/from16 v0, p0

    #@44
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@46
    const/16 v2, 0x13d

    #@48
    .line 931
    const/4 v3, -0x2

    #@49
    .line 930
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit v22

    #@4d
    .line 925
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@50
    .line 932
    return-void

    #@51
    .line 935
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    #@53
    const-string/jumbo v1, "android.intent.action.ANR"

    #@56
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@59
    .line 936
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@5b
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5d
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    #@5f
    if-nez v1, :cond_1

    #@61
    .line 937
    const/high16 v1, 0x50000000

    #@63
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@66
    .line 940
    :cond_1
    move-object/from16 v0, p0

    #@68
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6a
    .line 942
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@6c
    .line 940
    const/4 v2, 0x0

    #@6d
    const/4 v3, 0x0

    #@6e
    .line 941
    const/4 v5, 0x0

    #@6f
    const/4 v6, 0x0

    #@70
    const/4 v7, 0x0

    #@71
    const/4 v8, 0x0

    #@72
    const/4 v9, 0x0

    #@73
    const/4 v10, 0x0

    #@74
    const/4 v11, -0x1

    #@75
    .line 942
    const/4 v12, 0x0

    #@76
    const/4 v13, 0x0

    #@77
    const/4 v14, 0x0

    #@78
    const/16 v16, 0x3e8

    #@7a
    const/16 v17, 0x0

    #@7c
    .line 940
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@7f
    .line 944
    move-object/from16 v0, p0

    #@81
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@83
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@86
    move-result-object v1

    #@87
    .line 945
    const-string/jumbo v2, "anr_show_background"

    #@8a
    const/4 v3, 0x0

    #@8b
    .line 944
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_4

    #@91
    const/16 v21, 0x1

    #@93
    .line 946
    .local v21, "showBackground":Z
    :goto_0
    move-object/from16 v0, p0

    #@95
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@97
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    #@9a
    move-result v1

    #@9b
    if-nez v1, :cond_2

    #@9d
    if-eqz v21, :cond_6

    #@9f
    .line 947
    :cond_2
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog;

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a5
    .line 948
    move-object/from16 v0, p0

    #@a7
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@a9
    const-string/jumbo v1, "activity"

    #@ac
    move-object/from16 v0, v19

    #@ae
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    move-result-object v9

    #@b2
    check-cast v9, Lcom/android/server/am/ActivityRecord;

    #@b4
    .line 949
    move-object/from16 v0, p1

    #@b6
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@b8
    if-eqz v1, :cond_5

    #@ba
    const/4 v10, 0x1

    #@bb
    :goto_1
    move-object/from16 v8, v20

    #@bd
    .line 947
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c0
    .line 950
    .local v5, "d":Landroid/app/Dialog;
    :try_start_2
    move-object/from16 v0, v20

    #@c2
    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c4
    .end local v18    # "d":Landroid/app/Dialog;
    :goto_2
    monitor-exit v22

    #@c5
    .line 925
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@c8
    .line 959
    if-eqz v5, :cond_3

    #@ca
    .line 960
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    #@cd
    .line 923
    :cond_3
    return-void

    #@ce
    .line 944
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v21    # "showBackground":Z
    .restart local v18    # "d":Landroid/app/Dialog;
    :cond_4
    const/16 v21, 0x0

    #@d0
    .restart local v21    # "showBackground":Z
    goto :goto_0

    #@d1
    .line 949
    :cond_5
    const/4 v10, 0x0

    #@d2
    goto :goto_1

    #@d3
    .line 952
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@d5
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@d7
    const/16 v2, 0x13d

    #@d9
    .line 953
    const/4 v3, -0x1

    #@da
    .line 952
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@dd
    .line 955
    move-object/from16 v0, p0

    #@df
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e1
    const/4 v2, 0x0

    #@e2
    move-object/from16 v0, v20

    #@e4
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e7
    move-object/from16 v5, v18

    #@e9
    .restart local v5    # "d":Landroid/app/Dialog;
    goto :goto_2

    #@ea
    .line 925
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v19    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "showBackground":Z
    :catchall_0
    move-exception v1

    #@eb
    move-object/from16 v5, v18

    #@ed
    .end local v18    # "d":Landroid/app/Dialog;
    .restart local v5    # "d":Landroid/app/Dialog;
    :goto_3
    monitor-exit v22

    #@ee
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@f1
    throw v1

    #@f2
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "showBackground":Z
    :catchall_1
    move-exception v1

    #@f3
    goto :goto_3
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 679
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    #@5
    .line 680
    .local v1, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v7

    #@b
    .line 681
    const-string/jumbo v9, "anr_show_background"

    #@e
    .line 680
    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    const/4 v5, 0x1

    #@15
    .line 682
    .local v5, "showBackground":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@17
    monitor-enter v10

    #@18
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1b
    .line 683
    iget-object v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    #@1d
    .line 684
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    #@1f
    .line 685
    .local v4, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v3, :cond_2

    #@21
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@23
    if-eqz v7, :cond_2

    #@25
    .line 686
    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@27
    new-instance v8, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v9, "App already has crash dialog: "

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 687
    if-eqz v4, :cond_0

    #@40
    .line 688
    sget v7, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    #@42
    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :cond_0
    monitor-exit v10

    #@46
    .line 682
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@49
    .line 690
    return-void

    #@4a
    .line 680
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v5    # "showBackground":Z
    :cond_1
    const/4 v5, 0x0

    #@4b
    .restart local v5    # "showBackground":Z
    goto :goto_0

    #@4c
    .line 692
    .restart local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_2
    :try_start_1
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    #@4e
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    #@51
    move-result v7

    #@52
    .line 693
    const/16 v9, 0x2710

    #@54
    .line 692
    if-lt v7, v9, :cond_4

    #@56
    .line 694
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    #@58
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@5a
    if-eq v7, v9, :cond_3

    #@5c
    const/4 v2, 0x1

    #@5d
    .line 695
    .local v2, "isBackground":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5f
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@61
    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    #@64
    move-result-object v11

    #@65
    array-length v12, v11

    #@66
    move v9, v8

    #@67
    .end local v2    # "isBackground":Z
    :goto_2
    if-ge v9, v12, :cond_6

    #@69
    aget v6, v11, v9

    #@6b
    .line 696
    .local v6, "userId":I
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    #@6d
    if-eq v7, v6, :cond_5

    #@6f
    const/4 v7, 0x1

    #@70
    :goto_3
    and-int/2addr v2, v7

    #@71
    .line 695
    .local v2, "isBackground":Z
    add-int/lit8 v7, v9, 0x1

    #@73
    move v9, v7

    #@74
    goto :goto_2

    #@75
    .line 694
    .end local v2    # "isBackground":Z
    .end local v6    # "userId":I
    :cond_3
    const/4 v2, 0x0

    #@76
    .local v2, "isBackground":Z
    goto :goto_1

    #@77
    .line 692
    .end local v2    # "isBackground":Z
    :cond_4
    const/4 v2, 0x0

    #@78
    .restart local v2    # "isBackground":Z
    goto :goto_1

    #@79
    .end local v2    # "isBackground":Z
    .restart local v6    # "userId":I
    :cond_5
    move v7, v8

    #@7a
    .line 696
    goto :goto_3

    #@7b
    .line 698
    .end local v6    # "userId":I
    :cond_6
    if-eqz v2, :cond_7

    #@7d
    if-eqz v5, :cond_c

    #@7f
    .line 705
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@81
    if-eqz v7, :cond_e

    #@83
    .line 706
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@85
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@87
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@89
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@8c
    move-result v0

    #@8d
    .line 707
    :goto_4
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8f
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    #@92
    move-result v7

    #@93
    if-nez v7, :cond_8

    #@95
    if-eqz v5, :cond_9

    #@97
    :cond_8
    if-eqz v0, :cond_f

    #@99
    .line 712
    :cond_9
    if-eqz v4, :cond_a

    #@9b
    .line 713
    sget v7, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    #@9d
    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a0
    :cond_a
    :goto_5
    monitor-exit v10

    #@a1
    .line 682
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a4
    .line 718
    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    #@a6
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@a8
    if-eqz v7, :cond_b

    #@aa
    .line 719
    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    #@ac
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@ae
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    #@b1
    .line 678
    :cond_b
    return-void

    #@b2
    .line 699
    :cond_c
    :try_start_2
    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@b4
    new-instance v8, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v9, "Skipping crash dialog of "

    #@bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v8

    #@c4
    const-string/jumbo v9, ": background"

    #@c7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v8

    #@cf
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 700
    if-eqz v4, :cond_d

    #@d4
    .line 701
    sget v7, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    #@d6
    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d9
    :cond_d
    monitor-exit v10

    #@da
    .line 682
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@dd
    .line 703
    return-void

    #@de
    .line 705
    :cond_e
    const/4 v0, 0x0

    #@df
    .local v0, "crashSilenced":Z
    goto :goto_4

    #@e0
    .line 708
    .end local v0    # "crashSilenced":Z
    :cond_f
    :try_start_3
    new-instance v7, Lcom/android/server/am/AppErrorDialog;

    #@e2
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@e4
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e6
    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    #@e9
    iput-object v7, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@eb
    goto :goto_5

    #@ec
    .line 682
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v7

    #@ed
    monitor-exit v10

    #@ee
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@f1
    throw v7
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    #@2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@4
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 244
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@4
    .line 245
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@6
    .line 246
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@8
    .line 247
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@a
    .line 248
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@c
    if-ne v0, p2, :cond_0

    #@e
    .line 249
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@10
    .line 251
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@12
    if-ne v0, p2, :cond_1

    #@14
    .line 252
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@16
    .line 254
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@18
    if-lez v0, :cond_2

    #@1a
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1c
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@1e
    if-eq v0, v1, :cond_2

    #@20
    .line 255
    const-string/jumbo v2, "user-terminated"

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move-object v4, v3

    #@26
    move-object v5, v3

    #@27
    move-object v6, v3

    #@28
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    #@2b
    .line 257
    const-string/jumbo v0, "user request after error"

    #@2e
    const/4 v1, 0x1

    #@2f
    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    #@32
    .line 243
    :cond_2
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    if-eqz p1, :cond_0

    #@2
    .line 235
    const-string/jumbo v1, ","

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 236
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    #@a
    if-lez v1, :cond_0

    #@c
    .line 237
    new-instance v1, Landroid/util/ArraySet;

    #@e
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@13
    .line 238
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@15
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@18
    .line 233
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@4
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    #@9
    .line 199
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 204
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    #@2
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@5
    move-result-object v4

    #@6
    .line 205
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v6

    #@a
    add-int/lit8 v3, v6, -0x1

    #@c
    .local v3, "ip":I
    :goto_0
    if-ltz v3, :cond_6

    #@e
    .line 206
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/util/SparseArray;

    #@14
    .line 207
    .local v0, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v6

    #@18
    add-int/lit8 v2, v6, -0x1

    #@1a
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    #@1c
    .line 208
    const/4 v5, 0x0

    #@1d
    .line 209
    .local v5, "remove":Z
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@20
    move-result v1

    #@21
    .line 210
    .local v1, "entUid":I
    if-nez p1, :cond_3

    #@23
    .line 211
    const/4 v6, -0x1

    #@24
    if-ne p3, v6, :cond_2

    #@26
    .line 212
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@29
    move-result v6

    #@2a
    if-ne v6, p2, :cond_0

    #@2c
    .line 213
    const/4 v5, 0x1

    #@2d
    .line 223
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    #@2f
    .line 224
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@32
    .line 207
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@34
    goto :goto_1

    #@35
    .line 216
    :cond_2
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    #@38
    move-result v6

    #@39
    if-ne v1, v6, :cond_0

    #@3b
    .line 217
    const/4 v5, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 220
    :cond_3
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@40
    move-result v6

    #@41
    if-ne v6, p3, :cond_0

    #@43
    .line 221
    const/4 v5, 0x1

    #@44
    goto :goto_2

    #@45
    .line 227
    .end local v1    # "entUid":I
    .end local v5    # "remove":Z
    :cond_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_5

    #@4b
    .line 228
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@4e
    .line 205
    :cond_5
    add-int/lit8 v3, v3, -0x1

    #@50
    goto :goto_0

    #@51
    .line 203
    .end local v0    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    const/4 v2, 0x0

    #@1
    .line 269
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@5
    monitor-enter v4

    #@6
    .line 270
    const/4 v0, 0x0

    #@7
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_2

    #@11
    .line 271
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    #@1b
    .line 272
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@1d
    if-eq v3, p1, :cond_1

    #@1f
    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 275
    :cond_1
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    if-ne v3, p2, :cond_3

    #@26
    .line 276
    move-object v2, v1

    #@27
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_2
    monitor-exit v4

    #@28
    .line 285
    if-nez v2, :cond_4

    #@2a
    .line 286
    sget-object v3, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "crashApplication: nothing for uid="

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 287
    const-string/jumbo v5, " initialPid="

    #@3f
    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 288
    const-string/jumbo v5, " packageName="

    #@4a
    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 289
    return-void

    #@5a
    .line 279
    .restart local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_0

    #@62
    .line 280
    move-object v2, v1

    #@63
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_1

    #@64
    .line 269
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    #@65
    monitor-exit v4

    #@66
    throw v3

    #@67
    .line 292
    :cond_4
    invoke-virtual {v2, p4}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    #@6a
    .line 262
    return-void
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 485
    const/4 v1, 0x0

    #@1
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@3
    .line 487
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@7
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    #@a
    move-result-object v2

    #@b
    const/4 v1, 0x0

    #@c
    array-length v3, v2

    #@d
    :goto_0
    if-ge v1, v3, :cond_1

    #@f
    aget v0, v2, v1

    #@11
    .line 488
    .local v0, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    #@13
    if-ne v4, v0, :cond_0

    #@15
    .line 490
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    #@17
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@19
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1b
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1f
    .line 489
    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@22
    move-result-object v4

    #@23
    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@25
    .line 487
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 493
    .end local v0    # "userId":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    #@2d
    .line 481
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 725
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@b
    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    #@d
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@f
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@14
    .line 723
    return-void
.end method
