.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field static final JOB_IDLE_OPTIMIZE:I = 0x320

.field static final JOB_POST_BOOT_UPDATE:I = 0x321

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
.field final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/BackgroundDexOptService;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 50
    const-string/jumbo v1, "android"

    #@5
    .line 51
    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 49
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@10
    .line 56
    new-instance v0, Landroid/util/ArraySet;

    #@12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@15
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@17
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 41
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@4
    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@17
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19
    .line 41
    return-void
.end method

.method private getBatteryLevel()I
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    #@4
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    #@7
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a
    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    #@b
    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e
    move-result-object v1

    #@f
    .line 105
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "level"

    #@12
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15
    move-result v2

    #@16
    .line 106
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    #@19
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 108
    .local v3, "scale":I
    if-ltz v2, :cond_0

    #@1f
    if-gtz v3, :cond_1

    #@21
    .line 110
    :cond_0
    return v5

    #@22
    .line 113
    :cond_1
    mul-int/lit8 v4, v2, 0x64

    #@24
    div-int/2addr v4, v3

    #@25
    return v4
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@2
    monitor-enter v1

    #@3
    .line 97
    :try_start_0
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 92
    return-void

    #@a
    .line 96
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x1

    #@1
    .line 171
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 173
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 174
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    #@e
    const-string/jumbo v2, "BackgroundDexOptService_IdleOptimization"

    #@11
    move-object v1, p0

    #@12
    move-object v3, p3

    #@13
    move-object v4, p2

    #@14
    move-object v5, p1

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    #@18
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    #@1b
    .line 207
    return v6
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 118
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 120
    return v2

    #@a
    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    .line 125
    const v1, 0x10e0050

    #@11
    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@14
    move-result v4

    #@15
    .line 127
    .local v4, "lowBatteryThreshold":I
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1a
    .line 128
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$1;

    #@1c
    const-string/jumbo v2, "BackgroundDexOptService_PostBootUpdate"

    #@1f
    move-object v1, p0

    #@20
    move-object v3, p3

    #@21
    move-object v5, p2

    #@22
    move-object v6, p1

    #@23
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;ILcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    #@26
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    #@29
    .line 165
    const/4 v0, 0x1

    #@2a
    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const-wide/16 v4, 0x1

    #@3
    .line 70
    const-string/jumbo v1, "jobscheduler"

    #@6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/job/JobScheduler;

    #@c
    .line 74
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    #@e
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@10
    const/16 v3, 0x321

    #@12
    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@15
    .line 75
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1a
    move-result-wide v2

    #@1b
    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@1e
    move-result-object v1

    #@1f
    .line 76
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@21
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@24
    move-result-wide v2

    #@25
    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@30
    .line 81
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    #@32
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@34
    const/16 v3, 0x320

    #@36
    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@39
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@40
    move-result-object v1

    #@41
    .line 84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    #@43
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@46
    move-result-wide v2

    #@47
    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@52
    .line 69
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 216
    const-string/jumbo v2, "package"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    #@a
    .line 217
    .local v1, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 221
    return v3

    #@11
    .line 224
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    #@14
    move-result-object v0

    #@15
    .line 225
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@17
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 229
    :cond_1
    return v3

    #@1e
    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@21
    move-result v2

    #@22
    const/16 v3, 0x321

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 233
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    #@29
    move-result v2

    #@2a
    return v2

    #@2b
    .line 235
    :cond_3
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    #@2e
    move-result v2

    #@2f
    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 245
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x321

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 246
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@e
    .line 250
    :goto_0
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@15
    goto :goto_0
.end method
