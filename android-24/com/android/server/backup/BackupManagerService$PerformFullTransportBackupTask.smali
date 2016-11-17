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
    .line 4367
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 4371
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@5
    .line 4372
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@7
    .line 4373
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@9
    .line 4374
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    const/4 v5, 0x1

    #@c
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@f
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@11
    .line 4375
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@13
    .line 4376
    new-instance v4, Ljava/util/ArrayList;

    #@15
    array-length v5, p3

    #@16
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1b
    .line 4377
    move-object/from16 v0, p7

    #@1d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@1f
    .line 4378
    move/from16 v0, p8

    #@21
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    #@23
    .line 4380
    const/4 v4, 0x0

    #@24
    array-length v5, p3

    #@25
    :goto_0
    if-ge v4, v5, :cond_3

    #@27
    aget-object v3, p3, v4

    #@29
    .line 4382
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v6

    #@2d
    .line 4383
    const/16 v7, 0x40

    #@2f
    .line 4382
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@32
    move-result-object v2

    #@33
    .line 4384
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 4392
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@3d
    .line 4393
    const/16 v7, -0x7d1

    #@3f
    .line 4392
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@42
    .line 4380
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0

    #@45
    .line 4395
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_1

    #@4b
    .line 4402
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@4d
    .line 4403
    const/16 v7, -0x7d1

    #@4f
    .line 4402
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    goto :goto_1

    #@53
    .line 4417
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@54
    .line 4418
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
    .line 4405
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
    .line 4412
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@80
    .line 4413
    const/16 v7, -0x7d1

    #@82
    .line 4412
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@85
    goto :goto_1

    #@86
    .line 4416
    :cond_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@8b
    goto :goto_1

    #@8c
    .line 4370
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
    .line 4686
    if-eqz p1, :cond_1

    #@5
    .line 4687
    aget-object v2, p1, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4688
    aget-object v1, p1, v3

    #@b
    .line 4689
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    #@d
    .line 4691
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 4696
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 4697
    aget-object v1, p1, v5

    #@16
    .line 4698
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    #@18
    .line 4700
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 4685
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    #@1c
    .line 4692
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@1d
    .line 4693
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    #@20
    const-string/jumbo v3, "Unable to close pipe!"

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0

    #@27
    .line 4701
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@28
    .line 4702
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
    .locals 36

    #@0
    .prologue
    .line 4430
    const/16 v16, 0x0

    #@2
    .line 4433
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v31, 0x0

    #@4
    .line 4435
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    #@6
    .line 4436
    .local v8, "backoff":J
    const/4 v10, 0x0

    #@7
    .line 4439
    .local v10, "backupRunStatus":I
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b
    move-object/from16 v32, v0

    #@d
    move-object/from16 v0, v32

    #@f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@11
    move/from16 v32, v0

    #@13
    if-eqz v32, :cond_2

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19
    move-object/from16 v32, v0

    #@1b
    move-object/from16 v0, v32

    #@1d
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@1f
    move/from16 v32, v0

    #@21
    if-eqz v32, :cond_2

    #@23
    .line 4450
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    move-object/from16 v32, v0

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d
    move-object/from16 v33, v0

    #@2f
    move-object/from16 v0, v33

    #@31
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@33
    move-object/from16 v33, v0

    #@35
    invoke-static/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@38
    move-result-object v30

    #@39
    .line 4451
    .local v30, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v30, :cond_5

    #@3b
    .line 4452
    const-string/jumbo v32, "PFTBT"

    #@3e
    const-string/jumbo v33, "Transport not present; full data backup not performed"

    #@41
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@44
    .line 4453
    const/16 v10, -0x3e8

    #@46
    .line 4658
    const-string/jumbo v32, "PFTBT"

    #@49
    new-instance v33, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v34, "Full backup completed with status: "

    #@51
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v33

    #@55
    move-object/from16 v0, v33

    #@57
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v33

    #@5b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v33

    #@5f
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 4660
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@66
    move-object/from16 v32, v0

    #@68
    move-object/from16 v0, v32

    #@6a
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@6d
    .line 4662
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v31

    #@71
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@74
    .line 4663
    move-object/from16 v0, p0

    #@76
    move-object/from16 v1, v16

    #@78
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@7b
    .line 4665
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@7f
    move-object/from16 v32, v0

    #@81
    if-eqz v32, :cond_0

    #@83
    .line 4666
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@87
    move-object/from16 v32, v0

    #@89
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@8c
    .line 4669
    :cond_0
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@90
    move-object/from16 v32, v0

    #@92
    move-object/from16 v0, v32

    #@94
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@96
    move-object/from16 v33, v0

    #@98
    monitor-enter v33

    #@99
    .line 4670
    :try_start_1
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9d
    move-object/from16 v32, v0

    #@9f
    const/16 v34, 0x0

    #@a1
    move-object/from16 v0, v34

    #@a3
    move-object/from16 v1, v32

    #@a5
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a7
    monitor-exit v33

    #@a8
    .line 4673
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@ac
    move-object/from16 v32, v0

    #@ae
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@b1
    .line 4677
    move-object/from16 v0, p0

    #@b3
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@b5
    move/from16 v32, v0

    #@b7
    if-eqz v32, :cond_1

    #@b9
    .line 4678
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@bd
    move-object/from16 v32, v0

    #@bf
    move-object/from16 v0, v32

    #@c1
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@c4
    .line 4680
    :cond_1
    const-string/jumbo v32, "BackupManagerService"

    #@c7
    const-string/jumbo v33, "Full data backup pass finished."

    #@ca
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 4681
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d1
    move-object/from16 v32, v0

    #@d3
    move-object/from16 v0, v32

    #@d5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@d7
    move-object/from16 v32, v0

    #@d9
    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    #@dc
    .line 4454
    return-void

    #@dd
    .line 4442
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string/jumbo v32, "PFTBT"

    #@e0
    new-instance v33, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v34, "full backup requested but e="

    #@e8
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v33

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f0
    move-object/from16 v34, v0

    #@f2
    move-object/from16 v0, v34

    #@f4
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@f6
    move/from16 v34, v0

    #@f8
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v33

    #@fc
    .line 4443
    const-string/jumbo v34, " p="

    #@ff
    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v33

    #@103
    .line 4443
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@107
    move-object/from16 v34, v0

    #@109
    move-object/from16 v0, v34

    #@10b
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@10d
    move/from16 v34, v0

    #@10f
    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@112
    move-result-object v33

    #@113
    .line 4443
    const-string/jumbo v34, "; ignoring"

    #@116
    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v33

    #@11a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v33

    #@11e
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 4445
    const/16 v32, 0x0

    #@123
    move/from16 v0, v32

    #@125
    move-object/from16 v1, p0

    #@127
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@129
    .line 4446
    const/16 v10, -0x7d1

    #@12b
    .line 4658
    const-string/jumbo v32, "PFTBT"

    #@12e
    new-instance v33, Ljava/lang/StringBuilder;

    #@130
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v34, "Full backup completed with status: "

    #@136
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v33

    #@13a
    move-object/from16 v0, v33

    #@13c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v33

    #@140
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v33

    #@144
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 4660
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@14b
    move-object/from16 v32, v0

    #@14d
    move-object/from16 v0, v32

    #@14f
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@152
    .line 4662
    move-object/from16 v0, p0

    #@154
    move-object/from16 v1, v31

    #@156
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@159
    .line 4663
    move-object/from16 v0, p0

    #@15b
    move-object/from16 v1, v16

    #@15d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@160
    .line 4665
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@164
    move-object/from16 v32, v0

    #@166
    if-eqz v32, :cond_3

    #@168
    .line 4666
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@16c
    move-object/from16 v32, v0

    #@16e
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@171
    .line 4669
    :cond_3
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@175
    move-object/from16 v32, v0

    #@177
    move-object/from16 v0, v32

    #@179
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@17b
    move-object/from16 v33, v0

    #@17d
    monitor-enter v33

    #@17e
    .line 4670
    :try_start_3
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@182
    move-object/from16 v32, v0

    #@184
    const/16 v34, 0x0

    #@186
    move-object/from16 v0, v34

    #@188
    move-object/from16 v1, v32

    #@18a
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18c
    monitor-exit v33

    #@18d
    .line 4673
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@191
    move-object/from16 v32, v0

    #@193
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@196
    .line 4677
    move-object/from16 v0, p0

    #@198
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@19a
    move/from16 v32, v0

    #@19c
    if-eqz v32, :cond_4

    #@19e
    .line 4678
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a2
    move-object/from16 v32, v0

    #@1a4
    move-object/from16 v0, v32

    #@1a6
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@1a9
    .line 4680
    :cond_4
    const-string/jumbo v32, "BackupManagerService"

    #@1ac
    const-string/jumbo v33, "Full data backup pass finished."

    #@1af
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b2
    .line 4681
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b6
    move-object/from16 v32, v0

    #@1b8
    move-object/from16 v0, v32

    #@1ba
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1bc
    move-object/from16 v32, v0

    #@1be
    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c1
    .line 4447
    return-void

    #@1c2
    .line 4669
    :catchall_0
    move-exception v32

    #@1c3
    monitor-exit v33

    #@1c4
    throw v32

    #@1c5
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1
    move-exception v32

    #@1c6
    monitor-exit v33

    #@1c7
    throw v32

    #@1c8
    .line 4458
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1cc
    move-object/from16 v32, v0

    #@1ce
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@1d1
    move-result v6

    #@1d2
    .line 4459
    .local v6, "N":I
    const/16 v32, 0x2000

    #@1d4
    move/from16 v0, v32

    #@1d6
    new-array v13, v0, [B

    #@1d8
    .line 4460
    .local v13, "buffer":[B
    const/16 v19, 0x0

    #@1da
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@1dc
    if-ge v0, v6, :cond_1c

    #@1de
    .line 4461
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    #@1e2
    move-object/from16 v32, v0

    #@1e4
    move-object/from16 v0, v32

    #@1e6
    move/from16 v1, v19

    #@1e8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1eb
    move-result-object v14

    #@1ec
    check-cast v14, Landroid/content/pm/PackageInfo;

    #@1ee
    .line 4462
    .local v14, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1f0
    move-object/from16 v23, v0

    #@1f2
    .line 4464
    .local v23, "packageName":Ljava/lang/String;
    const-string/jumbo v32, "PFTBT"

    #@1f5
    new-instance v33, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v34, "Initiating full-data transport backup of "

    #@1fd
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v33

    #@201
    move-object/from16 v0, v33

    #@203
    move-object/from16 v1, v23

    #@205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v33

    #@209
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v33

    #@20d
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 4466
    const/16 v32, 0xb18

    #@212
    move/from16 v0, v32

    #@214
    move-object/from16 v1, v23

    #@216
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@219
    .line 4468
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@21c
    move-result-object v31

    #@21d
    .line 4471
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@21f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    #@221
    move/from16 v32, v0

    #@223
    if-eqz v32, :cond_c

    #@225
    const/16 v18, 0x1

    #@227
    .line 4473
    .local v18, "flags":I
    :goto_1
    const/16 v32, 0x0

    #@229
    aget-object v32, v31, v32

    #@22b
    .line 4472
    move-object/from16 v0, v30

    #@22d
    move-object/from16 v1, v32

    #@22f
    move/from16 v2, v18

    #@231
    invoke-interface {v0, v14, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    #@234
    move-result v7

    #@235
    .line 4474
    .local v7, "backupPackageStatus":I
    if-nez v7, :cond_a

    #@237
    .line 4477
    const/16 v32, 0x0

    #@239
    aget-object v32, v31, v32

    #@23b
    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    #@23e
    .line 4478
    const/16 v32, 0x0

    #@240
    const/16 v33, 0x0

    #@242
    aput-object v32, v31, v33

    #@244
    .line 4481
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@247
    move-result-object v16

    #@248
    .line 4483
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    #@24a
    const/16 v32, 0x1

    #@24c
    aget-object v32, v16, v32

    #@24e
    move-object/from16 v0, p0

    #@250
    move-object/from16 v1, v32

    #@252
    move-object/from16 v2, v30

    #@254
    invoke-direct {v11, v0, v1, v14, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V

    #@257
    .line 4486
    .local v11, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v32, 0x1

    #@259
    aget-object v32, v16, v32

    #@25b
    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    #@25e
    .line 4487
    const/16 v32, 0x0

    #@260
    const/16 v33, 0x1

    #@262
    aput-object v32, v16, v33

    #@264
    .line 4491
    new-instance v32, Ljava/lang/Thread;

    #@266
    const-string/jumbo v33, "package-backup-bridge"

    #@269
    move-object/from16 v0, v32

    #@26b
    move-object/from16 v1, v33

    #@26d
    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@270
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->start()V

    #@273
    .line 4496
    new-instance v20, Ljava/io/FileInputStream;

    #@275
    .line 4497
    const/16 v32, 0x0

    #@277
    aget-object v32, v16, v32

    #@279
    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@27c
    move-result-object v32

    #@27d
    .line 4496
    move-object/from16 v0, v20

    #@27f
    move-object/from16 v1, v32

    #@281
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@284
    .line 4498
    .local v20, "in":Ljava/io/FileInputStream;
    new-instance v22, Ljava/io/FileOutputStream;

    #@286
    .line 4499
    const/16 v32, 0x1

    #@288
    aget-object v32, v31, v32

    #@28a
    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@28d
    move-result-object v32

    #@28e
    .line 4498
    move-object/from16 v0, v22

    #@290
    move-object/from16 v1, v32

    #@292
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@295
    .line 4500
    .local v22, "out":Ljava/io/FileOutputStream;
    const-wide/16 v28, 0x0

    #@297
    .line 4501
    .local v28, "totalRead":J
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    #@29a
    move-result-wide v24

    #@29b
    .line 4503
    .local v24, "preflightResult":J
    const-wide/16 v32, 0x0

    #@29d
    cmp-long v32, v24, v32

    #@29f
    if-gez v32, :cond_d

    #@2a1
    .line 4509
    move-wide/from16 v0, v24

    #@2a3
    long-to-int v7, v0

    #@2a4
    .line 4547
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a8
    move-object/from16 v32, v0

    #@2aa
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2ad
    move-result v32

    #@2ae
    if-nez v32, :cond_13

    #@2b0
    .line 4548
    const/16 v7, -0x3e8

    #@2b2
    .line 4549
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    #@2b5
    .line 4570
    :cond_7
    :goto_3
    if-nez v7, :cond_8

    #@2b7
    .line 4572
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    #@2ba
    move-result v12

    #@2bb
    .line 4573
    .local v12, "backupRunnerResult":I
    if-eqz v12, :cond_8

    #@2bd
    .line 4576
    move v7, v12

    #@2be
    .line 4589
    .end local v12    # "backupRunnerResult":I
    :cond_8
    if-eqz v7, :cond_9

    #@2c0
    .line 4590
    const-string/jumbo v32, "PFTBT"

    #@2c3
    new-instance v33, Ljava/lang/StringBuilder;

    #@2c5
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2c8
    const-string/jumbo v34, "Error "

    #@2cb
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v33

    #@2cf
    move-object/from16 v0, v33

    #@2d1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v33

    #@2d5
    const-string/jumbo v34, " backing up "

    #@2d8
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v33

    #@2dc
    move-object/from16 v0, v33

    #@2de
    move-object/from16 v1, v23

    #@2e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v33

    #@2e4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v33

    #@2e8
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2eb
    .line 4596
    :cond_9
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    #@2ee
    move-result-wide v8

    #@2ef
    .line 4598
    const-string/jumbo v32, "PFTBT"

    #@2f2
    new-instance v33, Ljava/lang/StringBuilder;

    #@2f4
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2f7
    const-string/jumbo v34, "Transport suggested backoff="

    #@2fa
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v33

    #@2fe
    move-object/from16 v0, v33

    #@300
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@303
    move-result-object v33

    #@304
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@307
    move-result-object v33

    #@308
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30b
    .line 4605
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    :cond_a
    move-object/from16 v0, p0

    #@30d
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@30f
    move/from16 v32, v0

    #@311
    if-eqz v32, :cond_b

    #@313
    .line 4606
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@317
    move-object/from16 v32, v0

    #@319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31c
    move-result-wide v34

    #@31d
    move-object/from16 v0, v32

    #@31f
    move-object/from16 v1, v23

    #@321
    move-wide/from16 v2, v34

    #@323
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    #@326
    .line 4609
    :cond_b
    const/16 v32, -0x3ea

    #@328
    move/from16 v0, v32

    #@32a
    if-ne v7, v0, :cond_14

    #@32c
    .line 4610
    move-object/from16 v0, p0

    #@32e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@330
    move-object/from16 v32, v0

    #@332
    .line 4611
    const/16 v33, -0x3ea

    #@334
    .line 4610
    move-object/from16 v0, v32

    #@336
    move-object/from16 v1, v23

    #@338
    move/from16 v2, v33

    #@33a
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@33d
    .line 4613
    const-string/jumbo v32, "PFTBT"

    #@340
    new-instance v33, Ljava/lang/StringBuilder;

    #@342
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v34, "Transport rejected backup of "

    #@348
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v33

    #@34c
    move-object/from16 v0, v33

    #@34e
    move-object/from16 v1, v23

    #@350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v33

    #@354
    .line 4614
    const-string/jumbo v34, ", skipping"

    #@357
    .line 4613
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v33

    #@35b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35e
    move-result-object v33

    #@35f
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@362
    .line 4616
    const/16 v32, 0x2

    #@364
    move/from16 v0, v32

    #@366
    new-array v0, v0, [Ljava/lang/Object;

    #@368
    move-object/from16 v32, v0

    #@36a
    const/16 v33, 0x0

    #@36c
    aput-object v23, v32, v33

    #@36e
    .line 4617
    const-string/jumbo v33, "transport rejected"

    #@371
    const/16 v34, 0x1

    #@373
    aput-object v33, v32, v34

    #@375
    .line 4616
    const/16 v33, 0xb19

    #@377
    move/from16 v0, v33

    #@379
    move-object/from16 v1, v32

    #@37b
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@37e
    .line 4650
    :goto_4
    move-object/from16 v0, p0

    #@380
    move-object/from16 v1, v31

    #@382
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@385
    .line 4651
    move-object/from16 v0, p0

    #@387
    move-object/from16 v1, v16

    #@389
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@38c
    .line 4460
    add-int/lit8 v19, v19, 0x1

    #@38e
    goto/16 :goto_0

    #@390
    .line 4471
    .end local v7    # "backupPackageStatus":I
    .end local v18    # "flags":I
    :cond_c
    const/16 v18, 0x0

    #@392
    .restart local v18    # "flags":I
    goto/16 :goto_1

    #@394
    .line 4511
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    :cond_d
    const/16 v21, 0x0

    #@396
    .line 4513
    .local v21, "nRead":I
    :goto_5
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@39a
    move-object/from16 v32, v0

    #@39c
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@39f
    move-result v32

    #@3a0
    if-nez v32, :cond_11

    #@3a2
    .line 4515
    const-string/jumbo v32, "PFTBT"

    #@3a5
    const-string/jumbo v33, "Full backup task told to stop"

    #@3a8
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3ab
    .line 4536
    :cond_e
    const/16 v32, -0x3ed

    #@3ad
    move/from16 v0, v32

    #@3af
    if-ne v7, v0, :cond_6

    #@3b1
    .line 4537
    const/16 v32, 0x1

    #@3b3
    move-object/from16 v0, v30

    #@3b5
    move-object/from16 v1, v23

    #@3b7
    move/from16 v2, v32

    #@3b9
    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    #@3bc
    move-result-wide v26

    #@3bd
    .line 4538
    .local v26, "quota":J
    const-string/jumbo v32, "PFTBT"

    #@3c0
    new-instance v33, Ljava/lang/StringBuilder;

    #@3c2
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3c5
    const-string/jumbo v34, "Package hit quota limit in-flight "

    #@3c8
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cb
    move-result-object v33

    #@3cc
    move-object/from16 v0, v33

    #@3ce
    move-object/from16 v1, v23

    #@3d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v33

    #@3d4
    .line 4539
    const-string/jumbo v34, ": "

    #@3d7
    .line 4538
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3da
    move-result-object v33

    #@3db
    move-object/from16 v0, v33

    #@3dd
    move-wide/from16 v1, v28

    #@3df
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v33

    #@3e3
    .line 4539
    const-string/jumbo v34, " of "

    #@3e6
    .line 4538
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e9
    move-result-object v33

    #@3ea
    move-object/from16 v0, v33

    #@3ec
    move-wide/from16 v1, v26

    #@3ee
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f1
    move-result-object v33

    #@3f2
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f5
    move-result-object v33

    #@3f6
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f9
    .line 4540
    move-wide/from16 v0, v28

    #@3fb
    move-wide/from16 v2, v26

    #@3fd
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@400
    goto/16 :goto_2

    #@402
    .line 4653
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v21    # "nRead":I
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "preflightResult":J
    .end local v26    # "quota":J
    .end local v28    # "totalRead":J
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    #@403
    .line 4654
    .local v15, "e":Ljava/lang/Exception;
    const/16 v10, -0x3e8

    #@405
    .line 4655
    :try_start_5
    const-string/jumbo v32, "PFTBT"

    #@408
    const-string/jumbo v33, "Exception trying full transport backup"

    #@40b
    move-object/from16 v0, v32

    #@40d
    move-object/from16 v1, v33

    #@40f
    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@412
    .line 4658
    const-string/jumbo v32, "PFTBT"

    #@415
    new-instance v33, Ljava/lang/StringBuilder;

    #@417
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@41a
    const-string/jumbo v34, "Full backup completed with status: "

    #@41d
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v33

    #@421
    move-object/from16 v0, v33

    #@423
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@426
    move-result-object v33

    #@427
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42a
    move-result-object v33

    #@42b
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42e
    .line 4660
    move-object/from16 v0, p0

    #@430
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@432
    move-object/from16 v32, v0

    #@434
    move-object/from16 v0, v32

    #@436
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@439
    .line 4662
    move-object/from16 v0, p0

    #@43b
    move-object/from16 v1, v31

    #@43d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@440
    .line 4663
    move-object/from16 v0, p0

    #@442
    move-object/from16 v1, v16

    #@444
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@447
    .line 4665
    move-object/from16 v0, p0

    #@449
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@44b
    move-object/from16 v32, v0

    #@44d
    if-eqz v32, :cond_f

    #@44f
    .line 4666
    move-object/from16 v0, p0

    #@451
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@453
    move-object/from16 v32, v0

    #@455
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@458
    .line 4669
    :cond_f
    move-object/from16 v0, p0

    #@45a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@45c
    move-object/from16 v32, v0

    #@45e
    move-object/from16 v0, v32

    #@460
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@462
    move-object/from16 v33, v0

    #@464
    monitor-enter v33

    #@465
    .line 4670
    :try_start_6
    move-object/from16 v0, p0

    #@467
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@469
    move-object/from16 v32, v0

    #@46b
    const/16 v34, 0x0

    #@46d
    move-object/from16 v0, v34

    #@46f
    move-object/from16 v1, v32

    #@471
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@473
    monitor-exit v33

    #@474
    .line 4673
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@478
    move-object/from16 v32, v0

    #@47a
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@47d
    .line 4677
    move-object/from16 v0, p0

    #@47f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@481
    move/from16 v32, v0

    #@483
    if-eqz v32, :cond_10

    #@485
    .line 4678
    move-object/from16 v0, p0

    #@487
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@489
    move-object/from16 v32, v0

    #@48b
    move-object/from16 v0, v32

    #@48d
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@490
    .line 4680
    :cond_10
    const-string/jumbo v32, "BackupManagerService"

    #@493
    const-string/jumbo v33, "Full data backup pass finished."

    #@496
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@499
    .line 4681
    move-object/from16 v0, p0

    #@49b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@49d
    move-object/from16 v32, v0

    #@49f
    move-object/from16 v0, v32

    #@4a1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@4a3
    move-object/from16 v32, v0

    #@4a5
    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4a8
    .line 4428
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    #@4a9
    .line 4519
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v21    # "nRead":I
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_11
    :try_start_7
    move-object/from16 v0, v20

    #@4ab
    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    #@4ae
    move-result v21

    #@4af
    .line 4523
    if-lez v21, :cond_12

    #@4b1
    .line 4524
    const/16 v32, 0x0

    #@4b3
    move-object/from16 v0, v22

    #@4b5
    move/from16 v1, v32

    #@4b7
    move/from16 v2, v21

    #@4b9
    invoke-virtual {v0, v13, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    #@4bc
    .line 4525
    move-object/from16 v0, v30

    #@4be
    move/from16 v1, v21

    #@4c0
    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    #@4c3
    move-result v7

    #@4c4
    .line 4526
    move/from16 v0, v21

    #@4c6
    int-to-long v0, v0

    #@4c7
    move-wide/from16 v32, v0

    #@4c9
    add-long v28, v28, v32

    #@4cb
    .line 4527
    move-object/from16 v0, p0

    #@4cd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@4cf
    move-object/from16 v32, v0

    #@4d1
    if-eqz v32, :cond_12

    #@4d3
    const-wide/16 v32, 0x0

    #@4d5
    cmp-long v32, v24, v32

    #@4d7
    if-lez v32, :cond_12

    #@4d9
    .line 4528
    move-object/from16 v0, p0

    #@4db
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@4dd
    move-object/from16 v32, v0

    #@4df
    .line 4529
    new-instance v33, Landroid/app/backup/BackupProgress;

    #@4e1
    move-object/from16 v0, v33

    #@4e3
    move-wide/from16 v1, v24

    #@4e5
    move-wide/from16 v3, v28

    #@4e7
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    #@4ea
    .line 4528
    move-object/from16 v0, v32

    #@4ec
    move-object/from16 v1, v23

    #@4ee
    move-object/from16 v2, v33

    #@4f0
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    #@4f3
    .line 4532
    :cond_12
    if-lez v21, :cond_e

    #@4f5
    .line 4533
    if-nez v7, :cond_e

    #@4f7
    goto/16 :goto_5

    #@4f9
    .line 4555
    .end local v21    # "nRead":I
    :cond_13
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@4fc
    move-result v17

    #@4fd
    .line 4556
    .local v17, "finishResult":I
    if-nez v7, :cond_7

    #@4ff
    .line 4557
    move/from16 v7, v17

    #@501
    goto/16 :goto_3

    #@503
    .line 4619
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "finishResult":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    :cond_14
    const/16 v32, -0x3ed

    #@505
    move/from16 v0, v32

    #@507
    if-ne v7, v0, :cond_17

    #@509
    .line 4620
    move-object/from16 v0, p0

    #@50b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@50d
    move-object/from16 v32, v0

    #@50f
    .line 4621
    const/16 v33, -0x3ed

    #@511
    .line 4620
    move-object/from16 v0, v32

    #@513
    move-object/from16 v1, v23

    #@515
    move/from16 v2, v33

    #@517
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@51a
    .line 4623
    const-string/jumbo v32, "PFTBT"

    #@51d
    new-instance v33, Ljava/lang/StringBuilder;

    #@51f
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@522
    const-string/jumbo v34, "Transport quota exceeded for package: "

    #@525
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v33

    #@529
    move-object/from16 v0, v33

    #@52b
    move-object/from16 v1, v23

    #@52d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@530
    move-result-object v33

    #@531
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@534
    move-result-object v33

    #@535
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@538
    .line 4624
    const/16 v32, 0xb1d

    #@53a
    move/from16 v0, v32

    #@53c
    move-object/from16 v1, v23

    #@53e
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@541
    goto/16 :goto_4

    #@543
    .line 4656
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v32

    #@544
    .line 4658
    const-string/jumbo v33, "PFTBT"

    #@547
    new-instance v34, Ljava/lang/StringBuilder;

    #@549
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@54c
    const-string/jumbo v35, "Full backup completed with status: "

    #@54f
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v34

    #@553
    move-object/from16 v0, v34

    #@555
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@558
    move-result-object v34

    #@559
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55c
    move-result-object v34

    #@55d
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@560
    .line 4660
    move-object/from16 v0, p0

    #@562
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@564
    move-object/from16 v33, v0

    #@566
    move-object/from16 v0, v33

    #@568
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@56b
    .line 4662
    move-object/from16 v0, p0

    #@56d
    move-object/from16 v1, v31

    #@56f
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@572
    .line 4663
    move-object/from16 v0, p0

    #@574
    move-object/from16 v1, v16

    #@576
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@579
    .line 4665
    move-object/from16 v0, p0

    #@57b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@57d
    move-object/from16 v33, v0

    #@57f
    if-eqz v33, :cond_15

    #@581
    .line 4666
    move-object/from16 v0, p0

    #@583
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@585
    move-object/from16 v33, v0

    #@587
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@58a
    .line 4669
    :cond_15
    move-object/from16 v0, p0

    #@58c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@58e
    move-object/from16 v33, v0

    #@590
    move-object/from16 v0, v33

    #@592
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@594
    move-object/from16 v33, v0

    #@596
    monitor-enter v33

    #@597
    .line 4670
    :try_start_8
    move-object/from16 v0, p0

    #@599
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@59b
    move-object/from16 v34, v0

    #@59d
    const/16 v35, 0x0

    #@59f
    move-object/from16 v0, v35

    #@5a1
    move-object/from16 v1, v34

    #@5a3
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    #@5a5
    monitor-exit v33

    #@5a6
    .line 4673
    move-object/from16 v0, p0

    #@5a8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@5aa
    move-object/from16 v33, v0

    #@5ac
    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5af
    .line 4677
    move-object/from16 v0, p0

    #@5b1
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@5b3
    move/from16 v33, v0

    #@5b5
    if-eqz v33, :cond_16

    #@5b7
    .line 4678
    move-object/from16 v0, p0

    #@5b9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5bb
    move-object/from16 v33, v0

    #@5bd
    move-object/from16 v0, v33

    #@5bf
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@5c2
    .line 4680
    :cond_16
    const-string/jumbo v33, "BackupManagerService"

    #@5c5
    const-string/jumbo v34, "Full data backup pass finished."

    #@5c8
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5cb
    .line 4681
    move-object/from16 v0, p0

    #@5cd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5cf
    move-object/from16 v33, v0

    #@5d1
    move-object/from16 v0, v33

    #@5d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@5d5
    move-object/from16 v33, v0

    #@5d7
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    #@5da
    .line 4656
    throw v32

    #@5db
    .line 4628
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_17
    const/16 v32, -0x3eb

    #@5dd
    move/from16 v0, v32

    #@5df
    if-ne v7, v0, :cond_18

    #@5e1
    .line 4629
    :try_start_9
    move-object/from16 v0, p0

    #@5e3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@5e5
    move-object/from16 v32, v0

    #@5e7
    .line 4630
    const/16 v33, -0x3eb

    #@5e9
    .line 4629
    move-object/from16 v0, v32

    #@5eb
    move-object/from16 v1, v23

    #@5ed
    move/from16 v2, v33

    #@5ef
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@5f2
    .line 4631
    const-string/jumbo v32, "PFTBT"

    #@5f5
    new-instance v33, Ljava/lang/StringBuilder;

    #@5f7
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@5fa
    const-string/jumbo v34, "Application failure for package: "

    #@5fd
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@600
    move-result-object v33

    #@601
    move-object/from16 v0, v33

    #@603
    move-object/from16 v1, v23

    #@605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@608
    move-result-object v33

    #@609
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60c
    move-result-object v33

    #@60d
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@610
    .line 4632
    const/16 v32, 0xb07

    #@612
    move/from16 v0, v32

    #@614
    move-object/from16 v1, v23

    #@616
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@619
    .line 4633
    move-object/from16 v0, p0

    #@61b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@61d
    move-object/from16 v32, v0

    #@61f
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@621
    move-object/from16 v33, v0

    #@623
    invoke-virtual/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@626
    goto/16 :goto_4

    #@628
    .line 4635
    :cond_18
    if-eqz v7, :cond_1b

    #@62a
    .line 4636
    move-object/from16 v0, p0

    #@62c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@62e
    move-object/from16 v32, v0

    #@630
    .line 4637
    const/16 v33, -0x3e8

    #@632
    .line 4636
    move-object/from16 v0, v32

    #@634
    move-object/from16 v1, v23

    #@636
    move/from16 v2, v33

    #@638
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@63b
    .line 4638
    const-string/jumbo v32, "PFTBT"

    #@63e
    new-instance v33, Ljava/lang/StringBuilder;

    #@640
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@643
    const-string/jumbo v34, "Transport failed; aborting backup: "

    #@646
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@649
    move-result-object v33

    #@64a
    move-object/from16 v0, v33

    #@64c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64f
    move-result-object v33

    #@650
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@653
    move-result-object v33

    #@654
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@657
    .line 4639
    const/16 v32, 0x0

    #@659
    move/from16 v0, v32

    #@65b
    new-array v0, v0, [Ljava/lang/Object;

    #@65d
    move-object/from16 v32, v0

    #@65f
    const/16 v33, 0xb1a

    #@661
    move/from16 v0, v33

    #@663
    move-object/from16 v1, v32

    #@665
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@668
    .line 4641
    const/16 v10, -0x3e8

    #@66a
    .line 4658
    const-string/jumbo v32, "PFTBT"

    #@66d
    new-instance v33, Ljava/lang/StringBuilder;

    #@66f
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@672
    const-string/jumbo v34, "Full backup completed with status: "

    #@675
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@678
    move-result-object v33

    #@679
    move-object/from16 v0, v33

    #@67b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67e
    move-result-object v33

    #@67f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@682
    move-result-object v33

    #@683
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@686
    .line 4660
    move-object/from16 v0, p0

    #@688
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@68a
    move-object/from16 v32, v0

    #@68c
    move-object/from16 v0, v32

    #@68e
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@691
    .line 4662
    move-object/from16 v0, p0

    #@693
    move-object/from16 v1, v31

    #@695
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@698
    .line 4663
    move-object/from16 v0, p0

    #@69a
    move-object/from16 v1, v16

    #@69c
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@69f
    .line 4665
    move-object/from16 v0, p0

    #@6a1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@6a3
    move-object/from16 v32, v0

    #@6a5
    if-eqz v32, :cond_19

    #@6a7
    .line 4666
    move-object/from16 v0, p0

    #@6a9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@6ab
    move-object/from16 v32, v0

    #@6ad
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@6b0
    .line 4669
    :cond_19
    move-object/from16 v0, p0

    #@6b2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6b4
    move-object/from16 v32, v0

    #@6b6
    move-object/from16 v0, v32

    #@6b8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@6ba
    move-object/from16 v33, v0

    #@6bc
    monitor-enter v33

    #@6bd
    .line 4670
    :try_start_a
    move-object/from16 v0, p0

    #@6bf
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6c1
    move-object/from16 v32, v0

    #@6c3
    const/16 v34, 0x0

    #@6c5
    move-object/from16 v0, v34

    #@6c7
    move-object/from16 v1, v32

    #@6c9
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@6cb
    monitor-exit v33

    #@6cc
    .line 4673
    move-object/from16 v0, p0

    #@6ce
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@6d0
    move-object/from16 v32, v0

    #@6d2
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@6d5
    .line 4677
    move-object/from16 v0, p0

    #@6d7
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@6d9
    move/from16 v32, v0

    #@6db
    if-eqz v32, :cond_1a

    #@6dd
    .line 4678
    move-object/from16 v0, p0

    #@6df
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6e1
    move-object/from16 v32, v0

    #@6e3
    move-object/from16 v0, v32

    #@6e5
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@6e8
    .line 4680
    :cond_1a
    const-string/jumbo v32, "BackupManagerService"

    #@6eb
    const-string/jumbo v33, "Full data backup pass finished."

    #@6ee
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6f1
    .line 4681
    move-object/from16 v0, p0

    #@6f3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6f5
    move-object/from16 v32, v0

    #@6f7
    move-object/from16 v0, v32

    #@6f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@6fb
    move-object/from16 v32, v0

    #@6fd
    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    #@700
    .line 4642
    return-void

    #@701
    .line 4669
    :catchall_3
    move-exception v32

    #@702
    monitor-exit v33

    #@703
    throw v32

    #@704
    .line 4645
    :cond_1b
    :try_start_b
    move-object/from16 v0, p0

    #@706
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@708
    move-object/from16 v32, v0

    #@70a
    .line 4646
    const/16 v33, 0x0

    #@70c
    .line 4645
    move-object/from16 v0, v32

    #@70e
    move-object/from16 v1, v23

    #@710
    move/from16 v2, v33

    #@712
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@715
    .line 4647
    const/16 v32, 0xb1b

    #@717
    move/from16 v0, v32

    #@719
    move-object/from16 v1, v23

    #@71b
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@71e
    .line 4648
    move-object/from16 v0, p0

    #@720
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@722
    move-object/from16 v32, v0

    #@724
    move-object/from16 v0, v32

    #@726
    move-object/from16 v1, v23

    #@728
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@72b
    goto/16 :goto_4

    #@72d
    .line 4658
    .end local v7    # "backupPackageStatus":I
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "flags":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const-string/jumbo v32, "PFTBT"

    #@730
    new-instance v33, Ljava/lang/StringBuilder;

    #@732
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@735
    const-string/jumbo v34, "Full backup completed with status: "

    #@738
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73b
    move-result-object v33

    #@73c
    move-object/from16 v0, v33

    #@73e
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@741
    move-result-object v33

    #@742
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@745
    move-result-object v33

    #@746
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@749
    .line 4660
    move-object/from16 v0, p0

    #@74b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    #@74d
    move-object/from16 v32, v0

    #@74f
    move-object/from16 v0, v32

    #@751
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@754
    .line 4662
    move-object/from16 v0, p0

    #@756
    move-object/from16 v1, v31

    #@758
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@75b
    .line 4663
    move-object/from16 v0, p0

    #@75d
    move-object/from16 v1, v16

    #@75f
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    #@762
    .line 4665
    move-object/from16 v0, p0

    #@764
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@766
    move-object/from16 v32, v0

    #@768
    if-eqz v32, :cond_1d

    #@76a
    .line 4666
    move-object/from16 v0, p0

    #@76c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    #@76e
    move-object/from16 v32, v0

    #@770
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    #@773
    .line 4669
    :cond_1d
    move-object/from16 v0, p0

    #@775
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@777
    move-object/from16 v32, v0

    #@779
    move-object/from16 v0, v32

    #@77b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@77d
    move-object/from16 v33, v0

    #@77f
    monitor-enter v33

    #@780
    .line 4670
    :try_start_c
    move-object/from16 v0, p0

    #@782
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@784
    move-object/from16 v32, v0

    #@786
    const/16 v34, 0x0

    #@788
    move-object/from16 v0, v34

    #@78a
    move-object/from16 v1, v32

    #@78c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@78e
    monitor-exit v33

    #@78f
    .line 4673
    move-object/from16 v0, p0

    #@791
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@793
    move-object/from16 v32, v0

    #@795
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@798
    .line 4677
    move-object/from16 v0, p0

    #@79a
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    #@79c
    move/from16 v32, v0

    #@79e
    if-eqz v32, :cond_1e

    #@7a0
    .line 4678
    move-object/from16 v0, p0

    #@7a2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7a4
    move-object/from16 v32, v0

    #@7a6
    move-object/from16 v0, v32

    #@7a8
    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@7ab
    .line 4680
    :cond_1e
    const-string/jumbo v32, "BackupManagerService"

    #@7ae
    const-string/jumbo v33, "Full data backup pass finished."

    #@7b1
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7b4
    .line 4681
    move-object/from16 v0, p0

    #@7b6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7b8
    move-object/from16 v32, v0

    #@7ba
    move-object/from16 v0, v32

    #@7bc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@7be
    move-object/from16 v32, v0

    #@7c0
    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    #@7c3
    goto/16 :goto_6

    #@7c5
    .line 4669
    :catchall_4
    move-exception v32

    #@7c6
    monitor-exit v33

    #@7c7
    throw v32

    #@7c8
    .end local v6    # "N":I
    .end local v13    # "buffer":[B
    .end local v19    # "i":I
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v32

    #@7c9
    monitor-exit v33

    #@7ca
    throw v32

    #@7cb
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v32

    #@7cc
    monitor-exit v33

    #@7cd
    throw v32
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    #@0
    .prologue
    .line 4424
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 4423
    return-void
.end method
