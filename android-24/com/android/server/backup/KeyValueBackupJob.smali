.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field static final BATCH_INTERVAL:J = 0xdbba00L

.field private static final FUZZ_MILLIS:I = 0x927c0

.field private static final JOB_ID:I = 0x5039

.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static sNextScheduled:J

.field private static sScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "android"

    #@5
    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 37
    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    #@10
    .line 53
    const/4 v0, 0x0

    #@11
    sput-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    #@13
    .line 54
    const-wide/16 v0, 0x0

    #@15
    sput-wide v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    #@17
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@3
    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 85
    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    #@2
    monitor-enter v2

    #@3
    .line 86
    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    #@6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/job/JobScheduler;

    #@c
    .line 87
    .local v0, "js":Landroid/app/job/JobScheduler;
    const/16 v1, 0x5039

    #@e
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@11
    .line 88
    const-wide/16 v4, 0x0

    #@13
    sput-wide v4, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    #@15
    .line 89
    const/4 v1, 0x0

    #@16
    sput-boolean v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 84
    return-void

    #@1a
    .line 85
    .end local v0    # "js":Landroid/app/job/JobScheduler;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public static nextScheduled()J
    .locals 4

    #@0
    .prologue
    .line 94
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    #@2
    monitor-enter v0

    #@3
    .line 95
    :try_start_0
    sget-wide v2, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-wide v2

    #@7
    .line 94
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    const-wide/16 v0, 0x0

    #@2
    invoke-static {p0, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    #@5
    .line 56
    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 61
    const-class v3, Lcom/android/server/backup/KeyValueBackupJob;

    #@2
    monitor-enter v3

    #@3
    .line 62
    :try_start_0
    sget-boolean v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 63
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, p1, v4

    #@b
    if-gtz v2, :cond_0

    #@d
    .line 64
    new-instance v2, Ljava/util/Random;

    #@f
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@12
    const v4, 0x927c0

    #@15
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    #@18
    move-result v2

    #@19
    int-to-long v4, v2

    #@1a
    const-wide/32 v6, 0xdbba00

    #@1d
    add-long p1, v6, v4

    #@1f
    .line 67
    :cond_0
    const-string/jumbo v2, "KeyValueBackupJob"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Scheduling k/v pass in "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 68
    const-wide/16 v6, 0x3e8

    #@30
    div-long v6, p1, v6

    #@32
    const-wide/16 v8, 0x3c

    #@34
    div-long/2addr v6, v8

    #@35
    .line 67
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 68
    const-string/jumbo v5, " minutes"

    #@3c
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 70
    const-string/jumbo v2, "jobscheduler"

    #@4a
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/app/job/JobScheduler;

    #@50
    .line 71
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    #@52
    sget-object v4, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    #@54
    const/16 v5, 0x5039

    #@56
    invoke-direct {v2, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@59
    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@5c
    move-result-object v2

    #@5d
    .line 73
    const/4 v4, 0x1

    #@5e
    .line 71
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@61
    move-result-object v2

    #@62
    .line 74
    const/4 v4, 0x1

    #@63
    .line 71
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@66
    move-result-object v2

    #@67
    .line 75
    const-wide/32 v4, 0x5265c00

    #@6a
    .line 71
    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    #@6d
    move-result-object v0

    #@6e
    .line 76
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@75
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@78
    move-result-wide v4

    #@79
    add-long/2addr v4, p1

    #@7a
    sput-wide v4, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    #@7c
    .line 79
    const/4 v2, 0x1

    #@7d
    sput-boolean v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .end local v0    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v1    # "js":Landroid/app/job/JobScheduler;
    :cond_1
    monitor-exit v3

    #@80
    .line 60
    return-void

    #@81
    .line 61
    :catchall_0
    move-exception v2

    #@82
    monitor-exit v3

    #@83
    throw v2
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 101
    const-class v3, Lcom/android/server/backup/KeyValueBackupJob;

    #@3
    monitor-enter v3

    #@4
    .line 102
    const-wide/16 v4, 0x0

    #@6
    :try_start_0
    sput-wide v4, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    #@8
    .line 103
    const/4 v2, 0x0

    #@9
    sput-boolean v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v3

    #@c
    .line 107
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    #@f
    move-result-object v1

    #@10
    .line 109
    .local v1, "service":Lcom/android/server/backup/Trampoline;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/backup/Trampoline;->backupNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@13
    .line 114
    :goto_0
    return v6

    #@14
    .line 101
    .end local v1    # "service":Lcom/android/server/backup/Trampoline;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2

    #@17
    .line 110
    .restart local v1    # "service":Lcom/android/server/backup/Trampoline;
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method
