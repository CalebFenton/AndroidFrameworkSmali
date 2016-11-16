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
.field mBackupObserver:Landroid/app/backup/IBackupObserver;

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

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "userInitiated"    # Z

    #@0
    .prologue
    .line 4387
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 4391
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@5
    .line 4392
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@7
    .line 4393
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@9
    .line 4394
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    const/4 v5, 0x1

    #@c
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@f
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@11
    .line 4395
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@13
    .line 4396
    new-instance v4, Ljava/util/ArrayList;

    #@15
    array-length v5, p3

    #@16
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1b
    .line 4397
    move-object/from16 v0, p7

    #@1d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@1f
    .line 4398
    move/from16 v0, p8

    #@21
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    #@23
    .line 4400
    const/4 v4, 0x0

    #@24
    array-length v5, p3

    #@25
    :goto_0
    if-ge v4, v5, :cond_3

    #@27
    aget-object v3, p3, v4

    #@29
    .line 4402
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v6

    #@2d
    .line 4403
    const/16 v7, 0x40

    #@2f
    .line 4402
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@32
    move-result-object v2

    #@33
    .line 4404
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 4412
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@3d
    .line 4413
    const/16 v7, -0x7d1

    #@3f
    .line 4412
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@42
    .line 4400
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0

    #@45
    .line 4415
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_1

    #@4b
    .line 4422
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@4d
    .line 4423
    const/16 v7, -0x7d1

    #@4f
    .line 4422
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    goto :goto_1

    #@53
    .line 4437
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@54
    .line 4438
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PFTBT"

    #@57
    new-instance v7, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v8, "Requested package "

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    const-string/jumbo v8, " not found; ignoring"

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    goto :goto_1

    #@76
    .line 4425
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@78
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_2

    #@7e
    .line 4432
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@80
    .line 4433
    const/16 v7, -0x7d1

    #@82
    .line 4432
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@85
    goto :goto_1

    #@86
    .line 4436
    :cond_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@8b
    goto :goto_1

    #@8c
    .line 4390
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
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
    .line 4713
    if-eqz p1, :cond_1

    #@5
    .line 4714
    aget-object v2, p1, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4715
    aget-object v1, p1, v3

    #@b
    .line 4716
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    #@d
    .line 4718
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 4723
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 4724
    aget-object v1, p1, v5

    #@16
    .line 4725
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    #@18
    .line 4727
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 4712
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    #@1c
    .line 4719
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@1d
    .line 4720
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    #@20
    const-string/jumbo v3, "Unable to close pipe!"

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0

    #@27
    .line 4728
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@28
    .line 4729
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
    .locals 37

    #@0
    .prologue
    .line 4450
    const/16 v17, 0x0

    #@2
    .line 4453
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v32, 0x0

    #@4
    .line 4455
    .local v32, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    #@6
    .line 4456
    .local v8, "backoff":J
    const/4 v10, 0x0

    #@7
    .line 4459
    .local v10, "backupRunStatus":I
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b
    move-object/from16 v33, v0

    #@d
    move-object/from16 v0, v33

    #@f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@11
    move/from16 v33, v0

    #@13
    if-eqz v33, :cond_2

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19
    move-object/from16 v33, v0

    #@1b
    move-object/from16 v0, v33

    #@1d
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@1f
    move/from16 v33, v0

    #@21
    if-eqz v33, :cond_2

    #@23
    .line 4470
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    move-object/from16 v33, v0

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d
    move-object/from16 v34, v0

    #@2f
    move-object/from16 v0, v34

    #@31
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@33
    move-object/from16 v34, v0

    #@35
    invoke-static/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@38
    move-result-object v25

    #@39
    .line 4471
    .local v25, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v25, :cond_5

    #@3b
    .line 4472
    const-string/jumbo v33, "PFTBT"

    #@3e
    const-string/jumbo v34, "Transport not present; full data backup not performed"

    #@41
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@44
    .line 4473
    const/16 v10, -0x3e8

    #@46
    .line 4685
    const-string/jumbo v33, "PFTBT"

    #@49
    new-instance v34, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v35, "Full backup completed with status: "

    #@51
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v34

    #@55
    move-object/from16 v0, v34

    #@57
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v34

    #@5b
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v34

    #@5f
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 4687
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@66
    move-object/from16 v33, v0

    #@68
    move-object/from16 v0, v33

    #@6a
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@6d
    .line 4689
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v32

    #@71
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@74
    .line 4690
    move-object/from16 v0, p0

    #@76
    move-object/from16 v1, v17

    #@78
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@7b
    .line 4692
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@7f
    move-object/from16 v33, v0

    #@81
    if-eqz v33, :cond_0

    #@83
    .line 4693
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@87
    move-object/from16 v33, v0

    #@89
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@8c
    .line 4696
    :cond_0
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@90
    move-object/from16 v33, v0

    #@92
    move-object/from16 v0, v33

    #@94
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@96
    move-object/from16 v34, v0

    #@98
    monitor-enter v34

    #@99
    .line 4697
    :try_start_1
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9d
    move-object/from16 v33, v0

    #@9f
    const/16 v35, 0x0

    #@a1
    move-object/from16 v0, v35

    #@a3
    move-object/from16 v1, v33

    #@a5
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a7
    monitor-exit v34

    #@a8
    .line 4700
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@ac
    move-object/from16 v33, v0

    #@ae
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@b1
    .line 4704
    move-object/from16 v0, p0

    #@b3
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@b5
    move/from16 v33, v0

    #@b7
    if-eqz v33, :cond_1

    #@b9
    .line 4705
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@bd
    move-object/from16 v33, v0

    #@bf
    move-object/from16 v0, v33

    #@c1
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@c4
    .line 4707
    :cond_1
    const-string/jumbo v33, "BackupManagerService"

    #@c7
    const-string/jumbo v34, "Full data backup pass finished."

    #@ca
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 4708
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d1
    move-object/from16 v33, v0

    #@d3
    move-object/from16 v0, v33

    #@d5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@d7
    move-object/from16 v33, v0

    #@d9
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@dc
    .line 4474
    return-void

    #@dd
    .line 4462
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string/jumbo v33, "PFTBT"

    #@e0
    new-instance v34, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v35, "full backup requested but e="

    #@e8
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v34

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f0
    move-object/from16 v35, v0

    #@f2
    move-object/from16 v0, v35

    #@f4
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@f6
    move/from16 v35, v0

    #@f8
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v34

    #@fc
    .line 4463
    const-string/jumbo v35, " p="

    #@ff
    .line 4462
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v34

    #@103
    .line 4463
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@107
    move-object/from16 v35, v0

    #@109
    move-object/from16 v0, v35

    #@10b
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@10d
    move/from16 v35, v0

    #@10f
    .line 4462
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@112
    move-result-object v34

    #@113
    .line 4463
    const-string/jumbo v35, "; ignoring"

    #@116
    .line 4462
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v34

    #@11a
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v34

    #@11e
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 4465
    const/16 v33, 0x0

    #@123
    move/from16 v0, v33

    #@125
    move-object/from16 v1, p0

    #@127
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@129
    .line 4466
    const/16 v10, -0x7d1

    #@12b
    .line 4685
    const-string/jumbo v33, "PFTBT"

    #@12e
    new-instance v34, Ljava/lang/StringBuilder;

    #@130
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v35, "Full backup completed with status: "

    #@136
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v34

    #@13a
    move-object/from16 v0, v34

    #@13c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v34

    #@140
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v34

    #@144
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 4687
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@14b
    move-object/from16 v33, v0

    #@14d
    move-object/from16 v0, v33

    #@14f
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@152
    .line 4689
    move-object/from16 v0, p0

    #@154
    move-object/from16 v1, v32

    #@156
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@159
    .line 4690
    move-object/from16 v0, p0

    #@15b
    move-object/from16 v1, v17

    #@15d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@160
    .line 4692
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@164
    move-object/from16 v33, v0

    #@166
    if-eqz v33, :cond_3

    #@168
    .line 4693
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@16c
    move-object/from16 v33, v0

    #@16e
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@171
    .line 4696
    :cond_3
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@175
    move-object/from16 v33, v0

    #@177
    move-object/from16 v0, v33

    #@179
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@17b
    move-object/from16 v34, v0

    #@17d
    monitor-enter v34

    #@17e
    .line 4697
    :try_start_3
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@182
    move-object/from16 v33, v0

    #@184
    const/16 v35, 0x0

    #@186
    move-object/from16 v0, v35

    #@188
    move-object/from16 v1, v33

    #@18a
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18c
    monitor-exit v34

    #@18d
    .line 4700
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@191
    move-object/from16 v33, v0

    #@193
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@196
    .line 4704
    move-object/from16 v0, p0

    #@198
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@19a
    move/from16 v33, v0

    #@19c
    if-eqz v33, :cond_4

    #@19e
    .line 4705
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a2
    move-object/from16 v33, v0

    #@1a4
    move-object/from16 v0, v33

    #@1a6
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@1a9
    .line 4707
    :cond_4
    const-string/jumbo v33, "BackupManagerService"

    #@1ac
    const-string/jumbo v34, "Full data backup pass finished."

    #@1af
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b2
    .line 4708
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b6
    move-object/from16 v33, v0

    #@1b8
    move-object/from16 v0, v33

    #@1ba
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1bc
    move-object/from16 v33, v0

    #@1be
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c1
    .line 4467
    return-void

    #@1c2
    .line 4696
    :catchall_0
    move-exception v33

    #@1c3
    monitor-exit v34

    #@1c4
    throw v33

    #@1c5
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1
    move-exception v33

    #@1c6
    monitor-exit v34

    #@1c7
    throw v33

    #@1c8
    .line 4478
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1cc
    move-object/from16 v33, v0

    #@1ce
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@1d1
    move-result v6

    #@1d2
    .line 4479
    .local v6, "N":I
    const/16 v33, 0x2000

    #@1d4
    move/from16 v0, v33

    #@1d6
    new-array v13, v0, [B

    #@1d8
    .line 4480
    .local v13, "buffer":[B
    const/16 v20, 0x0

    #@1da
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    #@1dc
    if-ge v0, v6, :cond_1d

    #@1de
    .line 4481
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1e2
    move-object/from16 v33, v0

    #@1e4
    move-object/from16 v0, v33

    #@1e6
    move/from16 v1, v20

    #@1e8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1eb
    move-result-object v14

    #@1ec
    check-cast v14, Landroid/content/pm/PackageInfo;

    #@1ee
    .line 4482
    .local v14, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1f0
    move-object/from16 v24, v0

    #@1f2
    .line 4484
    .local v24, "packageName":Ljava/lang/String;
    const-string/jumbo v33, "PFTBT"

    #@1f5
    new-instance v34, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v35, "Initiating full-data transport backup of "

    #@1fd
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v34

    #@201
    move-object/from16 v0, v34

    #@203
    move-object/from16 v1, v24

    #@205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v34

    #@209
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v34

    #@20d
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 4486
    const/16 v33, 0xb18

    #@212
    move/from16 v0, v33

    #@214
    move-object/from16 v1, v24

    #@216
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@219
    .line 4488
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@21c
    move-result-object v32

    #@21d
    .line 4491
    .local v32, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@21f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    #@221
    move/from16 v33, v0

    #@223
    if-eqz v33, :cond_d

    #@225
    const/16 v19, 0x1

    #@227
    .line 4493
    .local v19, "flags":I
    :goto_1
    const/16 v33, 0x0

    #@229
    aget-object v33, v32, v33

    #@22b
    .line 4492
    move-object/from16 v0, v25

    #@22d
    move-object/from16 v1, v33

    #@22f
    move/from16 v2, v19

    #@231
    invoke-interface {v0, v14, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    #@234
    move-result v7

    #@235
    .line 4494
    .local v7, "backupPackageStatus":I
    if-nez v7, :cond_a

    #@237
    .line 4497
    const/16 v33, 0x0

    #@239
    aget-object v33, v32, v33

    #@23b
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V

    #@23e
    .line 4498
    const/16 v33, 0x0

    #@240
    const/16 v34, 0x0

    #@242
    aput-object v33, v32, v34

    #@244
    .line 4501
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@247
    move-result-object v17

    #@248
    .line 4503
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    #@24a
    const/16 v33, 0x1

    #@24c
    aget-object v33, v17, v33

    #@24e
    move-object/from16 v0, p0

    #@250
    move-object/from16 v1, v33

    #@252
    move-object/from16 v2, v25

    #@254
    invoke-direct {v11, v0, v1, v14, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V

    #@257
    .line 4506
    .local v11, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v33, 0x1

    #@259
    aget-object v33, v17, v33

    #@25b
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V

    #@25e
    .line 4507
    const/16 v33, 0x0

    #@260
    const/16 v34, 0x1

    #@262
    aput-object v33, v17, v34

    #@264
    .line 4511
    new-instance v33, Ljava/lang/Thread;

    #@266
    const-string/jumbo v34, "package-backup-bridge"

    #@269
    move-object/from16 v0, v33

    #@26b
    move-object/from16 v1, v34

    #@26d
    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@270
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->start()V

    #@273
    .line 4516
    new-instance v21, Ljava/io/FileInputStream;

    #@275
    .line 4517
    const/16 v33, 0x0

    #@277
    aget-object v33, v17, v33

    #@279
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@27c
    move-result-object v33

    #@27d
    .line 4516
    move-object/from16 v0, v21

    #@27f
    move-object/from16 v1, v33

    #@281
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@284
    .line 4518
    .local v21, "in":Ljava/io/FileInputStream;
    new-instance v23, Ljava/io/FileOutputStream;

    #@286
    .line 4519
    const/16 v33, 0x1

    #@288
    aget-object v33, v32, v33

    #@28a
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@28d
    move-result-object v33

    #@28e
    .line 4518
    move-object/from16 v0, v23

    #@290
    move-object/from16 v1, v33

    #@292
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@295
    .line 4520
    .local v23, "out":Ljava/io/FileOutputStream;
    const-wide/16 v30, 0x0

    #@297
    .line 4521
    .local v30, "totalRead":J
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    #@29a
    move-result-wide v26

    #@29b
    .line 4523
    .local v26, "preflightResult":J
    const-wide/16 v34, 0x0

    #@29d
    cmp-long v33, v26, v34

    #@29f
    if-gez v33, :cond_e

    #@2a1
    .line 4529
    move-wide/from16 v0, v26

    #@2a3
    long-to-int v7, v0

    #@2a4
    .line 4567
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a8
    move-object/from16 v33, v0

    #@2aa
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2ad
    move-result v33

    #@2ae
    if-nez v33, :cond_14

    #@2b0
    .line 4568
    const/16 v7, -0x3e8

    #@2b2
    .line 4569
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    #@2b5
    .line 4590
    :cond_7
    :goto_3
    if-nez v7, :cond_8

    #@2b7
    .line 4592
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    #@2ba
    move-result v12

    #@2bb
    .line 4593
    .local v12, "backupRunnerResult":I
    if-eqz v12, :cond_8

    #@2bd
    .line 4596
    move v7, v12

    #@2be
    .line 4609
    .end local v12    # "backupRunnerResult":I
    :cond_8
    if-eqz v7, :cond_9

    #@2c0
    .line 4610
    const-string/jumbo v33, "PFTBT"

    #@2c3
    new-instance v34, Ljava/lang/StringBuilder;

    #@2c5
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@2c8
    const-string/jumbo v35, "Error "

    #@2cb
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v34

    #@2cf
    move-object/from16 v0, v34

    #@2d1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v34

    #@2d5
    const-string/jumbo v35, " backing up "

    #@2d8
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v34

    #@2dc
    move-object/from16 v0, v34

    #@2de
    move-object/from16 v1, v24

    #@2e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v34

    #@2e4
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v34

    #@2e8
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2eb
    .line 4616
    :cond_9
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    #@2ee
    move-result-wide v8

    #@2ef
    .line 4618
    const-string/jumbo v33, "PFTBT"

    #@2f2
    new-instance v34, Ljava/lang/StringBuilder;

    #@2f4
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@2f7
    const-string/jumbo v35, "Transport suggested backoff="

    #@2fa
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v34

    #@2fe
    move-object/from16 v0, v34

    #@300
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@303
    move-result-object v34

    #@304
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@307
    move-result-object v34

    #@308
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30b
    .line 4625
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "preflightResult":J
    .end local v30    # "totalRead":J
    :cond_a
    move-object/from16 v0, p0

    #@30d
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@30f
    move/from16 v33, v0

    #@311
    if-eqz v33, :cond_b

    #@313
    .line 4626
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@317
    move-object/from16 v33, v0

    #@319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31c
    move-result-wide v34

    #@31d
    move-object/from16 v0, v33

    #@31f
    move-object/from16 v1, v24

    #@321
    move-wide/from16 v2, v34

    #@323
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    #@326
    .line 4629
    :cond_b
    const/16 v33, -0x3ea

    #@328
    move/from16 v0, v33

    #@32a
    if-ne v7, v0, :cond_15

    #@32c
    .line 4630
    move-object/from16 v0, p0

    #@32e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@330
    move-object/from16 v33, v0

    #@332
    .line 4631
    const/16 v34, -0x3ea

    #@334
    .line 4630
    move-object/from16 v0, v33

    #@336
    move-object/from16 v1, v24

    #@338
    move/from16 v2, v34

    #@33a
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@33d
    .line 4633
    const-string/jumbo v33, "PFTBT"

    #@340
    new-instance v34, Ljava/lang/StringBuilder;

    #@342
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v35, "Transport rejected backup of "

    #@348
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v34

    #@34c
    move-object/from16 v0, v34

    #@34e
    move-object/from16 v1, v24

    #@350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v34

    #@354
    .line 4634
    const-string/jumbo v35, ", skipping"

    #@357
    .line 4633
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v34

    #@35b
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35e
    move-result-object v34

    #@35f
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@362
    .line 4636
    const/16 v33, 0x2

    #@364
    move/from16 v0, v33

    #@366
    new-array v0, v0, [Ljava/lang/Object;

    #@368
    move-object/from16 v33, v0

    #@36a
    const/16 v34, 0x0

    #@36c
    aput-object v24, v33, v34

    #@36e
    .line 4637
    const-string/jumbo v34, "transport rejected"

    #@371
    const/16 v35, 0x1

    #@373
    aput-object v34, v33, v35

    #@375
    .line 4636
    const/16 v34, 0xb19

    #@377
    move/from16 v0, v34

    #@379
    move-object/from16 v1, v33

    #@37b
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@37e
    .line 4670
    :goto_4
    move-object/from16 v0, p0

    #@380
    move-object/from16 v1, v32

    #@382
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@385
    .line 4671
    move-object/from16 v0, p0

    #@387
    move-object/from16 v1, v17

    #@389
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@38c
    .line 4672
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38e
    move-object/from16 v33, v0

    #@390
    if-eqz v33, :cond_c

    #@392
    .line 4673
    const-string/jumbo v33, "PFTBT"

    #@395
    new-instance v34, Ljava/lang/StringBuilder;

    #@397
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@39a
    const-string/jumbo v35, "Unbinding agent in "

    #@39d
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v34

    #@3a1
    move-object/from16 v0, v34

    #@3a3
    move-object/from16 v1, v24

    #@3a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v34

    #@3a9
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ac
    move-result-object v34

    #@3ad
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3b0
    .line 4674
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3b4
    move-object/from16 v33, v0

    #@3b6
    new-instance v34, Ljava/lang/StringBuilder;

    #@3b8
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@3bb
    const-string/jumbo v35, "unbinding "

    #@3be
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v34

    #@3c2
    move-object/from16 v0, v34

    #@3c4
    move-object/from16 v1, v24

    #@3c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v34

    #@3ca
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3cd
    move-result-object v34

    #@3ce
    invoke-virtual/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3d1
    .line 4676
    :try_start_5
    move-object/from16 v0, p0

    #@3d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3d5
    move-object/from16 v33, v0

    #@3d7
    invoke-static/range {v33 .. v33}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@3da
    move-result-object v33

    #@3db
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3dd
    move-object/from16 v34, v0

    #@3df
    invoke-interface/range {v33 .. v34}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@3e2
    .line 4480
    :cond_c
    :goto_5
    add-int/lit8 v20, v20, 0x1

    #@3e4
    goto/16 :goto_0

    #@3e6
    .line 4491
    .end local v7    # "backupPackageStatus":I
    .end local v19    # "flags":I
    :cond_d
    const/16 v19, 0x0

    #@3e8
    .restart local v19    # "flags":I
    goto/16 :goto_1

    #@3ea
    .line 4531
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v26    # "preflightResult":J
    .restart local v30    # "totalRead":J
    :cond_e
    const/16 v22, 0x0

    #@3ec
    .line 4533
    .local v22, "nRead":I
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    #@3ee
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3f0
    move-object/from16 v33, v0

    #@3f2
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3f5
    move-result v33

    #@3f6
    if-nez v33, :cond_12

    #@3f8
    .line 4535
    const-string/jumbo v33, "PFTBT"

    #@3fb
    const-string/jumbo v34, "Full backup task told to stop"

    #@3fe
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@401
    .line 4556
    :cond_f
    const/16 v33, -0x3ed

    #@403
    move/from16 v0, v33

    #@405
    if-ne v7, v0, :cond_6

    #@407
    .line 4557
    const/16 v33, 0x1

    #@409
    move-object/from16 v0, v25

    #@40b
    move-object/from16 v1, v24

    #@40d
    move/from16 v2, v33

    #@40f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    #@412
    move-result-wide v28

    #@413
    .line 4558
    .local v28, "quota":J
    const-string/jumbo v33, "PFTBT"

    #@416
    new-instance v34, Ljava/lang/StringBuilder;

    #@418
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@41b
    const-string/jumbo v35, "Package hit quota limit in-flight "

    #@41e
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@421
    move-result-object v34

    #@422
    move-object/from16 v0, v34

    #@424
    move-object/from16 v1, v24

    #@426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@429
    move-result-object v34

    #@42a
    .line 4559
    const-string/jumbo v35, ": "

    #@42d
    .line 4558
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@430
    move-result-object v34

    #@431
    move-object/from16 v0, v34

    #@433
    move-wide/from16 v1, v30

    #@435
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@438
    move-result-object v34

    #@439
    .line 4559
    const-string/jumbo v35, " of "

    #@43c
    .line 4558
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43f
    move-result-object v34

    #@440
    move-object/from16 v0, v34

    #@442
    move-wide/from16 v1, v28

    #@444
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@447
    move-result-object v34

    #@448
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44b
    move-result-object v34

    #@44c
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44f
    .line 4560
    move-wide/from16 v0, v30

    #@451
    move-wide/from16 v2, v28

    #@453
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@456
    goto/16 :goto_2

    #@458
    .line 4680
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v22    # "nRead":I
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v26    # "preflightResult":J
    .end local v28    # "quota":J
    .end local v30    # "totalRead":J
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v16

    #@459
    .line 4681
    .local v16, "e":Ljava/lang/Exception;
    const/16 v10, -0x3e8

    #@45b
    .line 4682
    :try_start_7
    const-string/jumbo v33, "PFTBT"

    #@45e
    const-string/jumbo v34, "Exception trying full transport backup"

    #@461
    move-object/from16 v0, v33

    #@463
    move-object/from16 v1, v34

    #@465
    move-object/from16 v2, v16

    #@467
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@46a
    .line 4685
    const-string/jumbo v33, "PFTBT"

    #@46d
    new-instance v34, Ljava/lang/StringBuilder;

    #@46f
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@472
    const-string/jumbo v35, "Full backup completed with status: "

    #@475
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@478
    move-result-object v34

    #@479
    move-object/from16 v0, v34

    #@47b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v34

    #@47f
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@482
    move-result-object v34

    #@483
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@486
    .line 4687
    move-object/from16 v0, p0

    #@488
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@48a
    move-object/from16 v33, v0

    #@48c
    move-object/from16 v0, v33

    #@48e
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@491
    .line 4689
    move-object/from16 v0, p0

    #@493
    move-object/from16 v1, v32

    #@495
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@498
    .line 4690
    move-object/from16 v0, p0

    #@49a
    move-object/from16 v1, v17

    #@49c
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@49f
    .line 4692
    move-object/from16 v0, p0

    #@4a1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@4a3
    move-object/from16 v33, v0

    #@4a5
    if-eqz v33, :cond_10

    #@4a7
    .line 4693
    move-object/from16 v0, p0

    #@4a9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@4ab
    move-object/from16 v33, v0

    #@4ad
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@4b0
    .line 4696
    :cond_10
    move-object/from16 v0, p0

    #@4b2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4b4
    move-object/from16 v33, v0

    #@4b6
    move-object/from16 v0, v33

    #@4b8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4ba
    move-object/from16 v34, v0

    #@4bc
    monitor-enter v34

    #@4bd
    .line 4697
    :try_start_8
    move-object/from16 v0, p0

    #@4bf
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4c1
    move-object/from16 v33, v0

    #@4c3
    const/16 v35, 0x0

    #@4c5
    move-object/from16 v0, v35

    #@4c7
    move-object/from16 v1, v33

    #@4c9
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@4cb
    monitor-exit v34

    #@4cc
    .line 4700
    move-object/from16 v0, p0

    #@4ce
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@4d0
    move-object/from16 v33, v0

    #@4d2
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@4d5
    .line 4704
    move-object/from16 v0, p0

    #@4d7
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@4d9
    move/from16 v33, v0

    #@4db
    if-eqz v33, :cond_11

    #@4dd
    .line 4705
    move-object/from16 v0, p0

    #@4df
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4e1
    move-object/from16 v33, v0

    #@4e3
    move-object/from16 v0, v33

    #@4e5
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@4e8
    .line 4707
    :cond_11
    const-string/jumbo v33, "BackupManagerService"

    #@4eb
    const-string/jumbo v34, "Full data backup pass finished."

    #@4ee
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4f1
    .line 4708
    move-object/from16 v0, p0

    #@4f3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4f5
    move-object/from16 v33, v0

    #@4f7
    move-object/from16 v0, v33

    #@4f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@4fb
    move-object/from16 v33, v0

    #@4fd
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@500
    .line 4448
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_7
    return-void

    #@501
    .line 4539
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v21    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "nRead":I
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v26    # "preflightResult":J
    .restart local v30    # "totalRead":J
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_12
    :try_start_9
    move-object/from16 v0, v21

    #@503
    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    #@506
    move-result v22

    #@507
    .line 4543
    if-lez v22, :cond_13

    #@509
    .line 4544
    const/16 v33, 0x0

    #@50b
    move-object/from16 v0, v23

    #@50d
    move/from16 v1, v33

    #@50f
    move/from16 v2, v22

    #@511
    invoke-virtual {v0, v13, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    #@514
    .line 4545
    move-object/from16 v0, v25

    #@516
    move/from16 v1, v22

    #@518
    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    #@51b
    move-result v7

    #@51c
    .line 4546
    move/from16 v0, v22

    #@51e
    int-to-long v0, v0

    #@51f
    move-wide/from16 v34, v0

    #@521
    add-long v30, v30, v34

    #@523
    .line 4547
    move-object/from16 v0, p0

    #@525
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@527
    move-object/from16 v33, v0

    #@529
    if-eqz v33, :cond_13

    #@52b
    const-wide/16 v34, 0x0

    #@52d
    cmp-long v33, v26, v34

    #@52f
    if-lez v33, :cond_13

    #@531
    .line 4548
    move-object/from16 v0, p0

    #@533
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@535
    move-object/from16 v33, v0

    #@537
    .line 4549
    new-instance v34, Landroid/app/backup/BackupProgress;

    #@539
    move-object/from16 v0, v34

    #@53b
    move-wide/from16 v1, v26

    #@53d
    move-wide/from16 v3, v30

    #@53f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    #@542
    .line 4548
    move-object/from16 v0, v33

    #@544
    move-object/from16 v1, v24

    #@546
    move-object/from16 v2, v34

    #@548
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    #@54b
    .line 4552
    :cond_13
    if-lez v22, :cond_f

    #@54d
    .line 4553
    if-nez v7, :cond_f

    #@54f
    goto/16 :goto_6

    #@551
    .line 4575
    .end local v22    # "nRead":I
    :cond_14
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@554
    move-result v18

    #@555
    .line 4576
    .local v18, "finishResult":I
    if-nez v7, :cond_7

    #@557
    .line 4577
    move/from16 v7, v18

    #@559
    goto/16 :goto_3

    #@55b
    .line 4639
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "finishResult":I
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "preflightResult":J
    .end local v30    # "totalRead":J
    :cond_15
    const/16 v33, -0x3ed

    #@55d
    move/from16 v0, v33

    #@55f
    if-ne v7, v0, :cond_18

    #@561
    .line 4640
    move-object/from16 v0, p0

    #@563
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@565
    move-object/from16 v33, v0

    #@567
    .line 4641
    const/16 v34, -0x3ed

    #@569
    .line 4640
    move-object/from16 v0, v33

    #@56b
    move-object/from16 v1, v24

    #@56d
    move/from16 v2, v34

    #@56f
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@572
    .line 4643
    const-string/jumbo v33, "PFTBT"

    #@575
    new-instance v34, Ljava/lang/StringBuilder;

    #@577
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@57a
    const-string/jumbo v35, "Transport quota exceeded for package: "

    #@57d
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@580
    move-result-object v34

    #@581
    move-object/from16 v0, v34

    #@583
    move-object/from16 v1, v24

    #@585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@588
    move-result-object v34

    #@589
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58c
    move-result-object v34

    #@58d
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@590
    .line 4644
    const/16 v33, 0xb1d

    #@592
    move/from16 v0, v33

    #@594
    move-object/from16 v1, v24

    #@596
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@599
    goto/16 :goto_4

    #@59b
    .line 4683
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v33

    #@59c
    .line 4685
    const-string/jumbo v34, "PFTBT"

    #@59f
    new-instance v35, Ljava/lang/StringBuilder;

    #@5a1
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@5a4
    const-string/jumbo v36, "Full backup completed with status: "

    #@5a7
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5aa
    move-result-object v35

    #@5ab
    move-object/from16 v0, v35

    #@5ad
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v35

    #@5b1
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b4
    move-result-object v35

    #@5b5
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b8
    .line 4687
    move-object/from16 v0, p0

    #@5ba
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@5bc
    move-object/from16 v34, v0

    #@5be
    move-object/from16 v0, v34

    #@5c0
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@5c3
    .line 4689
    move-object/from16 v0, p0

    #@5c5
    move-object/from16 v1, v32

    #@5c7
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@5ca
    .line 4690
    move-object/from16 v0, p0

    #@5cc
    move-object/from16 v1, v17

    #@5ce
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@5d1
    .line 4692
    move-object/from16 v0, p0

    #@5d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@5d5
    move-object/from16 v34, v0

    #@5d7
    if-eqz v34, :cond_16

    #@5d9
    .line 4693
    move-object/from16 v0, p0

    #@5db
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@5dd
    move-object/from16 v34, v0

    #@5df
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@5e2
    .line 4696
    :cond_16
    move-object/from16 v0, p0

    #@5e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5e6
    move-object/from16 v34, v0

    #@5e8
    move-object/from16 v0, v34

    #@5ea
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@5ec
    move-object/from16 v34, v0

    #@5ee
    monitor-enter v34

    #@5ef
    .line 4697
    :try_start_a
    move-object/from16 v0, p0

    #@5f1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5f3
    move-object/from16 v35, v0

    #@5f5
    const/16 v36, 0x0

    #@5f7
    move-object/from16 v0, v36

    #@5f9
    move-object/from16 v1, v35

    #@5fb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    #@5fd
    monitor-exit v34

    #@5fe
    .line 4700
    move-object/from16 v0, p0

    #@600
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@602
    move-object/from16 v34, v0

    #@604
    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@607
    .line 4704
    move-object/from16 v0, p0

    #@609
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@60b
    move/from16 v34, v0

    #@60d
    if-eqz v34, :cond_17

    #@60f
    .line 4705
    move-object/from16 v0, p0

    #@611
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@613
    move-object/from16 v34, v0

    #@615
    move-object/from16 v0, v34

    #@617
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@61a
    .line 4707
    :cond_17
    const-string/jumbo v34, "BackupManagerService"

    #@61d
    const-string/jumbo v35, "Full data backup pass finished."

    #@620
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@623
    .line 4708
    move-object/from16 v0, p0

    #@625
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@627
    move-object/from16 v34, v0

    #@629
    move-object/from16 v0, v34

    #@62b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@62d
    move-object/from16 v34, v0

    #@62f
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    #@632
    .line 4683
    throw v33

    #@633
    .line 4648
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_18
    const/16 v33, -0x3eb

    #@635
    move/from16 v0, v33

    #@637
    if-ne v7, v0, :cond_19

    #@639
    .line 4649
    :try_start_b
    move-object/from16 v0, p0

    #@63b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@63d
    move-object/from16 v33, v0

    #@63f
    .line 4650
    const/16 v34, -0x3eb

    #@641
    .line 4649
    move-object/from16 v0, v33

    #@643
    move-object/from16 v1, v24

    #@645
    move/from16 v2, v34

    #@647
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@64a
    .line 4651
    const-string/jumbo v33, "PFTBT"

    #@64d
    new-instance v34, Ljava/lang/StringBuilder;

    #@64f
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@652
    const-string/jumbo v35, "Application failure for package: "

    #@655
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@658
    move-result-object v34

    #@659
    move-object/from16 v0, v34

    #@65b
    move-object/from16 v1, v24

    #@65d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@660
    move-result-object v34

    #@661
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@664
    move-result-object v34

    #@665
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@668
    .line 4652
    const/16 v33, 0xb07

    #@66a
    move/from16 v0, v33

    #@66c
    move-object/from16 v1, v24

    #@66e
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@671
    .line 4653
    move-object/from16 v0, p0

    #@673
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@675
    move-object/from16 v33, v0

    #@677
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@679
    move-object/from16 v34, v0

    #@67b
    invoke-virtual/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@67e
    goto/16 :goto_4

    #@680
    .line 4655
    :cond_19
    if-eqz v7, :cond_1c

    #@682
    .line 4656
    move-object/from16 v0, p0

    #@684
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@686
    move-object/from16 v33, v0

    #@688
    .line 4657
    const/16 v34, -0x3e8

    #@68a
    .line 4656
    move-object/from16 v0, v33

    #@68c
    move-object/from16 v1, v24

    #@68e
    move/from16 v2, v34

    #@690
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@693
    .line 4658
    const-string/jumbo v33, "PFTBT"

    #@696
    new-instance v34, Ljava/lang/StringBuilder;

    #@698
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@69b
    const-string/jumbo v35, "Transport failed; aborting backup: "

    #@69e
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a1
    move-result-object v34

    #@6a2
    move-object/from16 v0, v34

    #@6a4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a7
    move-result-object v34

    #@6a8
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ab
    move-result-object v34

    #@6ac
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6af
    .line 4659
    const/16 v33, 0x0

    #@6b1
    move/from16 v0, v33

    #@6b3
    new-array v0, v0, [Ljava/lang/Object;

    #@6b5
    move-object/from16 v33, v0

    #@6b7
    const/16 v34, 0xb1a

    #@6b9
    move/from16 v0, v34

    #@6bb
    move-object/from16 v1, v33

    #@6bd
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@6c0
    .line 4661
    const/16 v10, -0x3e8

    #@6c2
    .line 4685
    const-string/jumbo v33, "PFTBT"

    #@6c5
    new-instance v34, Ljava/lang/StringBuilder;

    #@6c7
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@6ca
    const-string/jumbo v35, "Full backup completed with status: "

    #@6cd
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d0
    move-result-object v34

    #@6d1
    move-object/from16 v0, v34

    #@6d3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v34

    #@6d7
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6da
    move-result-object v34

    #@6db
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6de
    .line 4687
    move-object/from16 v0, p0

    #@6e0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@6e2
    move-object/from16 v33, v0

    #@6e4
    move-object/from16 v0, v33

    #@6e6
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@6e9
    .line 4689
    move-object/from16 v0, p0

    #@6eb
    move-object/from16 v1, v32

    #@6ed
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@6f0
    .line 4690
    move-object/from16 v0, p0

    #@6f2
    move-object/from16 v1, v17

    #@6f4
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@6f7
    .line 4692
    move-object/from16 v0, p0

    #@6f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@6fb
    move-object/from16 v33, v0

    #@6fd
    if-eqz v33, :cond_1a

    #@6ff
    .line 4693
    move-object/from16 v0, p0

    #@701
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@703
    move-object/from16 v33, v0

    #@705
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@708
    .line 4696
    :cond_1a
    move-object/from16 v0, p0

    #@70a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@70c
    move-object/from16 v33, v0

    #@70e
    move-object/from16 v0, v33

    #@710
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@712
    move-object/from16 v34, v0

    #@714
    monitor-enter v34

    #@715
    .line 4697
    :try_start_c
    move-object/from16 v0, p0

    #@717
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@719
    move-object/from16 v33, v0

    #@71b
    const/16 v35, 0x0

    #@71d
    move-object/from16 v0, v35

    #@71f
    move-object/from16 v1, v33

    #@721
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@723
    monitor-exit v34

    #@724
    .line 4700
    move-object/from16 v0, p0

    #@726
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@728
    move-object/from16 v33, v0

    #@72a
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@72d
    .line 4704
    move-object/from16 v0, p0

    #@72f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@731
    move/from16 v33, v0

    #@733
    if-eqz v33, :cond_1b

    #@735
    .line 4705
    move-object/from16 v0, p0

    #@737
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@739
    move-object/from16 v33, v0

    #@73b
    move-object/from16 v0, v33

    #@73d
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@740
    .line 4707
    :cond_1b
    const-string/jumbo v33, "BackupManagerService"

    #@743
    const-string/jumbo v34, "Full data backup pass finished."

    #@746
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@749
    .line 4708
    move-object/from16 v0, p0

    #@74b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@74d
    move-object/from16 v33, v0

    #@74f
    move-object/from16 v0, v33

    #@751
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@753
    move-object/from16 v33, v0

    #@755
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@758
    .line 4662
    return-void

    #@759
    .line 4696
    :catchall_3
    move-exception v33

    #@75a
    monitor-exit v34

    #@75b
    throw v33

    #@75c
    .line 4665
    :cond_1c
    :try_start_d
    move-object/from16 v0, p0

    #@75e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@760
    move-object/from16 v33, v0

    #@762
    .line 4666
    const/16 v34, 0x0

    #@764
    .line 4665
    move-object/from16 v0, v33

    #@766
    move-object/from16 v1, v24

    #@768
    move/from16 v2, v34

    #@76a
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@76d
    .line 4667
    const/16 v33, 0xb1b

    #@76f
    move/from16 v0, v33

    #@771
    move-object/from16 v1, v24

    #@773
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@776
    .line 4668
    move-object/from16 v0, p0

    #@778
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@77a
    move-object/from16 v33, v0

    #@77c
    move-object/from16 v0, v33

    #@77e
    move-object/from16 v1, v24

    #@780
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@783
    goto/16 :goto_4

    #@785
    .line 4685
    .end local v7    # "backupPackageStatus":I
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v19    # "flags":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_1d
    const-string/jumbo v33, "PFTBT"

    #@788
    new-instance v34, Ljava/lang/StringBuilder;

    #@78a
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@78d
    const-string/jumbo v35, "Full backup completed with status: "

    #@790
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@793
    move-result-object v34

    #@794
    move-object/from16 v0, v34

    #@796
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@799
    move-result-object v34

    #@79a
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79d
    move-result-object v34

    #@79e
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a1
    .line 4687
    move-object/from16 v0, p0

    #@7a3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@7a5
    move-object/from16 v33, v0

    #@7a7
    move-object/from16 v0, v33

    #@7a9
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@7ac
    .line 4689
    move-object/from16 v0, p0

    #@7ae
    move-object/from16 v1, v32

    #@7b0
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@7b3
    .line 4690
    move-object/from16 v0, p0

    #@7b5
    move-object/from16 v1, v17

    #@7b7
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@7ba
    .line 4692
    move-object/from16 v0, p0

    #@7bc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@7be
    move-object/from16 v33, v0

    #@7c0
    if-eqz v33, :cond_1e

    #@7c2
    .line 4693
    move-object/from16 v0, p0

    #@7c4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@7c6
    move-object/from16 v33, v0

    #@7c8
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@7cb
    .line 4696
    :cond_1e
    move-object/from16 v0, p0

    #@7cd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7cf
    move-object/from16 v33, v0

    #@7d1
    move-object/from16 v0, v33

    #@7d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@7d5
    move-object/from16 v34, v0

    #@7d7
    monitor-enter v34

    #@7d8
    .line 4697
    :try_start_e
    move-object/from16 v0, p0

    #@7da
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7dc
    move-object/from16 v33, v0

    #@7de
    const/16 v35, 0x0

    #@7e0
    move-object/from16 v0, v35

    #@7e2
    move-object/from16 v1, v33

    #@7e4
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@7e6
    monitor-exit v34

    #@7e7
    .line 4700
    move-object/from16 v0, p0

    #@7e9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@7eb
    move-object/from16 v33, v0

    #@7ed
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@7f0
    .line 4704
    move-object/from16 v0, p0

    #@7f2
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@7f4
    move/from16 v33, v0

    #@7f6
    if-eqz v33, :cond_1f

    #@7f8
    .line 4705
    move-object/from16 v0, p0

    #@7fa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7fc
    move-object/from16 v33, v0

    #@7fe
    move-object/from16 v0, v33

    #@800
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@803
    .line 4707
    :cond_1f
    const-string/jumbo v33, "BackupManagerService"

    #@806
    const-string/jumbo v34, "Full data backup pass finished."

    #@809
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80c
    .line 4708
    move-object/from16 v0, p0

    #@80e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@810
    move-object/from16 v33, v0

    #@812
    move-object/from16 v0, v33

    #@814
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@816
    move-object/from16 v33, v0

    #@818
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@81b
    goto/16 :goto_7

    #@81d
    .line 4696
    :catchall_4
    move-exception v33

    #@81e
    monitor-exit v34

    #@81f
    throw v33

    #@820
    .end local v6    # "N":I
    .end local v13    # "buffer":[B
    .end local v20    # "i":I
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v16    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v33

    #@821
    monitor-exit v34

    #@822
    throw v33

    #@823
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v33

    #@824
    monitor-exit v34

    #@825
    throw v33

    #@826
    .line 4677
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v15

    #@827
    .local v15, "e":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    #@0
    .prologue
    .line 4444
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 4443
    return-void
.end method
