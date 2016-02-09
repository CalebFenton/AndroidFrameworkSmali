.class Lcom/android/server/backup/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 645
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 644
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 650
    move-object/from16 v0, p1

    #@2
    iget v3, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 648
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 653
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v12

    #@10
    iput-wide v12, v3, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    #@12
    .line 655
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@1c
    invoke-static {v3, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap4(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@1f
    move-result-object v4

    #@20
    .line 656
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_1

    #@22
    .line 657
    const-string/jumbo v3, "BackupManagerService"

    #@25
    const-string/jumbo v9, "Backup requested but no transport available"

    #@28
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 658
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@31
    monitor-enter v9

    #@32
    .line 659
    :try_start_0
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@36
    const/4 v12, 0x0

    #@37
    iput-boolean v12, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit v9

    #@3a
    .line 661
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@40
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@43
    goto :goto_0

    #@44
    .line 658
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v9

    #@46
    throw v3

    #@47
    .line 666
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    #@49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@4c
    .line 667
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@50
    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@52
    .line 668
    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@58
    monitor-enter v9

    #@59
    .line 672
    :try_start_1
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5d
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@5f
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@62
    move-result v3

    #@63
    if-lez v3, :cond_3

    #@65
    .line 673
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@69
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@6b
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6e
    move-result-object v3

    #@6f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v24

    #@73
    .local v24, "b$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_2

    #@79
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v23

    #@7d
    check-cast v23, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@7f
    .line 674
    .local v23, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v23

    #@81
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@84
    goto :goto_1

    #@85
    .line 668
    .end local v23    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@86
    monitor-exit v9

    #@87
    throw v3

    #@88
    .line 676
    .restart local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    #@8b
    const-string/jumbo v12, "clearing pending backups"

    #@8e
    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 677
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@95
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@97
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@9a
    .line 680
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9e
    const/4 v12, 0x0

    #@9f
    iput-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a1
    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v9

    #@a2
    .line 690
    const/16 v41, 0x1

    #@a4
    .line 691
    .local v41, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v3

    #@a8
    if-lez v3, :cond_4

    #@aa
    .line 694
    :try_start_3
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    .line 695
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b4
    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    #@b7
    .line 697
    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@be
    move-result-object v36

    #@bf
    .line 698
    .local v36, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    #@c1
    move-object/from16 v1, v36

    #@c3
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@c6
    .line 710
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v36    # "pbtMessage":Landroid/os/Message;
    :goto_2
    if-nez v41, :cond_0

    #@c8
    .line 712
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@cc
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@ce
    monitor-enter v9

    #@cf
    .line 713
    :try_start_4
    move-object/from16 v0, p0

    #@d1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d3
    const/4 v12, 0x0

    #@d4
    iput-boolean v12, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@d6
    monitor-exit v9

    #@d7
    .line 715
    move-object/from16 v0, p0

    #@d9
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@db
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@dd
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 699
    :catch_0
    move-exception v25

    #@e3
    .line 702
    .local v25, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@e6
    const-string/jumbo v9, "Transport became unavailable attempting backup"

    #@e9
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 703
    const/16 v41, 0x0

    #@ee
    goto :goto_2

    #@ef
    .line 706
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    #@f2
    const-string/jumbo v9, "Backup requested but nothing pending"

    #@f5
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 707
    const/16 v41, 0x0

    #@fa
    goto :goto_2

    #@fb
    .line 712
    :catchall_2
    move-exception v3

    #@fc
    monitor-exit v9

    #@fd
    throw v3

    #@fe
    .line 723
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v41    # "staged":Z
    :pswitch_2
    :try_start_5
    move-object/from16 v0, p1

    #@100
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@102
    check-cast v10, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@104
    .line 725
    .local v10, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v10}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    #@107
    goto/16 :goto_0

    #@109
    .line 726
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_1
    move-exception v26

    #@10a
    .line 727
    .local v26, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    #@10d
    new-instance v9, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v12, "Invalid backup task in flight, obj="

    #@115
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v9

    #@119
    move-object/from16 v0, p1

    #@11b
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11d
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v9

    #@121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v9

    #@125
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@128
    goto/16 :goto_0

    #@12a
    .line 735
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p1

    #@12c
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12e
    check-cast v10, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@130
    .line 736
    .restart local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    move-object/from16 v0, p1

    #@132
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@134
    invoke-interface {v10, v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete(I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2

    #@137
    goto/16 :goto_0

    #@139
    .line 737
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_2
    move-exception v26

    #@13a
    .line 738
    .restart local v26    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    #@13d
    new-instance v9, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v12, "Invalid completion in flight, obj="

    #@145
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v9

    #@149
    move-object/from16 v0, p1

    #@14b
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14d
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v9

    #@151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v9

    #@155
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@158
    goto/16 :goto_0

    #@15a
    .line 747
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_4
    move-object/from16 v0, p1

    #@15c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15e
    move-object/from16 v31, v0

    #@160
    check-cast v31, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    #@162
    .line 748
    .local v31, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    #@164
    move-object/from16 v0, p0

    #@166
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@168
    move-object/from16 v0, v31

    #@16a
    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    #@16c
    .line 749
    move-object/from16 v0, v31

    #@16e
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@170
    move-object/from16 v0, v31

    #@172
    iget-boolean v12, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    #@174
    move-object/from16 v0, v31

    #@176
    iget-boolean v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    #@178
    .line 750
    move-object/from16 v0, v31

    #@17a
    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    #@17c
    move-object/from16 v0, v31

    #@17e
    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    #@180
    .line 751
    move-object/from16 v0, v31

    #@182
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    #@184
    move-object/from16 v16, v0

    #@186
    move-object/from16 v0, v31

    #@188
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    #@18a
    move-object/from16 v17, v0

    #@18c
    .line 752
    move-object/from16 v0, v31

    #@18e
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    #@190
    move/from16 v18, v0

    #@192
    move-object/from16 v0, v31

    #@194
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    #@196
    move/from16 v19, v0

    #@198
    move-object/from16 v0, v31

    #@19a
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    #@19c
    move/from16 v20, v0

    #@19e
    .line 753
    move-object/from16 v0, v31

    #@1a0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    #@1a2
    move-object/from16 v21, v0

    #@1a4
    move-object/from16 v0, v31

    #@1a6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1a8
    move-object/from16 v22, v0

    #@1aa
    .line 748
    invoke-direct/range {v8 .. v22}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@1ad
    .line 754
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    #@1af
    const-string/jumbo v9, "adb-backup"

    #@1b2
    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1b5
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 760
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v31    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_5
    move-object/from16 v0, p1

    #@1bc
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1be
    move-object/from16 v42, v0

    #@1c0
    check-cast v42, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1c2
    .line 761
    .local v42, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    #@1c4
    const-string/jumbo v9, "transport-backup"

    #@1c7
    move-object/from16 v0, v42

    #@1c9
    invoke-direct {v3, v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1cc
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 767
    .end local v42    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_6
    move-object/from16 v0, p1

    #@1d3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d5
    move-object/from16 v35, v0

    #@1d7
    check-cast v35, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@1d9
    .line 768
    .local v35, "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    const-string/jumbo v3, "BackupManagerService"

    #@1dc
    new-instance v9, Ljava/lang/StringBuilder;

    #@1de
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e1
    const-string/jumbo v12, "MSG_RUN_RESTORE observer="

    #@1e4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v9

    #@1e8
    move-object/from16 v0, v35

    #@1ea
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@1ec
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v9

    #@1f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f3
    move-result-object v9

    #@1f4
    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f7
    .line 769
    new-instance v10, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1fd
    move-object/from16 v0, v35

    #@1ff
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@201
    .line 770
    move-object/from16 v0, v35

    #@203
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@205
    move-object/from16 v0, v35

    #@207
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@209
    move-object/from16 v0, v35

    #@20b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@20d
    move-object/from16 v16, v0

    #@20f
    move-object/from16 v0, v35

    #@211
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@213
    move/from16 v17, v0

    #@215
    .line 771
    move-object/from16 v0, v35

    #@217
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@219
    move/from16 v18, v0

    #@21b
    move-object/from16 v0, v35

    #@21d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@21f
    move-object/from16 v19, v0

    #@221
    .line 769
    invoke-direct/range {v10 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    #@224
    .line 772
    .restart local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    #@226
    move-object/from16 v0, p0

    #@228
    invoke-virtual {v0, v3, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@22b
    move-result-object v39

    #@22c
    .line 773
    .local v39, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@22e
    move-object/from16 v1, v39

    #@230
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@233
    goto/16 :goto_0

    #@235
    .line 781
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v35    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v39    # "restoreMsg":Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p1

    #@237
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@239
    move-object/from16 v33, v0

    #@23b
    check-cast v33, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    #@23d
    .line 782
    .local v33, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@23f
    move-object/from16 v0, p0

    #@241
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@243
    move-object/from16 v0, v33

    #@245
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    #@247
    .line 783
    move-object/from16 v0, v33

    #@249
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    #@24b
    move-object/from16 v0, v33

    #@24d
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    #@24f
    .line 784
    move-object/from16 v0, v33

    #@251
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@253
    move-object/from16 v16, v0

    #@255
    move-object/from16 v0, v33

    #@257
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@259
    move-object/from16 v17, v0

    #@25b
    .line 782
    invoke-direct/range {v11 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@25e
    .line 785
    .local v11, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    #@260
    const-string/jumbo v9, "adb-restore"

    #@263
    invoke-direct {v3, v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@266
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@269
    goto/16 :goto_0

    #@26b
    .line 791
    .end local v11    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .end local v33    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :pswitch_8
    move-object/from16 v0, p1

    #@26d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26f
    move-object/from16 v29, v0

    #@271
    check-cast v29, Lcom/android/server/backup/BackupManagerService$ClearParams;

    #@273
    .line 792
    .local v29, "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    #@275
    move-object/from16 v0, p0

    #@277
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@279
    move-object/from16 v0, v29

    #@27b
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@27d
    move-object/from16 v0, v29

    #@27f
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    #@281
    invoke-direct {v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    #@284
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    #@287
    goto/16 :goto_0

    #@289
    .line 799
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    :pswitch_9
    move-object/from16 v0, p1

    #@28b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28d
    move-object/from16 v30, v0

    #@28f
    check-cast v30, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    #@291
    .line 800
    .local v30, "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    #@293
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@295
    move-object/from16 v0, v30

    #@297
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    #@299
    move-object/from16 v0, v30

    #@29b
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    #@29d
    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@2a0
    goto/16 :goto_0

    #@2a2
    .line 809
    .end local v30    # "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    :pswitch_a
    move-object/from16 v0, p0

    #@2a4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2a6
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2a8
    monitor-enter v9

    #@2a9
    .line 810
    :try_start_7
    new-instance v37, Ljava/util/HashSet;

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2af
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2b1
    move-object/from16 v0, v37

    #@2b3
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2b6
    .line 811
    .local v37, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2b8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ba
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2bc
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@2bf
    monitor-exit v9

    #@2c0
    .line 814
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c6
    move-object/from16 v0, v37

    #@2c8
    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    #@2cb
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    #@2ce
    goto/16 :goto_0

    #@2d0
    .line 809
    .end local v37    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v3

    #@2d1
    monitor-exit v9

    #@2d2
    throw v3

    #@2d3
    .line 820
    :pswitch_b
    move-object/from16 v0, p0

    #@2d5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d7
    iget-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2d9
    monitor-enter v12

    #@2da
    .line 821
    :try_start_8
    move-object/from16 v0, p0

    #@2dc
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2de
    move-object/from16 v0, p1

    #@2e0
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@2e2
    if-eqz v3, :cond_5

    #@2e4
    const/4 v3, 0x1

    #@2e5
    move v9, v3

    #@2e6
    :goto_3
    move-object/from16 v0, p1

    #@2e8
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ea
    check-cast v3, Ljava/lang/String;

    #@2ec
    invoke-virtual {v13, v9, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    #@2ef
    .line 822
    move-object/from16 v0, p0

    #@2f1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f3
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    #@2f6
    move-result-object v3

    #@2f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2fa
    move-result-wide v14

    #@2fb
    .line 823
    move-object/from16 v0, p0

    #@2fd
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ff
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@301
    .line 822
    const/4 v13, 0x0

    #@302
    invoke-virtual {v3, v13, v14, v15, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@305
    monitor-exit v12

    #@306
    goto/16 :goto_0

    #@308
    .line 821
    :cond_5
    const/4 v3, 0x0

    #@309
    move v9, v3

    #@30a
    goto :goto_3

    #@30b
    .line 820
    :catchall_4
    move-exception v3

    #@30c
    monitor-exit v12

    #@30d
    throw v3

    #@30e
    .line 831
    :pswitch_c
    const/16 v40, 0x0

    #@310
    .line 832
    .local v40, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    #@312
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@314
    move-object/from16 v34, v0

    #@316
    check-cast v34, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    #@318
    .line 834
    .local v34, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_9
    move-object/from16 v0, v34

    #@31a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@31c
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@31f
    move-result-object v40

    #@320
    .line 836
    .local v40, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, v34

    #@322
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@324
    monitor-enter v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@325
    .line 837
    :try_start_a
    move-object/from16 v0, v34

    #@327
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@329
    move-object/from16 v0, v40

    #@32b
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@32d
    :try_start_b
    monitor-exit v9

    #@32e
    .line 839
    if-nez v40, :cond_6

    #@330
    const/4 v3, 0x0

    #@331
    new-array v3, v3, [Ljava/lang/Object;

    #@333
    const/16 v9, 0xb0f

    #@335
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    #@338
    .line 843
    :cond_6
    move-object/from16 v0, v34

    #@33a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@33c
    if-eqz v3, :cond_7

    #@33e
    .line 845
    :try_start_c
    move-object/from16 v0, v34

    #@340
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@342
    move-object/from16 v0, v40

    #@344
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    #@347
    .line 854
    :cond_7
    :goto_4
    const/16 v3, 0x8

    #@349
    move-object/from16 v0, p0

    #@34b
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@34e
    .line 855
    const/16 v3, 0x8

    #@350
    const-wide/32 v12, 0xea60

    #@353
    move-object/from16 v0, p0

    #@355
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@358
    .line 857
    move-object/from16 v0, p0

    #@35a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@35c
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@35e
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@361
    goto/16 :goto_0

    #@363
    .line 836
    :catchall_5
    move-exception v3

    #@364
    :try_start_d
    monitor-exit v9

    #@365
    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    #@366
    .line 840
    .end local v40    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_3
    move-exception v27

    #@367
    .line 841
    .local v27, "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v3, "BackupManagerService"

    #@36a
    const-string/jumbo v9, "Error from transport getting set list"

    #@36d
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    #@370
    .line 843
    move-object/from16 v0, v34

    #@372
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@374
    if-eqz v3, :cond_8

    #@376
    .line 845
    :try_start_f
    move-object/from16 v0, v34

    #@378
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@37a
    move-object/from16 v0, v40

    #@37c
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    #@37f
    .line 854
    :cond_8
    :goto_5
    const/16 v3, 0x8

    #@381
    move-object/from16 v0, p0

    #@383
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@386
    .line 855
    const/16 v3, 0x8

    #@388
    const-wide/32 v12, 0xea60

    #@38b
    move-object/from16 v0, p0

    #@38d
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@390
    .line 857
    move-object/from16 v0, p0

    #@392
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@394
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@396
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@399
    goto/16 :goto_0

    #@39b
    .line 848
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v40    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_4
    move-exception v27

    #@39c
    .line 849
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@39f
    const-string/jumbo v9, "Restore observer threw"

    #@3a2
    move-object/from16 v0, v27

    #@3a4
    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a7
    goto :goto_4

    #@3a8
    .line 846
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v38

    #@3a9
    .line 847
    .local v38, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@3ac
    const-string/jumbo v9, "Unable to report listing to observer"

    #@3af
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b2
    goto :goto_4

    #@3b3
    .line 848
    .end local v38    # "re":Landroid/os/RemoteException;
    .end local v40    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v27    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v27

    #@3b4
    .line 849
    const-string/jumbo v3, "BackupManagerService"

    #@3b7
    const-string/jumbo v9, "Restore observer threw"

    #@3ba
    move-object/from16 v0, v27

    #@3bc
    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3bf
    goto :goto_5

    #@3c0
    .line 846
    :catch_7
    move-exception v38

    #@3c1
    .line 847
    .restart local v38    # "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@3c4
    const-string/jumbo v9, "Unable to report listing to observer"

    #@3c7
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3ca
    goto :goto_5

    #@3cb
    .line 842
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v38    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v3

    #@3cc
    .line 843
    move-object/from16 v0, v34

    #@3ce
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@3d0
    if-eqz v9, :cond_9

    #@3d2
    .line 845
    :try_start_10
    move-object/from16 v0, v34

    #@3d4
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@3d6
    move-object/from16 v0, v40

    #@3d8
    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    #@3db
    .line 854
    :cond_9
    :goto_6
    const/16 v9, 0x8

    #@3dd
    move-object/from16 v0, p0

    #@3df
    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@3e2
    .line 855
    const/16 v9, 0x8

    #@3e4
    const-wide/32 v12, 0xea60

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@3ec
    .line 857
    move-object/from16 v0, p0

    #@3ee
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3f0
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3f2
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3f5
    .line 842
    throw v3

    #@3f6
    .line 848
    :catch_8
    move-exception v27

    #@3f7
    .line 849
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BackupManagerService"

    #@3fa
    const-string/jumbo v12, "Restore observer threw"

    #@3fd
    move-object/from16 v0, v27

    #@3ff
    invoke-static {v9, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@402
    goto :goto_6

    #@403
    .line 846
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v38

    #@404
    .line 847
    .restart local v38    # "re":Landroid/os/RemoteException;
    const-string/jumbo v9, "BackupManagerService"

    #@407
    const-string/jumbo v12, "Unable to report listing to observer"

    #@40a
    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40d
    goto :goto_6

    #@40e
    .line 864
    .end local v34    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v38    # "re":Landroid/os/RemoteException;
    :pswitch_d
    move-object/from16 v0, p0

    #@410
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@412
    move-object/from16 v0, p1

    #@414
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@416
    move-object/from16 v0, p1

    #@418
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41a
    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    #@41d
    goto/16 :goto_0

    #@41f
    .line 870
    :pswitch_e
    move-object/from16 v0, p0

    #@421
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@423
    monitor-enter v9

    #@424
    .line 871
    :try_start_11
    move-object/from16 v0, p0

    #@426
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@428
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@42a
    if-eqz v3, :cond_a

    #@42c
    .line 876
    const-string/jumbo v3, "BackupManagerService"

    #@42f
    const-string/jumbo v12, "Restore session timed out; aborting"

    #@432
    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@435
    .line 877
    move-object/from16 v0, p0

    #@437
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@439
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@43b
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    #@43e
    .line 878
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    #@440
    move-object/from16 v0, p0

    #@442
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@444
    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@446
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@449
    .line 879
    move-object/from16 v0, p0

    #@44b
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@44d
    move-object/from16 v0, p0

    #@44f
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@451
    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@453
    .line 878
    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    #@456
    move-object/from16 v0, p0

    #@458
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    #@45b
    :cond_a
    monitor-exit v9

    #@45c
    goto/16 :goto_0

    #@45e
    .line 870
    :catchall_7
    move-exception v3

    #@45f
    monitor-exit v9

    #@460
    throw v3

    #@461
    .line 887
    :pswitch_f
    move-object/from16 v0, p0

    #@463
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@465
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@467
    monitor-enter v9

    #@468
    .line 888
    :try_start_12
    move-object/from16 v0, p0

    #@46a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@46c
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@46e
    move-object/from16 v0, p1

    #@470
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@472
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@475
    move-result-object v32

    #@476
    check-cast v32, Lcom/android/server/backup/BackupManagerService$FullParams;

    #@478
    .line 889
    .local v32, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v32, :cond_c

    #@47a
    .line 890
    const-string/jumbo v3, "BackupManagerService"

    #@47d
    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    #@480
    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@483
    .line 893
    move-object/from16 v0, p0

    #@485
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@487
    move-object/from16 v0, v32

    #@489
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    #@48c
    .line 896
    move-object/from16 v0, p0

    #@48e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@490
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@492
    move-object/from16 v0, p1

    #@494
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@496
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    #@499
    .line 899
    move-object/from16 v0, v32

    #@49b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@49d
    if-eqz v3, :cond_b

    #@49f
    .line 901
    :try_start_13
    move-object/from16 v0, v32

    #@4a1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@4a3
    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    #@4a6
    :cond_b
    :goto_7
    monitor-exit v9

    #@4a7
    goto/16 :goto_0

    #@4a9
    .line 907
    :cond_c
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@4ac
    new-instance v12, Ljava/lang/StringBuilder;

    #@4ae
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4b1
    const-string/jumbo v13, "couldn\'t find params for token "

    #@4b4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v12

    #@4b8
    move-object/from16 v0, p1

    #@4ba
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@4bc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4bf
    move-result-object v12

    #@4c0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c3
    move-result-object v12

    #@4c4
    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@4c7
    goto :goto_7

    #@4c8
    .line 887
    .end local v32    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_8
    move-exception v3

    #@4c9
    monitor-exit v9

    #@4ca
    throw v3

    #@4cb
    .line 915
    :pswitch_10
    move-object/from16 v0, p1

    #@4cd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4cf
    move-object/from16 v28, v0

    #@4d1
    check-cast v28, Landroid/content/Intent;

    #@4d3
    .line 916
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@4d5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4d7
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4d9
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@4db
    move-object/from16 v0, v28

    #@4dd
    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@4e0
    goto/16 :goto_0

    #@4e2
    .line 902
    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v32    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_a
    move-exception v25

    #@4e3
    .restart local v25    # "e":Landroid/os/RemoteException;
    goto :goto_7

    #@4e4
    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
