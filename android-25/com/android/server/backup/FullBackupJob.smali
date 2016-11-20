.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final JOB_ID:I = 0x5038

.field private static final TAG:Ljava/lang/String; = "FullBackupJob"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field mParams:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "android"

    #@5
    const-class v2, Lcom/android/server/backup/FullBackupJob;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 30
    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    #@10
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@3
    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "minDelay"    # J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 38
    const-string/jumbo v2, "jobscheduler"

    #@4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/app/job/JobScheduler;

    #@a
    .line 39
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    #@c
    sget-object v3, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    #@e
    const/16 v4, 0x5038

    #@10
    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@13
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@16
    move-result-object v2

    #@17
    .line 41
    const/4 v3, 0x2

    #@18
    .line 39
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@1f
    move-result-object v0

    #@20
    .line 43
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v2, 0x0

    #@22
    cmp-long v2, p1, v2

    #@24
    if-lez v2, :cond_0

    #@26
    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@29
    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    #@30
    .line 37
    return-void
.end method


# virtual methods
.method public finishBackupPass()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 52
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@b
    .line 53
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@d
    .line 50
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@2
    .line 62
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    #@5
    move-result-object v0

    #@6
    .line 63
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0, p0}, Lcom/android/server/backup/Trampoline;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 68
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 69
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    #@7
    .line 70
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    #@a
    move-result-object v0

    #@b
    .line 71
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->endFullBackup()V

    #@e
    .line 73
    .end local v0    # "service":Lcom/android/server/backup/Trampoline;
    :cond_0
    const/4 v1, 0x0

    #@f
    return v1
.end method
