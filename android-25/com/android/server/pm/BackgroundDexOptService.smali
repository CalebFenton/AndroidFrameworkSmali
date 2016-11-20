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
.field private final dataDir:Ljava/io/File;

.field final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    #@2
    return-object v0
.end method

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
    .line 52
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 53
    const-string/jumbo v1, "android"

    #@5
    .line 54
    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 52
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@10
    .line 59
    new-instance v0, Landroid/util/ArraySet;

    #@12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@15
    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@17
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@4
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@17
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19
    .line 72
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    #@1f
    .line 44
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
    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    #@4
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    #@7
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a
    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    #@b
    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e
    move-result-object v1

    #@f
    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "level"

    #@12
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15
    move-result v2

    #@16
    .line 111
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    #@19
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 113
    .local v3, "scale":I
    if-ltz v2, :cond_0

    #@1f
    if-gtz v3, :cond_1

    #@21
    .line 115
    :cond_0
    return v5

    #@22
    .line 118
    :cond_1
    mul-int/lit8 v4, v2, 0x64

    #@24
    div-int/2addr v4, v3

    #@25
    return v4
.end method

.method private getLowStorageThreshold()J
    .locals 4

    #@0
    .prologue
    .line 123
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@3
    move-result-object v2

    #@4
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    #@6
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@9
    move-result-wide v0

    #@a
    .line 124
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    #@c
    cmp-long v2, v0, v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 125
    const-string/jumbo v2, "BackgroundDexOptService"

    #@13
    const-string/jumbo v3, "Invalid low storage threshold"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 128
    :cond_0
    return-wide v0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@2
    monitor-enter v1

    #@3
    .line 102
    :try_start_0
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 97
    return-void

    #@a
    .line 101
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 196
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 198
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 200
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    #@f
    move-result-wide v4

    #@10
    .line 202
    .local v4, "lowThreshold":J
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    #@12
    const-string/jumbo v2, "BackgroundDexOptService_IdleOptimization"

    #@15
    move-object v1, p0

    #@16
    move-object v3, p3

    #@17
    move-object v6, p2

    #@18
    move-object v7, p1

    #@19
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;JLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    #@1c
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    #@1f
    .line 244
    return v8
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 10
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
    .line 133
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 135
    return v2

    #@a
    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    .line 140
    const v1, 0x10e0056

    #@11
    .line 139
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@14
    move-result v5

    #@15
    .line 142
    .local v5, "lowBatteryThreshold":I
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    #@18
    move-result-wide v6

    #@19
    .line 144
    .local v6, "lowThreshold":J
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1e
    .line 145
    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    #@20
    const-string/jumbo v3, "BackgroundDexOptService_PostBootUpdate"

    #@23
    move-object v2, p0

    #@24
    move-object v4, p3

    #@25
    move-object v8, p2

    #@26
    move-object v9, p1

    #@27
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;IJLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    #@2a
    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    #@2d
    .line 190
    const/4 v0, 0x1

    #@2e
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
    .line 75
    const-string/jumbo v1, "jobscheduler"

    #@6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/job/JobScheduler;

    #@c
    .line 79
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    #@e
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    #@10
    const/16 v3, 0x321

    #@12
    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@15
    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1a
    move-result-wide v2

    #@1b
    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@1e
    move-result-object v1

    #@1f
    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@21
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@24
    move-result-wide v2

    #@25
    .line 79
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
    .line 86
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
    .line 89
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    #@43
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@46
    move-result-wide v2

    #@47
    .line 86
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
    .line 74
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
    .line 256
    const-string/jumbo v2, "package"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    #@a
    .line 257
    .local v1, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 261
    return v3

    #@11
    .line 264
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    #@14
    move-result-object v0

    #@15
    .line 265
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@17
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 269
    :cond_1
    return v3

    #@1e
    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@21
    move-result v2

    #@22
    const/16 v3, 0x321

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 273
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    #@29
    move-result v2

    #@2a
    return v2

    #@2b
    .line 275
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
    .line 285
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x321

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 286
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@e
    .line 290
    :goto_0
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@15
    goto :goto_0
.end method
