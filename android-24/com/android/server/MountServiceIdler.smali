.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountServiceIdler$1;
    }
.end annotation


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountServiceIdler;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/MountServiceIdler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "android"

    #@5
    const-class v2, Lcom/android/server/MountServiceIdler;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 34
    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    #@10
    .line 37
    const/16 v0, 0x328

    #@12
    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    #@14
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@3
    .line 41
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    #@8
    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    #@a
    .line 31
    return-void
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 95
    const-string/jumbo v5, "jobscheduler"

    #@4
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/app/job/JobScheduler;

    #@a
    .line 97
    .local v4, "tm":Landroid/app/job/JobScheduler;
    invoke-static {}, Lcom/android/server/MountServiceIdler;->tomorrowMidnight()Ljava/util/Calendar;

    #@d
    move-result-object v1

    #@e
    .line 98
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@11
    move-result-wide v6

    #@12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v8

    #@16
    sub-long v2, v6, v8

    #@18
    .line 100
    .local v2, "timeToMidnight":J
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    #@1a
    sget v5, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    #@1c
    sget-object v6, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    #@1e
    invoke-direct {v0, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@21
    .line 101
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@24
    .line 102
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@27
    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@2a
    .line 104
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@31
    .line 94
    return-void
.end method

.method private static tomorrowMidnight()Ljava/util/Calendar;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@4
    move-result-object v0

    #@5
    .line 109
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@c
    .line 110
    const/16 v1, 0xb

    #@e
    const/4 v2, 0x3

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@12
    .line 111
    const/16 v1, 0xc

    #@14
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@17
    .line 112
    const/16 v1, 0xd

    #@19
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 113
    const/16 v1, 0xe

    #@1e
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@21
    .line 114
    const/4 v1, 0x5

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@26
    .line 115
    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 62
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v3

    #@5
    invoke-interface {v3}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 69
    :goto_0
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    #@a
    .line 70
    sget-object v1, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    #@c
    .line 71
    .local v1, "ms":Lcom/android/server/MountService;
    if-eqz v1, :cond_0

    #@e
    .line 72
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    #@10
    monitor-enter v3

    #@11
    .line 73
    const/4 v4, 0x1

    #@12
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 75
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    #@17
    invoke-virtual {v1, v3}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    #@1a
    .line 77
    :cond_0
    if-eqz v1, :cond_1

    #@1c
    :goto_1
    return v2

    #@1d
    .line 72
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .line 77
    :cond_1
    const/4 v2, 0x0

    #@21
    goto :goto_1

    #@22
    .line 63
    .end local v1    # "ms":Lcom/android/server/MountService;
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 85
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    #@3
    monitor-enter v0

    #@4
    .line 86
    const/4 v1, 0x0

    #@5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 88
    return v2

    #@9
    .line 85
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method
