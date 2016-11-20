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
    .line 745
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 746
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 745
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 751
    move-object/from16 v0, p1

    #@2
    iget v3, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 749
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 754
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
    .line 756
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
    .line 757
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_1

    #@22
    .line 758
    const-string/jumbo v3, "BackupManagerService"

    #@25
    const-string/jumbo v9, "Backup requested but no transport available"

    #@28
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 759
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@31
    monitor-enter v9

    #@32
    .line 760
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
    .line 762
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
    .line 759
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v9

    #@46
    throw v3

    #@47
    .line 767
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    #@49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@4c
    .line 768
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@50
    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@52
    .line 769
    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@58
    monitor-enter v9

    #@59
    .line 773
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
    .line 774
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
    .line 775
    .local v23, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v23

    #@81
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@84
    goto :goto_1

    #@85
    .line 769
    .end local v23    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@86
    monitor-exit v9

    #@87
    throw v3

    #@88
    .line 777
    .restart local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    #@8b
    const-string/jumbo v12, "clearing pending backups"

    #@8e
    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 778
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@95
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@97
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@9a
    .line 781
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
    .line 791
    const/16 v45, 0x1

    #@a4
    .line 792
    .local v45, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v3

    #@a8
    if-lez v3, :cond_4

    #@aa
    .line 795
    :try_start_3
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    .line 796
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b4
    .line 797
    const/4 v8, 0x0

    #@b5
    const/4 v9, 0x0

    #@b6
    const/4 v10, 0x0

    #@b7
    .line 796
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    #@ba
    .line 798
    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    #@bc
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c1
    move-result-object v39

    #@c2
    .line 799
    .local v39, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    #@c4
    move-object/from16 v1, v39

    #@c6
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@c9
    .line 811
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    :goto_2
    if-nez v45, :cond_0

    #@cb
    .line 813
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@cf
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@d1
    monitor-enter v9

    #@d2
    .line 814
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
    .line 816
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
    .line 800
    :catch_0
    move-exception v27

    #@e6
    .line 803
    .local v27, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@e9
    const-string/jumbo v9, "Transport became unavailable attempting backup"

    #@ec
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 804
    const/16 v45, 0x0

    #@f1
    goto :goto_2

    #@f2
    .line 807
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    #@f5
    const-string/jumbo v9, "Backup requested but nothing pending"

    #@f8
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@fb
    .line 808
    const/16 v45, 0x0

    #@fd
    goto :goto_2

    #@fe
    .line 813
    :catchall_2
    move-exception v3

    #@ff
    monitor-exit v9

    #@100
    throw v3

    #@101
    .line 824
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v45    # "staged":Z
    :pswitch_2
    :try_start_5
    move-object/from16 v0, p1

    #@103
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@105
    check-cast v10, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@107
    .line 826
    .local v10, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v10}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    #@10a
    goto/16 :goto_0

    #@10c
    .line 827
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_1
    move-exception v26

    #@10d
    .line 828
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
    .line 837
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p1

    #@12f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@131
    move-object/from16 v47, v0

    #@133
    check-cast v47, Landroid/util/Pair;

    #@135
    .line 838
    .local v47, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    move-object/from16 v0, v47

    #@137
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@139
    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@13b
    move-object/from16 v0, v47

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
    .line 839
    .end local v47    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    :catch_2
    move-exception v26

    #@14b
    .line 840
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
    .line 849
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
    .line 850
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
    .line 851
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
    .line 852
    move-object/from16 v0, v34

    #@18b
    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    #@18d
    move-object/from16 v0, v34

    #@18f
    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    #@191
    .line 853
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
    .line 854
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
    .line 855
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
    .line 850
    invoke-direct/range {v8 .. v22}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@1be
    .line 856
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
    .line 862
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v34    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_5
    move-object/from16 v0, p1

    #@1cd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cf
    move-object/from16 v46, v0

    #@1d1
    check-cast v46, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1d3
    .line 863
    .local v46, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    #@1d5
    const-string/jumbo v9, "transport-backup"

    #@1d8
    move-object/from16 v0, v46

    #@1da
    invoke-direct {v3, v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1dd
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 869
    .end local v46    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_6
    move-object/from16 v0, p1

    #@1e4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e6
    move-object/from16 v38, v0

    #@1e8
    check-cast v38, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@1ea
    .line 870
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
    .line 871
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
    .line 872
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
    .line 873
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
    .line 871
    invoke-direct/range {v10 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    #@235
    .line 874
    .restart local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-virtual {v0, v3, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@23c
    move-result-object v43

    #@23d
    .line 875
    .local v43, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@23f
    move-object/from16 v1, v43

    #@241
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@244
    goto/16 :goto_0

    #@246
    .line 883
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v38    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v43    # "restoreMsg":Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p1

    #@248
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24a
    move-object/from16 v36, v0

    #@24c
    check-cast v36, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    #@24e
    .line 884
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
    .line 885
    move-object/from16 v0, v36

    #@25a
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    #@25c
    move-object/from16 v0, v36

    #@25e
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    #@260
    .line 886
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
    .line 884
    invoke-direct/range {v11 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@26f
    .line 887
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
    .line 893
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
    .line 894
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
    .line 901
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
    .line 902
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
    .line 911
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
    .line 912
    :try_start_7
    new-instance v41, Ljava/util/HashSet;

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c0
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2c2
    move-object/from16 v0, v41

    #@2c4
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2c7
    .line 913
    .local v41, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
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
    .line 916
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d7
    move-object/from16 v0, v41

    #@2d9
    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    #@2dc
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    #@2df
    goto/16 :goto_0

    #@2e1
    .line 911
    .end local v41    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v3

    #@2e2
    monitor-exit v9

    #@2e3
    throw v3

    #@2e4
    .line 922
    :pswitch_b
    move-object/from16 v0, p0

    #@2e6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e8
    iget-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2ea
    monitor-enter v12

    #@2eb
    .line 923
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
    .line 924
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
    .line 925
    move-object/from16 v0, p0

    #@30e
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@310
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@312
    .line 924
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
    .line 923
    :cond_5
    const/4 v3, 0x0

    #@31a
    move v9, v3

    #@31b
    goto :goto_3

    #@31c
    .line 922
    :catchall_4
    move-exception v3

    #@31d
    monitor-exit v12

    #@31e
    throw v3

    #@31f
    .line 933
    :pswitch_c
    const/16 v44, 0x0

    #@321
    .line 934
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    #@323
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@325
    move-object/from16 v37, v0

    #@327
    check-cast v37, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    #@329
    .line 936
    .local v37, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_9
    move-object/from16 v0, v37

    #@32b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@32d
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@330
    move-result-object v44

    #@331
    .line 938
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, v37

    #@333
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@335
    monitor-enter v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@336
    .line 939
    :try_start_a
    move-object/from16 v0, v37

    #@338
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@33a
    move-object/from16 v0, v44

    #@33c
    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@33e
    :try_start_b
    monitor-exit v9

    #@33f
    .line 941
    if-nez v44, :cond_6

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
    .line 945
    :cond_6
    move-object/from16 v0, v37

    #@34b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@34d
    if-eqz v3, :cond_7

    #@34f
    .line 947
    :try_start_c
    move-object/from16 v0, v37

    #@351
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@353
    move-object/from16 v0, v44

    #@355
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    #@358
    .line 956
    :cond_7
    :goto_4
    const/16 v3, 0x8

    #@35a
    move-object/from16 v0, p0

    #@35c
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@35f
    .line 957
    const/16 v3, 0x8

    #@361
    const-wide/32 v12, 0xea60

    #@364
    move-object/from16 v0, p0

    #@366
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@369
    .line 959
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
    .line 938
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
    .line 942
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_3
    move-exception v27

    #@378
    .line 943
    .restart local v27    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v3, "BackupManagerService"

    #@37b
    new-instance v9, Ljava/lang/StringBuilder;

    #@37d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@380
    const-string/jumbo v12, "Error from transport getting set list: "

    #@383
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v9

    #@387
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@38a
    move-result-object v12

    #@38b
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    move-result-object v9

    #@38f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@392
    move-result-object v9

    #@393
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    #@396
    .line 945
    move-object/from16 v0, v37

    #@398
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@39a
    if-eqz v3, :cond_8

    #@39c
    .line 947
    :try_start_f
    move-object/from16 v0, v37

    #@39e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@3a0
    move-object/from16 v0, v44

    #@3a2
    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    #@3a5
    .line 956
    :cond_8
    :goto_5
    const/16 v3, 0x8

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@3ac
    .line 957
    const/16 v3, 0x8

    #@3ae
    const-wide/32 v12, 0xea60

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@3b6
    .line 959
    move-object/from16 v0, p0

    #@3b8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3ba
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3bc
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3bf
    goto/16 :goto_0

    #@3c1
    .line 950
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_4
    move-exception v27

    #@3c2
    .line 951
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@3c5
    new-instance v9, Ljava/lang/StringBuilder;

    #@3c7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3ca
    const-string/jumbo v12, "Restore observer threw: "

    #@3cd
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v9

    #@3d1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3d4
    move-result-object v12

    #@3d5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d8
    move-result-object v9

    #@3d9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3dc
    move-result-object v9

    #@3dd
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e0
    goto/16 :goto_4

    #@3e2
    .line 948
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v42

    #@3e3
    .line 949
    .local v42, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@3e6
    const-string/jumbo v9, "Unable to report listing to observer"

    #@3e9
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3ec
    goto/16 :goto_4

    #@3ee
    .line 950
    .end local v42    # "re":Landroid/os/RemoteException;
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v27    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v27

    #@3ef
    .line 951
    const-string/jumbo v3, "BackupManagerService"

    #@3f2
    new-instance v9, Ljava/lang/StringBuilder;

    #@3f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3f7
    const-string/jumbo v12, "Restore observer threw: "

    #@3fa
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fd
    move-result-object v9

    #@3fe
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@401
    move-result-object v12

    #@402
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@405
    move-result-object v9

    #@406
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@409
    move-result-object v9

    #@40a
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40d
    goto :goto_5

    #@40e
    .line 948
    :catch_7
    move-exception v42

    #@40f
    .line 949
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@412
    const-string/jumbo v9, "Unable to report listing to observer"

    #@415
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@418
    goto :goto_5

    #@419
    .line 944
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v42    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v3

    #@41a
    .line 945
    move-object/from16 v0, v37

    #@41c
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@41e
    if-eqz v9, :cond_9

    #@420
    .line 947
    :try_start_10
    move-object/from16 v0, v37

    #@422
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@424
    move-object/from16 v0, v44

    #@426
    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    #@429
    .line 956
    :cond_9
    :goto_6
    const/16 v9, 0x8

    #@42b
    move-object/from16 v0, p0

    #@42d
    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@430
    .line 957
    const/16 v9, 0x8

    #@432
    const-wide/32 v12, 0xea60

    #@435
    move-object/from16 v0, p0

    #@437
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@43a
    .line 959
    move-object/from16 v0, p0

    #@43c
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@43e
    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@440
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@443
    .line 944
    throw v3

    #@444
    .line 950
    :catch_8
    move-exception v27

    #@445
    .line 951
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BackupManagerService"

    #@448
    new-instance v12, Ljava/lang/StringBuilder;

    #@44a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@44d
    const-string/jumbo v13, "Restore observer threw: "

    #@450
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v12

    #@454
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@457
    move-result-object v13

    #@458
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v12

    #@45c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45f
    move-result-object v12

    #@460
    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@463
    goto :goto_6

    #@464
    .line 948
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v42

    #@465
    .line 949
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v9, "BackupManagerService"

    #@468
    const-string/jumbo v12, "Unable to report listing to observer"

    #@46b
    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46e
    goto :goto_6

    #@46f
    .line 966
    .end local v37    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v42    # "re":Landroid/os/RemoteException;
    :pswitch_d
    move-object/from16 v0, p0

    #@471
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@473
    move-object/from16 v0, p1

    #@475
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@477
    move-object/from16 v0, p1

    #@479
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47b
    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    #@47e
    goto/16 :goto_0

    #@480
    .line 972
    :pswitch_e
    move-object/from16 v0, p0

    #@482
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@484
    monitor-enter v9

    #@485
    .line 973
    :try_start_11
    move-object/from16 v0, p0

    #@487
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@489
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@48b
    if-eqz v3, :cond_a

    #@48d
    .line 978
    const-string/jumbo v3, "BackupManagerService"

    #@490
    const-string/jumbo v12, "Restore session timed out; aborting"

    #@493
    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@496
    .line 979
    move-object/from16 v0, p0

    #@498
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@49a
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@49c
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    #@49f
    .line 980
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    #@4a1
    move-object/from16 v0, p0

    #@4a3
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4a5
    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@4a7
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4aa
    .line 981
    move-object/from16 v0, p0

    #@4ac
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4ae
    move-object/from16 v0, p0

    #@4b0
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4b2
    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@4b4
    .line 980
    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    #@4b7
    move-object/from16 v0, p0

    #@4b9
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    #@4bc
    :cond_a
    monitor-exit v9

    #@4bd
    goto/16 :goto_0

    #@4bf
    .line 972
    :catchall_7
    move-exception v3

    #@4c0
    monitor-exit v9

    #@4c1
    throw v3

    #@4c2
    .line 989
    :pswitch_f
    move-object/from16 v0, p0

    #@4c4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4c6
    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4c8
    monitor-enter v9

    #@4c9
    .line 990
    :try_start_12
    move-object/from16 v0, p0

    #@4cb
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4cd
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4cf
    move-object/from16 v0, p1

    #@4d1
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@4d3
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4d6
    move-result-object v35

    #@4d7
    check-cast v35, Lcom/android/server/backup/BackupManagerService$FullParams;

    #@4d9
    .line 991
    .local v35, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v35, :cond_c

    #@4db
    .line 992
    const-string/jumbo v3, "BackupManagerService"

    #@4de
    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    #@4e1
    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4e4
    .line 995
    move-object/from16 v0, p0

    #@4e6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4e8
    move-object/from16 v0, v35

    #@4ea
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    #@4ed
    .line 998
    move-object/from16 v0, p0

    #@4ef
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4f1
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4f3
    move-object/from16 v0, p1

    #@4f5
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@4f7
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    #@4fa
    .line 1001
    move-object/from16 v0, v35

    #@4fc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@4fe
    if-eqz v3, :cond_b

    #@500
    .line 1003
    :try_start_13
    move-object/from16 v0, v35

    #@502
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@504
    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    #@507
    :cond_b
    :goto_7
    monitor-exit v9

    #@508
    goto/16 :goto_0

    #@50a
    .line 1009
    :cond_c
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@50d
    new-instance v12, Ljava/lang/StringBuilder;

    #@50f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@512
    const-string/jumbo v13, "couldn\'t find params for token "

    #@515
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@518
    move-result-object v12

    #@519
    move-object/from16 v0, p1

    #@51b
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@51d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@520
    move-result-object v12

    #@521
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@524
    move-result-object v12

    #@525
    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@528
    goto :goto_7

    #@529
    .line 989
    .end local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_8
    move-exception v3

    #@52a
    monitor-exit v9

    #@52b
    throw v3

    #@52c
    .line 1017
    :pswitch_10
    move-object/from16 v0, p1

    #@52e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@530
    move-object/from16 v28, v0

    #@532
    check-cast v28, Landroid/content/Intent;

    #@534
    .line 1018
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@536
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@538
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@53a
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@53c
    move-object/from16 v0, v28

    #@53e
    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@541
    goto/16 :goto_0

    #@543
    .line 1024
    .end local v28    # "intent":Landroid/content/Intent;
    :pswitch_11
    move-object/from16 v0, p1

    #@545
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@547
    move-object/from16 v31, v0

    #@549
    check-cast v31, Lcom/android/server/backup/BackupManagerService$BackupParams;

    #@54b
    .line 1028
    .local v31, "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    new-instance v16, Ljava/util/ArrayList;

    #@54d
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@550
    .line 1029
    .local v16, "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, v31

    #@552
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->kvPackages:Ljava/util/ArrayList;

    #@554
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@557
    move-result-object v30

    #@558
    .local v30, "packageName$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    #@55b
    move-result v3

    #@55c
    if-eqz v3, :cond_d

    #@55e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@561
    move-result-object v29

    #@562
    check-cast v29, Ljava/lang/String;

    #@564
    .line 1030
    .local v29, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@566
    move-object/from16 v0, p0

    #@568
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56a
    move-object/from16 v0, v29

    #@56c
    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@56f
    move-object/from16 v0, v16

    #@571
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@574
    goto :goto_8

    #@575
    .line 1032
    .end local v29    # "packageName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@577
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@579
    const/4 v9, 0x1

    #@57a
    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@57c
    .line 1033
    move-object/from16 v0, p0

    #@57e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@580
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@582
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@585
    .line 1035
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    #@587
    move-object/from16 v0, p0

    #@589
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@58b
    move-object/from16 v0, v31

    #@58d
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@58f
    move-object/from16 v0, v31

    #@591
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->dirName:Ljava/lang/String;

    #@593
    .line 1036
    move-object/from16 v0, v31

    #@595
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    #@597
    move-object/from16 v18, v0

    #@599
    move-object/from16 v0, v31

    #@59b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->fullPackages:Ljava/util/ArrayList;

    #@59d
    move-object/from16 v19, v0

    #@59f
    const/16 v17, 0x0

    #@5a1
    const/16 v20, 0x1

    #@5a3
    move-object v12, v2

    #@5a4
    .line 1035
    invoke-direct/range {v12 .. v20}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    #@5a7
    .line 1037
    .restart local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    #@5a9
    move-object/from16 v0, p0

    #@5ab
    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5ae
    move-result-object v39

    #@5af
    .line 1038
    .restart local v39    # "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    #@5b1
    move-object/from16 v1, v39

    #@5b3
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@5b6
    goto/16 :goto_0

    #@5b8
    .line 1044
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v16    # "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v30    # "packageName$iterator":Ljava/util/Iterator;
    .end local v31    # "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    :pswitch_12
    move-object/from16 v0, p1

    #@5ba
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5bc
    move-object/from16 v40, v0

    #@5be
    check-cast v40, Ljava/lang/String;

    #@5c0
    .line 1048
    .local v40, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5c4
    move-object/from16 v0, v40

    #@5c6
    invoke-static {v3, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@5c9
    goto/16 :goto_0

    #@5cb
    .line 1004
    .end local v40    # "pkgName":Ljava/lang/String;
    .restart local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_a
    move-exception v25

    #@5cc
    .local v25, "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@5ce
    .line 751
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
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
