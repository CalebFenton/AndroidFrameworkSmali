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
    .line 744
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 745
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 744
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 750
    move-object/from16 v0, p1

    #@2
    iget v3, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 748
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 753
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
    .line 755
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
    invoke-static {v3, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@1f
    move-result-object v4

    #@20
    .line 756
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_1

    #@22
    .line 757
    const-string/jumbo v3, "BackupManagerService"

    #@25
    const-string/jumbo v9, "Backup requested but no transport available"

    #@28
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 758
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@31
    monitor-enter v9

    #@32
    .line 759
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
    .line 761
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
    .line 758
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v9

    #@46
    throw v3

    #@47
    .line 766
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    #@49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@4c
    .line 767
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@50
    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@52
    .line 768
    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@58
    monitor-enter v9

    #@59
    .line 772
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
    .line 773
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
    .line 774
    .local v23, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v23

    #@81
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@84
    goto :goto_1

    #@85
    .line 768
    .end local v23    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@86
    monitor-exit v9

    #@87
    throw v3

    #@88
    .line 776
    .restart local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    #@8b
    const-string/jumbo v12, "clearing pending backups"

    #@8e
    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 777
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@95
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@97
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@9a
    .line 780
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
    .line 790
    const/16 v44, 0x1

    #@a4
    .line 791
    .local v44, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v3

    #@a8
    if-lez v3, :cond_4

    #@aa
    .line 794
    :try_start_3
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    .line 795
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b4
    .line 796
    const/4 v8, 0x0

    #@b5
    const/4 v9, 0x0

    #@b6
    const/4 v10, 0x0

    #@b7
    .line 795
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    #@ba
    .line 797
    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    #@bc
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c1
    move-result-object v39

    #@c2
    .line 798
    .local v39, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    #@c4
    move-object/from16 v1, v39

    #@c6
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@c9
    .line 810
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    :goto_2
    if-nez v44, :cond_0

    #@cb
    .line 812
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@cf
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@d1
    monitor-enter v9

    #@d2
    .line 813
    :try_start_4
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d6
    const/4 v12, 0x0

    #@d7
    iput-boolean v12, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@d9
    monitor-exit v9

    #@da
    .line 815
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@de
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@e0
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 799
    :catch_0
    move-exception v25

    #@e6
    .line 802
    .local v25, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@e9
    const-string/jumbo v9, "Transport became unavailable attempting backup"

    #@ec
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 803
    const/16 v44, 0x0

    #@f1
    goto :goto_2

    #@f2
    .line 806
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    #@f5
    const-string/jumbo v9, "Backup requested but nothing pending"

    #@f8
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@fb
    .line 807
    const/16 v44, 0x0

    #@fd
    goto :goto_2

    #@fe
    .line 812
    :catchall_2
    move-exception v3

    #@ff
    monitor-exit v9

    #@100
    throw v3

    #@101
    .line 823
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v44    # "staged":Z
    :pswitch_2
    :try_start_5
    move-object/from16 v0, p1

    #@103
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@105
    check-cast v10, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@107
    .line 825
    .local v10, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v10}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    #@10a
    goto/16 :goto_0

    #@10c
    .line 826
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_1
    move-exception v26

    #@10d
    .line 827
    .local v26, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    #@110
    new-instance v9, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v12, "Invalid backup task in flight, obj="

    #@118
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    move-object/from16 v0, p1

    #@11e
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@120
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v9

    #@124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v9

    #@128
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    goto/16 :goto_0

    #@12d
    .line 836
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p1

    #@12f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@131
    move-object/from16 v46, v0

    #@133
    check-cast v46, Landroid/util/Pair;

    #@135
    .line 837
    .local v46, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    move-object/from16 v0, v46

    #@137
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@139
    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@13b
    move-object/from16 v0, v46

    #@13d
    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@13f
    check-cast v9, Ljava/lang/Long;

    #@141
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@144
    move-result-wide v12

    #@145
    invoke-interface {v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete(J)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2

    #@148
    goto/16 :goto_0

    #@14a
    .line 838
    .end local v46    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    :catch_2
    move-exception v26

    #@14b
    .line 839
    .restart local v26    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    #@14e
    new-instance v9, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v12, "Invalid completion in flight, obj="

    #@156
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v9

    #@15a
    move-object/from16 v0, p1

    #@15c
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15e
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v9

    #@162
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v9

    #@166
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@169
    goto/16 :goto_0

    #@16b
    .line 848
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_4
    move-object/from16 v0, p1

    #@16d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16f
    move-object/from16 v34, v0

    #@171
    check-cast v34, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    #@173
    .line 849
    .local v34, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    #@175
    move-object/from16 v0, p0

    #@177
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@179
    move-object/from16 v0, v34

    #@17b
    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    #@17d
    .line 850
    move-object/from16 v0, v34

    #@17f
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@181
    move-object/from16 v0, v34

    #@183
    iget-boolean v12, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    #@185
    move-object/from16 v0, v34

    #@187
    iget-boolean v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    #@189
    .line 851
    move-object/from16 v0, v34

    #@18b
    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    #@18d
    move-object/from16 v0, v34

    #@18f
    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    #@191
    .line 852
    move-object/from16 v0, v34

    #@193
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    #@195
    move-object/from16 v16, v0

    #@197
    move-object/from16 v0, v34

    #@199
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    #@19b
    move-object/from16 v17, v0

    #@19d
    .line 853
    move-object/from16 v0, v34

    #@19f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    #@1a1
    move/from16 v18, v0

    #@1a3
    move-object/from16 v0, v34

    #@1a5
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    #@1a7
    move/from16 v19, v0

    #@1a9
    move-object/from16 v0, v34

    #@1ab
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    #@1ad
    move/from16 v20, v0

    #@1af
    .line 854
    move-object/from16 v0, v34

    #@1b1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    #@1b3
    move-object/from16 v21, v0

    #@1b5
    move-object/from16 v0, v34

    #@1b7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b9
    move-object/from16 v22, v0

    #@1bb
    .line 849
    invoke-direct/range {v8 .. v22}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@1be
    .line 855
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    #@1c0
    const-string/jumbo v9, "adb-backup"

    #@1c3
    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1c6
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 861
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v34    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_5
    move-object/from16 v0, p1

    #@1cd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cf
    move-object/from16 v45, v0

    #@1d1
    check-cast v45, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1d3
    .line 862
    .local v45, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    #@1d5
    const-string/jumbo v9, "transport-backup"

    #@1d8
    move-object/from16 v0, v45

    #@1da
    invoke-direct {v3, v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1dd
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 868
    .end local v45    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_6
    move-object/from16 v0, p1

    #@1e4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e6
    move-object/from16 v38, v0

    #@1e8
    check-cast v38, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@1ea
    .line 869
    .local v38, "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    const-string/jumbo v3, "BackupManagerService"

    #@1ed
    new-instance v9, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string/jumbo v12, "MSG_RUN_RESTORE observer="

    #@1f5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v9

    #@1f9
    move-object/from16 v0, v38

    #@1fb
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@1fd
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v9

    #@201
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v9

    #@205
    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@208
    .line 870
    new-instance v10, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@20a
    move-object/from16 v0, p0

    #@20c
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20e
    move-object/from16 v0, v38

    #@210
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@212
    .line 871
    move-object/from16 v0, v38

    #@214
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@216
    move-object/from16 v0, v38

    #@218
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@21a
    move-object/from16 v0, v38

    #@21c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@21e
    move-object/from16 v16, v0

    #@220
    move-object/from16 v0, v38

    #@222
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@224
    move/from16 v17, v0

    #@226
    .line 872
    move-object/from16 v0, v38

    #@228
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@22a
    move/from16 v18, v0

    #@22c
    move-object/from16 v0, v38

    #@22e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@230
    move-object/from16 v19, v0

    #@232
    .line 870
    invoke-direct/range {v10 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    #@235
    .line 873
    .restart local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-virtual {v0, v3, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@23c
    move-result-object v42

    #@23d
    .line 874
    .local v42, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@23f
    move-object/from16 v1, v42

    #@241
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@244
    goto/16 :goto_0

    #@246
    .line 882
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v38    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v42    # "restoreMsg":Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p1

    #@248
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24a
    move-object/from16 v36, v0

    #@24c
    check-cast v36, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    #@24e
    .line 883
    .local v36, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@250
    move-object/from16 v0, p0

    #@252
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@254
    move-object/from16 v0, v36

    #@256
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    #@258
    .line 884
    move-object/from16 v0, v36

    #@25a
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    #@25c
    move-object/from16 v0, v36

    #@25e
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    #@260
    .line 885
    move-object/from16 v0, v36

    #@262
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@264
    move-object/from16 v16, v0

    #@266
    move-object/from16 v0, v36

    #@268
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@26a
    move-object/from16 v17, v0

    #@26c
    .line 883
    invoke-direct/range {v11 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@26f
    .line 886
    .local v11, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    #@271
    const-string/jumbo v9, "adb-restore"

    #@274
    invoke-direct {v3, v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@277
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@27a
    goto/16 :goto_0

    #@27c
    .line 892
    .end local v11    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .end local v36    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :pswitch_8
    move-object/from16 v0, p1

    #@27e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@280
    move-object/from16 v32, v0

    #@282
    check-cast v32, Lcom/android/server/backup/BackupManagerService$ClearParams;

    #@284
    .line 893
    .local v32, "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    #@286
    move-object/from16 v0, p0

    #@288
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@28a
    move-object/from16 v0, v32

    #@28c
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@28e
    move-object/from16 v0, v32

    #@290
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    #@292
    invoke-direct {v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    #@295
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    #@298
    goto/16 :goto_0

    #@29a
    .line 900
    .end local v32    # "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    :pswitch_9
    move-object/from16 v0, p1

    #@29c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29e
    move-object/from16 v33, v0

    #@2a0
    check-cast v33, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    #@2a2
    .line 901
    .local v33, "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    #@2a4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2a6
    move-object/from16 v0, v33

    #@2a8
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    #@2aa
    move-object/from16 v0, v33

    #@2ac
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    #@2ae
    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@2b1
    goto/16 :goto_0

    #@2b3
    .line 910
    .end local v33    # "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    :pswitch_a
    move-object/from16 v0, p0

    #@2b5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b7
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2b9
    monitor-enter v9

    #@2ba
    .line 911
    :try_start_7
    new-instance v40, Ljava/util/HashSet;

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c0
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2c2
    move-object/from16 v0, v40

    #@2c4
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2c7
    .line 912
    .local v40, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2c9
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2cb
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2cd
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@2d0
    monitor-exit v9

    #@2d1
    .line 915
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d7
    move-object/from16 v0, v40

    #@2d9
    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    #@2dc
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    #@2df
    goto/16 :goto_0

    #@2e1
    .line 910
    .end local v40    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v3

    #@2e2
    monitor-exit v9

    #@2e3
    throw v3

    #@2e4
    .line 921
    :pswitch_b
    move-object/from16 v0, p0

    #@2e6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e8
    iget-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2ea
    monitor-enter v12

    #@2eb
    .line 922
    :try_start_8
    move-object/from16 v0, p0

    #@2ed
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ef
    move-object/from16 v0, p1

    #@2f1
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@2f3
    if-eqz v3, :cond_5

    #@2f5
    const/4 v3, 0x1

    #@2f6
    move v9, v3

    #@2f7
    :goto_3
    move-object/from16 v0, p1

    #@2f9
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2fb
    check-cast v3, Ljava/lang/String;

    #@2fd
    invoke-virtual {v13, v9, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    #@300
    .line 923
    move-object/from16 v0, p0

    #@302
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@304
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    #@307
    move-result-object v3

    #@308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30b
    move-result-wide v14

    #@30c
    .line 924
    move-object/from16 v0, p0

    #@30e
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@310
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@312
    .line 923
    const/4 v13, 0x0

    #@313
    invoke-virtual {v3, v13, v14, v15, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@316
    monitor-exit v12

    #@317
    goto/16 :goto_0

    #@319
    .line 922
    :cond_5
    const/4 v3, 0x0

    #@31a
    move v9, v3

    #@31b
    goto :goto_3

    #@31c
    .line 921
    :catchall_4
    move-exception v3

    #@31d
    monitor-exit v12

    #@31e
    throw v3

    #@31f
    .line 932
    :pswitch_c
    const/16 v43, 0x0

    #@321
    .line 933
    .local v43, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    #@323
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@325
    move-object/from16 v37, v0

    #@327
    check-cast v37, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    #@329
    .line 935
    .local v37, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_9
    move-object/from16 v0, v37

    #@32b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@32d
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@330
    move-result-object v43

    #@331
    .line 937
    .local v43, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, v37

    #@333
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@335
    monitor-enter v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@336
    .line 938
    :try_start_a
    move-object/from16 v0, v37

    #@338
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@33a
    move-object/from16 v0, v43

    #@33c
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@33e
    :try_start_b
    monitor-exit v9

    #@33f
    .line 940
    if-nez v43, :cond_6

    #@341
    const/4 v3, 0x0

    #@342
    new-array v3, v3, [Ljava/lang/Object;

    #@344
    const/16 v9, 0xb0f

    #@346
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    #@349
    .line 944
    :cond_6
    move-object/from16 v0, v37

    #@34b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@34d
    if-eqz v3, :cond_7

    #@34f
    .line 946
    :try_start_c
    move-object/from16 v0, v37

    #@351
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@353
    move-object/from16 v0, v43

    #@355
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    #@358
    .line 955
    :cond_7
    :goto_4
    const/16 v3, 0x8

    #@35a
    move-object/from16 v0, p0

    #@35c
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@35f
    .line 956
    const/16 v3, 0x8

    #@361
    const-wide/32 v12, 0xea60

    #@364
    move-object/from16 v0, p0

    #@366
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@369
    .line 958
    move-object/from16 v0, p0

    #@36b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@36d
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@36f
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@372
    goto/16 :goto_0

    #@374
    .line 937
    :catchall_5
    move-exception v3

    #@375
    :try_start_d
    monitor-exit v9

    #@376
    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    #@377
    .line 941
    .end local v43    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_3
    move-exception v27

    #@378
    .line 942
    .local v27, "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v3, "BackupManagerService"

    #@37b
    const-string/jumbo v9, "Error from transport getting set list"

    #@37e
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    #@381
    .line 944
    move-object/from16 v0, v37

    #@383
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@385
    if-eqz v3, :cond_8

    #@387
    .line 946
    :try_start_f
    move-object/from16 v0, v37

    #@389
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@38b
    move-object/from16 v0, v43

    #@38d
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    #@390
    .line 955
    :cond_8
    :goto_5
    const/16 v3, 0x8

    #@392
    move-object/from16 v0, p0

    #@394
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@397
    .line 956
    const/16 v3, 0x8

    #@399
    const-wide/32 v12, 0xea60

    #@39c
    move-object/from16 v0, p0

    #@39e
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@3a1
    .line 958
    move-object/from16 v0, p0

    #@3a3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3a5
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3a7
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3aa
    goto/16 :goto_0

    #@3ac
    .line 949
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v43    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_4
    move-exception v27

    #@3ad
    .line 950
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@3b0
    const-string/jumbo v9, "Restore observer threw"

    #@3b3
    move-object/from16 v0, v27

    #@3b5
    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b8
    goto :goto_4

    #@3b9
    .line 947
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v41

    #@3ba
    .line 948
    .local v41, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@3bd
    const-string/jumbo v9, "Unable to report listing to observer"

    #@3c0
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c3
    goto :goto_4

    #@3c4
    .line 949
    .end local v41    # "re":Landroid/os/RemoteException;
    .end local v43    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v27    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v27

    #@3c5
    .line 950
    const-string/jumbo v3, "BackupManagerService"

    #@3c8
    const-string/jumbo v9, "Restore observer threw"

    #@3cb
    move-object/from16 v0, v27

    #@3cd
    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d0
    goto :goto_5

    #@3d1
    .line 947
    :catch_7
    move-exception v41

    #@3d2
    .line 948
    .restart local v41    # "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@3d5
    const-string/jumbo v9, "Unable to report listing to observer"

    #@3d8
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3db
    goto :goto_5

    #@3dc
    .line 943
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v41    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v3

    #@3dd
    .line 944
    move-object/from16 v0, v37

    #@3df
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@3e1
    if-eqz v9, :cond_9

    #@3e3
    .line 946
    :try_start_10
    move-object/from16 v0, v37

    #@3e5
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@3e7
    move-object/from16 v0, v43

    #@3e9
    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    #@3ec
    .line 955
    :cond_9
    :goto_6
    const/16 v9, 0x8

    #@3ee
    move-object/from16 v0, p0

    #@3f0
    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@3f3
    .line 956
    const/16 v9, 0x8

    #@3f5
    const-wide/32 v12, 0xea60

    #@3f8
    move-object/from16 v0, p0

    #@3fa
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@3fd
    .line 958
    move-object/from16 v0, p0

    #@3ff
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@401
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@403
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@406
    .line 943
    throw v3

    #@407
    .line 949
    :catch_8
    move-exception v27

    #@408
    .line 950
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BackupManagerService"

    #@40b
    const-string/jumbo v12, "Restore observer threw"

    #@40e
    move-object/from16 v0, v27

    #@410
    invoke-static {v9, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@413
    goto :goto_6

    #@414
    .line 947
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v41

    #@415
    .line 948
    .restart local v41    # "re":Landroid/os/RemoteException;
    const-string/jumbo v9, "BackupManagerService"

    #@418
    const-string/jumbo v12, "Unable to report listing to observer"

    #@41b
    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41e
    goto :goto_6

    #@41f
    .line 965
    .end local v37    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v41    # "re":Landroid/os/RemoteException;
    :pswitch_d
    move-object/from16 v0, p0

    #@421
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@423
    move-object/from16 v0, p1

    #@425
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@427
    move-object/from16 v0, p1

    #@429
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42b
    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    #@42e
    goto/16 :goto_0

    #@430
    .line 971
    :pswitch_e
    move-object/from16 v0, p0

    #@432
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@434
    monitor-enter v9

    #@435
    .line 972
    :try_start_11
    move-object/from16 v0, p0

    #@437
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@439
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@43b
    if-eqz v3, :cond_a

    #@43d
    .line 977
    const-string/jumbo v3, "BackupManagerService"

    #@440
    const-string/jumbo v12, "Restore session timed out; aborting"

    #@443
    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@446
    .line 978
    move-object/from16 v0, p0

    #@448
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@44a
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@44c
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    #@44f
    .line 979
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    #@451
    move-object/from16 v0, p0

    #@453
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@455
    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@457
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@45a
    .line 980
    move-object/from16 v0, p0

    #@45c
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@45e
    move-object/from16 v0, p0

    #@460
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@462
    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@464
    .line 979
    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    #@467
    move-object/from16 v0, p0

    #@469
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    #@46c
    :cond_a
    monitor-exit v9

    #@46d
    goto/16 :goto_0

    #@46f
    .line 971
    :catchall_7
    move-exception v3

    #@470
    monitor-exit v9

    #@471
    throw v3

    #@472
    .line 988
    :pswitch_f
    move-object/from16 v0, p0

    #@474
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@476
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@478
    monitor-enter v9

    #@479
    .line 989
    :try_start_12
    move-object/from16 v0, p0

    #@47b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@47d
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@47f
    move-object/from16 v0, p1

    #@481
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@483
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@486
    move-result-object v35

    #@487
    check-cast v35, Lcom/android/server/backup/BackupManagerService$FullParams;

    #@489
    .line 990
    .local v35, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v35, :cond_c

    #@48b
    .line 991
    const-string/jumbo v3, "BackupManagerService"

    #@48e
    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    #@491
    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@494
    .line 994
    move-object/from16 v0, p0

    #@496
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@498
    move-object/from16 v0, v35

    #@49a
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    #@49d
    .line 997
    move-object/from16 v0, p0

    #@49f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4a1
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4a3
    move-object/from16 v0, p1

    #@4a5
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@4a7
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    #@4aa
    .line 1000
    move-object/from16 v0, v35

    #@4ac
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@4ae
    if-eqz v3, :cond_b

    #@4b0
    .line 1002
    :try_start_13
    move-object/from16 v0, v35

    #@4b2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@4b4
    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    #@4b7
    :cond_b
    :goto_7
    monitor-exit v9

    #@4b8
    goto/16 :goto_0

    #@4ba
    .line 1008
    :cond_c
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@4bd
    new-instance v12, Ljava/lang/StringBuilder;

    #@4bf
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4c2
    const-string/jumbo v13, "couldn\'t find params for token "

    #@4c5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c8
    move-result-object v12

    #@4c9
    move-object/from16 v0, p1

    #@4cb
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@4cd
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d0
    move-result-object v12

    #@4d1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d4
    move-result-object v12

    #@4d5
    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@4d8
    goto :goto_7

    #@4d9
    .line 988
    .end local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_8
    move-exception v3

    #@4da
    monitor-exit v9

    #@4db
    throw v3

    #@4dc
    .line 1016
    :pswitch_10
    move-object/from16 v0, p1

    #@4de
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e0
    move-object/from16 v28, v0

    #@4e2
    check-cast v28, Landroid/content/Intent;

    #@4e4
    .line 1017
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@4e6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4e8
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4ea
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@4ec
    move-object/from16 v0, v28

    #@4ee
    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@4f1
    goto/16 :goto_0

    #@4f3
    .line 1023
    .end local v28    # "intent":Landroid/content/Intent;
    :pswitch_11
    move-object/from16 v0, p1

    #@4f5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f7
    move-object/from16 v31, v0

    #@4f9
    check-cast v31, Lcom/android/server/backup/BackupManagerService$BackupParams;

    #@4fb
    .line 1027
    .local v31, "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    new-instance v16, Ljava/util/ArrayList;

    #@4fd
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@500
    .line 1028
    .local v16, "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, v31

    #@502
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->kvPackages:Ljava/util/ArrayList;

    #@504
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@507
    move-result-object v30

    #@508
    .local v30, "packageName$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    #@50b
    move-result v3

    #@50c
    if-eqz v3, :cond_d

    #@50e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@511
    move-result-object v29

    #@512
    check-cast v29, Ljava/lang/String;

    #@514
    .line 1029
    .local v29, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@516
    move-object/from16 v0, p0

    #@518
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@51a
    move-object/from16 v0, v29

    #@51c
    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@51f
    move-object/from16 v0, v16

    #@521
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@524
    goto :goto_8

    #@525
    .line 1031
    .end local v29    # "packageName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@527
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@529
    const/4 v9, 0x1

    #@52a
    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@52c
    .line 1032
    move-object/from16 v0, p0

    #@52e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@530
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@532
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@535
    .line 1034
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    #@537
    move-object/from16 v0, p0

    #@539
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@53b
    move-object/from16 v0, v31

    #@53d
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@53f
    move-object/from16 v0, v31

    #@541
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->dirName:Ljava/lang/String;

    #@543
    .line 1035
    move-object/from16 v0, v31

    #@545
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    #@547
    move-object/from16 v18, v0

    #@549
    move-object/from16 v0, v31

    #@54b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->fullPackages:Ljava/util/ArrayList;

    #@54d
    move-object/from16 v19, v0

    #@54f
    const/16 v17, 0x0

    #@551
    const/16 v20, 0x1

    #@553
    move-object v12, v2

    #@554
    .line 1034
    invoke-direct/range {v12 .. v20}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    #@557
    .line 1036
    .restart local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    #@559
    move-object/from16 v0, p0

    #@55b
    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@55e
    move-result-object v39

    #@55f
    .line 1037
    .restart local v39    # "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    #@561
    move-object/from16 v1, v39

    #@563
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@566
    goto/16 :goto_0

    #@568
    .line 1003
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v16    # "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v30    # "packageName$iterator":Ljava/util/Iterator;
    .end local v31    # "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    .restart local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_a
    move-exception v25

    #@569
    .restart local v25    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@56b
    .line 750
    nop

    #@56c
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
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
