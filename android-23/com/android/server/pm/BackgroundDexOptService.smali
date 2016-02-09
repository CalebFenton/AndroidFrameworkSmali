.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field static final BACKGROUND_DEXOPT_JOB:I = 0x320

.field static final RETRY_LATENCY:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 42
    const-string/jumbo v1, "android"

    #@5
    .line 43
    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 41
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@10
    .line 48
    new-instance v0, Landroid/util/ArraySet;

    #@12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@15
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@17
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 35
    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minLatency"    # J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 53
    const-string/jumbo v2, "jobscheduler"

    #@4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/app/job/JobScheduler;

    #@a
    .line 54
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    #@c
    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@e
    const/16 v4, 0x320

    #@10
    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@13
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@22
    move-result-object v0

    #@23
    .line 59
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@26
    .line 52
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 64
    const-string/jumbo v0, "BackgroundDexOptService"

    #@5
    const-string/jumbo v1, "onIdleStart"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 66
    const-string/jumbo v0, "package"

    #@e
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    #@14
    .line 68
    .local v4, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 69
    const-wide/32 v0, 0xdbba00

    #@1d
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    #@20
    .line 70
    return v2

    #@21
    .line 72
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getPackagesThatNeedDexOpt()Landroid/util/ArraySet;

    #@24
    move-result-object v3

    #@25
    .line 73
    .local v3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    #@27
    .line 74
    return v2

    #@28
    .line 77
    :cond_1
    move-object v5, p1

    #@29
    .line 78
    .local v5, "jobParams":Landroid/app/job/JobParameters;
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2b
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2e
    .line 79
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$1;

    #@30
    const-string/jumbo v2, "BackgroundDexOptService_DexOpter"

    #@33
    move-object v1, p0

    #@34
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    #@37
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    #@3a
    .line 102
    return v6
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 107
    const-string/jumbo v0, "BackgroundDexOptService"

    #@4
    const-string/jumbo v1, "onIdleStop"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 108
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@f
    .line 109
    return v2
.end method
