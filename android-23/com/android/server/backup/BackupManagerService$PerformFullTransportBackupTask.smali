.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3966
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 3969
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@6
    .line 3970
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@8
    .line 3971
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@a
    .line 3972
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    const/4 v5, 0x1

    #@d
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@10
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    .line 3973
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@14
    .line 3974
    new-instance v4, Ljava/util/ArrayList;

    #@16
    array-length v5, p3

    #@17
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1c
    .line 3976
    array-length v4, p3

    #@1d
    :goto_0
    if-ge v3, v4, :cond_3

    #@1f
    aget-object v2, p3, v3

    #@21
    .line 3978
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@24
    move-result-object v5

    #@25
    .line 3979
    const/16 v6, 0x40

    #@27
    .line 3978
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@2a
    move-result-object v1

    #@2b
    .line 3980
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2f
    const v6, 0x8000

    #@32
    and-int/2addr v5, v6

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 3981
    const-string/jumbo v5, "com.android.sharedstoragebackup"

    #@38
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    .line 3980
    if-eqz v5, :cond_1

    #@3e
    .line 3976
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_0

    #@41
    .line 3989
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@45
    const/16 v6, 0x2710

    #@47
    if-ge v5, v6, :cond_2

    #@49
    .line 3990
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4b
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@4d
    if-eqz v5, :cond_0

    #@4f
    .line 3997
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@51
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@53
    const/high16 v6, 0x200000

    #@55
    and-int/2addr v5, v6

    #@56
    if-nez v5, :cond_0

    #@58
    .line 4006
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    goto :goto_1

    #@5e
    .line 4007
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@5f
    .line 4008
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "PFTBT"

    #@62
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "Requested package "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    const-string/jumbo v7, " not found; ignoring"

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    goto :goto_1

    #@81
    .line 3968
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 4200
    if-eqz p1, :cond_1

    #@5
    .line 4201
    aget-object v2, p1, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4202
    aget-object v1, p1, v3

    #@b
    .line 4203
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    #@d
    .line 4205
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 4210
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 4211
    aget-object v1, p1, v5

    #@16
    .line 4212
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    #@18
    .line 4214
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 4199
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    #@1c
    .line 4206
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@1d
    .line 4207
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    #@20
    const-string/jumbo v3, "Unable to close pipe!"

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0

    #@27
    .line 4215
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@28
    .line 4216
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    #@2b
    const-string/jumbo v3, "Unable to close pipe!"

    #@2e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_1
.end method

.method public run()V
    .locals 24

    #@0
    .prologue
    .line 4020
    const/4 v13, 0x0

    #@1
    .line 4023
    .local v13, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v20, 0x0

    #@3
    .line 4026
    .local v20, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v10, 0x0

    #@5
    .line 4029
    .local v10, "backoff":J
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9
    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@b
    if-eqz v3, :cond_2

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 4039
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@1f
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap4(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@22
    move-result-object v6

    #@23
    .line 4040
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v6, :cond_5

    #@25
    .line 4041
    const-string/jumbo v3, "PFTBT"

    #@28
    const-string/jumbo v4, "Transport not present; full data backup not performed"

    #@2b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    #@2e
    .line 4178
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v20

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@35
    .line 4179
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@3a
    .line 4181
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@3e
    if-eqz v3, :cond_0

    #@40
    .line 4182
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@44
    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@47
    .line 4185
    :cond_0
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4b
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4d
    monitor-enter v4

    #@4e
    .line 4186
    :try_start_1
    move-object/from16 v0, p0

    #@50
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@52
    const/16 v21, 0x0

    #@54
    move-object/from16 v0, v21

    #@56
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@58
    monitor-exit v4

    #@59
    .line 4189
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@5d
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@60
    .line 4193
    move-object/from16 v0, p0

    #@62
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@64
    if-eqz v3, :cond_1

    #@66
    .line 4194
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6a
    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@6d
    .line 4042
    :cond_1
    return-void

    #@6e
    .line 4032
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "PFTBT"

    #@71
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v21, "full backup requested but e="

    #@79
    move-object/from16 v0, v21

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@83
    move-object/from16 v21, v0

    #@85
    move-object/from16 v0, v21

    #@87
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@89
    move/from16 v21, v0

    #@8b
    move/from16 v0, v21

    #@8d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 4033
    const-string/jumbo v21, " p="

    #@94
    .line 4032
    move-object/from16 v0, v21

    #@96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    .line 4033
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9e
    move-object/from16 v21, v0

    #@a0
    move-object/from16 v0, v21

    #@a2
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@a4
    move/from16 v21, v0

    #@a6
    .line 4032
    move/from16 v0, v21

    #@a8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    .line 4033
    const-string/jumbo v21, "; ignoring"

    #@af
    .line 4032
    move-object/from16 v0, v21

    #@b1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v4

    #@b9
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 4035
    const/4 v3, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    #@c1
    .line 4178
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v20

    #@c5
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@c8
    .line 4179
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@cd
    .line 4181
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@d1
    if-eqz v3, :cond_3

    #@d3
    .line 4182
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@d7
    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@da
    .line 4185
    :cond_3
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@de
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@e0
    monitor-enter v4

    #@e1
    .line 4186
    :try_start_3
    move-object/from16 v0, p0

    #@e3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e5
    const/16 v21, 0x0

    #@e7
    move-object/from16 v0, v21

    #@e9
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@eb
    monitor-exit v4

    #@ec
    .line 4189
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@f0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@f3
    .line 4193
    move-object/from16 v0, p0

    #@f5
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@f7
    if-eqz v3, :cond_4

    #@f9
    .line 4194
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fd
    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@100
    .line 4036
    :cond_4
    return-void

    #@101
    .line 4185
    :catchall_0
    move-exception v3

    #@102
    monitor-exit v4

    #@103
    throw v3

    #@104
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1
    move-exception v3

    #@105
    monitor-exit v4

    #@106
    throw v3

    #@107
    .line 4046
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@109
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@10b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@10e
    move-result v8

    #@10f
    .line 4047
    .local v8, "N":I
    const/4 v15, 0x0

    #@110
    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v20    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v15, "i":I
    :goto_0
    if-ge v15, v8, :cond_14

    #@112
    .line 4048
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@116
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@119
    move-result-object v5

    #@11a
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@11c
    .line 4050
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "PFTBT"

    #@11f
    new-instance v4, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v21, "Initiating full-data transport backup of "

    #@127
    move-object/from16 v0, v21

    #@129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v4

    #@12d
    .line 4051
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@12f
    move-object/from16 v21, v0

    #@131
    .line 4050
    move-object/from16 v0, v21

    #@133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v4

    #@13b
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 4054
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@140
    .line 4053
    const/16 v4, 0xb18

    #@142
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@145
    .line 4056
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@148
    move-result-object v20

    #@149
    .line 4060
    .local v20, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    #@14a
    aget-object v3, v20, v3

    #@14c
    .line 4059
    invoke-interface {v6, v5, v3}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@14f
    move-result v19

    #@150
    .line 4061
    .local v19, "result":I
    if-nez v19, :cond_9

    #@152
    .line 4064
    const/4 v3, 0x0

    #@153
    aget-object v3, v20, v3

    #@155
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    #@158
    .line 4065
    const/4 v3, 0x0

    #@159
    const/4 v4, 0x0

    #@15a
    aput-object v3, v20, v4

    #@15c
    .line 4068
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@15f
    move-result-object v13

    #@160
    .line 4069
    .local v13, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    #@162
    const/4 v3, 0x1

    #@163
    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@166
    .line 4071
    .local v7, "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    #@168
    const/4 v3, 0x1

    #@169
    aget-object v4, v13, v3

    #@16b
    move-object/from16 v3, p0

    #@16d
    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;Ljava/util/concurrent/CountDownLatch;)V

    #@170
    .line 4074
    .local v2, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/4 v3, 0x1

    #@171
    aget-object v3, v13, v3

    #@173
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    #@176
    .line 4075
    const/4 v3, 0x0

    #@177
    const/4 v4, 0x1

    #@178
    aput-object v3, v13, v4

    #@17a
    .line 4079
    new-instance v3, Ljava/lang/Thread;

    #@17c
    const-string/jumbo v4, "package-backup-bridge"

    #@17f
    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@182
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@185
    .line 4083
    new-instance v16, Ljava/io/FileInputStream;

    #@187
    .line 4084
    const/4 v3, 0x0

    #@188
    aget-object v3, v13, v3

    #@18a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18d
    move-result-object v3

    #@18e
    .line 4083
    move-object/from16 v0, v16

    #@190
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@193
    .line 4085
    .local v16, "in":Ljava/io/FileInputStream;
    new-instance v18, Ljava/io/FileOutputStream;

    #@195
    .line 4086
    const/4 v3, 0x1

    #@196
    aget-object v3, v20, v3

    #@198
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@19b
    move-result-object v3

    #@19c
    .line 4085
    move-object/from16 v0, v18

    #@19e
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@1a1
    .line 4087
    .local v18, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x2000

    #@1a3
    new-array v9, v3, [B

    #@1a5
    .line 4088
    .local v9, "buffer":[B
    const/16 v17, 0x0

    #@1a7
    .line 4090
    .local v17, "nRead":I
    :goto_1
    move-object/from16 v0, p0

    #@1a9
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ab
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1ae
    move-result v3

    #@1af
    if-nez v3, :cond_b

    #@1b1
    .line 4092
    const-string/jumbo v3, "PFTBT"

    #@1b4
    const-string/jumbo v4, "Full backup task told to stop"

    #@1b7
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1ba
    .line 4109
    :cond_6
    move-object/from16 v0, p0

    #@1bc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1be
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1c1
    move-result v3

    #@1c2
    if-nez v3, :cond_d

    #@1c4
    .line 4110
    const/16 v19, -0x3e8

    #@1c6
    .line 4111
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    #@1c9
    .line 4127
    :cond_7
    :goto_2
    if-eqz v19, :cond_8

    #@1cb
    .line 4128
    const-string/jumbo v3, "PFTBT"

    #@1ce
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    const-string/jumbo v21, "Error "

    #@1d6
    move-object/from16 v0, v21

    #@1d8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v4

    #@1dc
    move/from16 v0, v19

    #@1de
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v4

    #@1e2
    .line 4129
    const-string/jumbo v21, " backing up "

    #@1e5
    .line 4128
    move-object/from16 v0, v21

    #@1e7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v4

    #@1eb
    .line 4129
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1ed
    move-object/from16 v21, v0

    #@1ef
    .line 4128
    move-object/from16 v0, v21

    #@1f1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v4

    #@1f5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v4

    #@1f9
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1fc
    .line 4134
    :cond_8
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    #@1ff
    move-result-wide v10

    #@200
    .line 4136
    const-string/jumbo v3, "PFTBT"

    #@203
    new-instance v4, Ljava/lang/StringBuilder;

    #@205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    const-string/jumbo v21, "Transport suggested backoff="

    #@20b
    move-object/from16 v0, v21

    #@20d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v4

    #@211
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@214
    move-result-object v4

    #@215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@218
    move-result-object v4

    #@219
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21c
    .line 4143
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_9
    move-object/from16 v0, p0

    #@21e
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@220
    if-eqz v3, :cond_a

    #@222
    .line 4144
    move-object/from16 v0, p0

    #@224
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@226
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@228
    .line 4145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@22b
    move-result-wide v22

    #@22c
    .line 4144
    move-wide/from16 v0, v22

    #@22e
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    #@231
    .line 4148
    :cond_a
    const/16 v3, -0x3ea

    #@233
    move/from16 v0, v19

    #@235
    if-ne v0, v3, :cond_e

    #@237
    .line 4150
    const-string/jumbo v3, "PFTBT"

    #@23a
    new-instance v4, Ljava/lang/StringBuilder;

    #@23c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23f
    const-string/jumbo v21, "Transport rejected backup of "

    #@242
    move-object/from16 v0, v21

    #@244
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v4

    #@248
    .line 4151
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@24a
    move-object/from16 v21, v0

    #@24c
    .line 4150
    move-object/from16 v0, v21

    #@24e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v4

    #@252
    .line 4152
    const-string/jumbo v21, ", skipping"

    #@255
    .line 4150
    move-object/from16 v0, v21

    #@257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v4

    #@25b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v4

    #@25f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@262
    .line 4154
    const/4 v3, 0x2

    #@263
    new-array v3, v3, [Ljava/lang/Object;

    #@265
    .line 4155
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@267
    const/16 v21, 0x0

    #@269
    aput-object v4, v3, v21

    #@26b
    const-string/jumbo v4, "transport rejected"

    #@26e
    const/16 v21, 0x1

    #@270
    aput-object v4, v3, v21

    #@272
    .line 4154
    const/16 v4, 0xb19

    #@274
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@277
    .line 4167
    :goto_3
    move-object/from16 v0, p0

    #@279
    move-object/from16 v1, v20

    #@27b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@27e
    .line 4168
    move-object/from16 v0, p0

    #@280
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@283
    .line 4169
    const/4 v5, 0x0

    #@284
    .line 4047
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v15, v15, 0x1

    #@286
    goto/16 :goto_0

    #@288
    .line 4096
    .restart local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "buffer":[B
    .restart local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "nRead":I
    .restart local v18    # "out":Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v0, v16

    #@28a
    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    #@28d
    move-result v17

    #@28e
    .line 4100
    if-lez v17, :cond_c

    #@290
    .line 4101
    const/4 v3, 0x0

    #@291
    move-object/from16 v0, v18

    #@293
    move/from16 v1, v17

    #@295
    invoke-virtual {v0, v9, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    #@298
    .line 4102
    move/from16 v0, v17

    #@29a
    invoke-interface {v6, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    #@29d
    move-result v19

    #@29e
    .line 4104
    :cond_c
    if-lez v17, :cond_6

    #@2a0
    if-nez v19, :cond_6

    #@2a2
    goto/16 :goto_1

    #@2a4
    .line 4117
    :cond_d
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@2a7
    move-result v14

    #@2a8
    .line 4118
    .local v14, "finishResult":I
    if-nez v19, :cond_7

    #@2aa
    .line 4119
    move/from16 v19, v14

    #@2ac
    goto/16 :goto_2

    #@2ae
    .line 4157
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "finishResult":I
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_e
    if-eqz v19, :cond_11

    #@2b0
    .line 4158
    const-string/jumbo v3, "PFTBT"

    #@2b3
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b8
    const-string/jumbo v21, "Transport failed; aborting backup: "

    #@2bb
    move-object/from16 v0, v21

    #@2bd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v4

    #@2c1
    move/from16 v0, v19

    #@2c3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v4

    #@2c7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ca
    move-result-object v4

    #@2cb
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ce
    .line 4159
    const/4 v3, 0x0

    #@2cf
    new-array v3, v3, [Ljava/lang/Object;

    #@2d1
    const/16 v4, 0xb1a

    #@2d3
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@2d6
    .line 4178
    move-object/from16 v0, p0

    #@2d8
    move-object/from16 v1, v20

    #@2da
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@2dd
    .line 4179
    move-object/from16 v0, p0

    #@2df
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@2e2
    .line 4181
    move-object/from16 v0, p0

    #@2e4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@2e6
    if-eqz v3, :cond_f

    #@2e8
    .line 4182
    move-object/from16 v0, p0

    #@2ea
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@2ec
    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@2ef
    .line 4185
    :cond_f
    move-object/from16 v0, p0

    #@2f1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f3
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2f5
    monitor-enter v4

    #@2f6
    .line 4186
    :try_start_5
    move-object/from16 v0, p0

    #@2f8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2fa
    const/16 v21, 0x0

    #@2fc
    move-object/from16 v0, v21

    #@2fe
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@300
    monitor-exit v4

    #@301
    .line 4189
    move-object/from16 v0, p0

    #@303
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@305
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@308
    .line 4193
    move-object/from16 v0, p0

    #@30a
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@30c
    if-eqz v3, :cond_10

    #@30e
    .line 4194
    move-object/from16 v0, p0

    #@310
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@312
    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@315
    .line 4160
    :cond_10
    return-void

    #@316
    .line 4185
    :catchall_2
    move-exception v3

    #@317
    monitor-exit v4

    #@318
    throw v3

    #@319
    .line 4164
    :cond_11
    :try_start_6
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@31b
    .line 4163
    const/16 v4, 0xb1b

    #@31d
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@320
    .line 4165
    move-object/from16 v0, p0

    #@322
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@324
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@326
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@329
    goto/16 :goto_3

    #@32b
    .line 4175
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .end local v19    # "result":I
    .end local v20    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v12

    #@32c
    .line 4176
    .local v12, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "PFTBT"

    #@32f
    const-string/jumbo v4, "Exception trying full transport backup"

    #@332
    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@335
    .line 4178
    move-object/from16 v0, p0

    #@337
    move-object/from16 v1, v20

    #@339
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@33c
    .line 4179
    move-object/from16 v0, p0

    #@33e
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@341
    .line 4181
    move-object/from16 v0, p0

    #@343
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@345
    if-eqz v3, :cond_12

    #@347
    .line 4182
    move-object/from16 v0, p0

    #@349
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@34b
    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@34e
    .line 4185
    :cond_12
    move-object/from16 v0, p0

    #@350
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@352
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@354
    monitor-enter v4

    #@355
    .line 4186
    :try_start_8
    move-object/from16 v0, p0

    #@357
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@359
    const/16 v21, 0x0

    #@35b
    move-object/from16 v0, v21

    #@35d
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@35f
    monitor-exit v4

    #@360
    .line 4189
    move-object/from16 v0, p0

    #@362
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@364
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@367
    .line 4193
    move-object/from16 v0, p0

    #@369
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@36b
    if-eqz v3, :cond_13

    #@36d
    .line 4194
    move-object/from16 v0, p0

    #@36f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@371
    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@374
    .line 4018
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_4
    return-void

    #@375
    .line 4173
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "N":I
    .restart local v15    # "i":I
    :cond_14
    :try_start_9
    const-string/jumbo v3, "PFTBT"

    #@378
    const-string/jumbo v4, "Full backup completed."

    #@37b
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@37e
    .line 4178
    move-object/from16 v0, p0

    #@380
    move-object/from16 v1, v20

    #@382
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@385
    .line 4179
    move-object/from16 v0, p0

    #@387
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@38a
    .line 4181
    move-object/from16 v0, p0

    #@38c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@38e
    if-eqz v3, :cond_15

    #@390
    .line 4182
    move-object/from16 v0, p0

    #@392
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@394
    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@397
    .line 4185
    :cond_15
    move-object/from16 v0, p0

    #@399
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@39b
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@39d
    monitor-enter v4

    #@39e
    .line 4186
    :try_start_a
    move-object/from16 v0, p0

    #@3a0
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3a2
    const/16 v21, 0x0

    #@3a4
    move-object/from16 v0, v21

    #@3a6
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@3a8
    monitor-exit v4

    #@3a9
    .line 4189
    move-object/from16 v0, p0

    #@3ab
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@3ad
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@3b0
    .line 4193
    move-object/from16 v0, p0

    #@3b2
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@3b4
    if-eqz v3, :cond_13

    #@3b6
    .line 4194
    move-object/from16 v0, p0

    #@3b8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3ba
    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@3bd
    goto :goto_4

    #@3be
    .line 4185
    :catchall_3
    move-exception v3

    #@3bf
    monitor-exit v4

    #@3c0
    throw v3

    #@3c1
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .restart local v12    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v3

    #@3c2
    monitor-exit v4

    #@3c3
    throw v3

    #@3c4
    .line 4177
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    #@3c5
    .line 4178
    move-object/from16 v0, p0

    #@3c7
    move-object/from16 v1, v20

    #@3c9
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@3cc
    .line 4179
    move-object/from16 v0, p0

    #@3ce
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@3d1
    .line 4181
    move-object/from16 v0, p0

    #@3d3
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@3d5
    if-eqz v4, :cond_16

    #@3d7
    .line 4182
    move-object/from16 v0, p0

    #@3d9
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@3db
    invoke-virtual {v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@3de
    .line 4185
    :cond_16
    move-object/from16 v0, p0

    #@3e0
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e2
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@3e4
    monitor-enter v4

    #@3e5
    .line 4186
    :try_start_b
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e9
    move-object/from16 v21, v0

    #@3eb
    const/16 v22, 0x0

    #@3ed
    move-object/from16 v0, v22

    #@3ef
    move-object/from16 v1, v21

    #@3f1
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    #@3f3
    monitor-exit v4

    #@3f4
    .line 4189
    move-object/from16 v0, p0

    #@3f6
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@3f8
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@3fb
    .line 4193
    move-object/from16 v0, p0

    #@3fd
    iget-boolean v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@3ff
    if-eqz v4, :cond_17

    #@401
    .line 4194
    move-object/from16 v0, p0

    #@403
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@405
    invoke-virtual {v4, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@408
    .line 4177
    :cond_17
    throw v3

    #@409
    .line 4185
    :catchall_6
    move-exception v3

    #@40a
    monitor-exit v4

    #@40b
    throw v3
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    #@0
    .prologue
    .line 4014
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 4013
    return-void
.end method
