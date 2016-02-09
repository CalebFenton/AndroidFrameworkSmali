.class Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 8316
    .local p2, "transportNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 8317
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    #@7
    .line 8316
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    #@0
    .prologue
    .line 8322
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    #@4
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v12

    #@8
    .local v12, "transportName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v13

    #@c
    if-eqz v13, :cond_3

    #@e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v11

    #@12
    check-cast v11, Ljava/lang/String;

    #@14
    .line 8323
    .local v11, "transportName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@18
    invoke-static {v13, v11}, Lcom/android/server/backup/BackupManagerService;->-wrap4(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@1b
    move-result-object v10

    #@1c
    .line 8324
    .local v10, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v10, :cond_0

    #@1e
    .line 8325
    const-string/jumbo v13, "BackupManagerService"

    #@21
    new-instance v14, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v15, "Requested init for "

    #@29
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v14

    #@2d
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v14

    #@31
    const-string/jumbo v15, " but not found"

    #@34
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    goto :goto_0

    #@40
    .line 8363
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    #@41
    .line 8369
    .local v4, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@43
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@45
    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@47
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4a
    .line 8320
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    #@4b
    .line 8329
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string/jumbo v13, "BackupManagerService"

    #@4e
    new-instance v14, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v15, "Initializing (wiping) backup transport storage: "

    #@56
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v14

    #@5a
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v14

    #@5e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v14

    #@62
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 8330
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@68
    move-result-object v13

    #@69
    const/16 v14, 0xb05

    #@6b
    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6e
    .line 8331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@71
    move-result-wide v8

    #@72
    .line 8332
    .local v8, "startRealtime":J
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    #@75
    move-result v7

    #@76
    .line 8334
    .local v7, "status":I
    if-nez v7, :cond_1

    #@78
    .line 8335
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@7b
    move-result v7

    #@7c
    .line 8339
    :cond_1
    if-nez v7, :cond_2

    #@7e
    .line 8340
    const-string/jumbo v13, "BackupManagerService"

    #@81
    const-string/jumbo v14, "Device init successful"

    #@84
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 8341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8a
    move-result-wide v14

    #@8b
    sub-long/2addr v14, v8

    #@8c
    long-to-int v6, v14

    #@8d
    .line 8342
    .local v6, "millis":I
    const/4 v13, 0x0

    #@8e
    new-array v13, v13, [Ljava/lang/Object;

    #@90
    const/16 v14, 0xb0b

    #@92
    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@95
    .line 8343
    move-object/from16 v0, p0

    #@97
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@99
    new-instance v14, Ljava/io/File;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9f
    iget-object v15, v15, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@a1
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@a4
    move-result-object v16

    #@a5
    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a8
    invoke-virtual {v13, v14}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@ab
    .line 8344
    const/4 v13, 0x2

    #@ac
    new-array v13, v13, [Ljava/lang/Object;

    #@ae
    const/4 v14, 0x0

    #@af
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v14

    #@b3
    const/4 v15, 0x0

    #@b4
    aput-object v14, v13, v15

    #@b6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b9
    move-result-object v14

    #@ba
    const/4 v15, 0x1

    #@bb
    aput-object v14, v13, v15

    #@bd
    const/16 v14, 0xb09

    #@bf
    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@c2
    .line 8345
    move-object/from16 v0, p0

    #@c4
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c6
    iget-object v14, v13, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@c8
    monitor-enter v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c9
    .line 8346
    :try_start_2
    move-object/from16 v0, p0

    #@cb
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@cd
    const/4 v15, 0x0

    #@ce
    invoke-virtual {v13, v15, v11}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d1
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d2
    goto/16 :goto_0

    #@d4
    .line 8365
    .end local v6    # "millis":I
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    #@d5
    .line 8366
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v13, "BackupManagerService"

    #@d8
    const-string/jumbo v14, "Unexpected error performing init"

    #@db
    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@de
    .line 8369
    move-object/from16 v0, p0

    #@e0
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e2
    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@e4
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    #@e7
    goto/16 :goto_1

    #@e9
    .line 8345
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "millis":I
    .restart local v7    # "status":I
    .restart local v8    # "startRealtime":J
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    #@ea
    :try_start_5
    monitor-exit v14

    #@eb
    throw v13
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ec
    .line 8367
    .end local v6    # "millis":I
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v13

    #@ed
    .line 8369
    move-object/from16 v0, p0

    #@ef
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f1
    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@f3
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    #@f6
    .line 8367
    throw v13

    #@f7
    .line 8351
    .restart local v7    # "status":I
    .restart local v8    # "startRealtime":J
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    const-string/jumbo v13, "BackupManagerService"

    #@fa
    const-string/jumbo v14, "Transport error in initializeDevice()"

    #@fd
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    .line 8352
    const-string/jumbo v13, "(initialize)"

    #@103
    const/16 v14, 0xb06

    #@105
    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@108
    .line 8353
    move-object/from16 v0, p0

    #@10a
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10c
    iget-object v14, v13, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@10e
    monitor-enter v14
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@10f
    .line 8354
    :try_start_7
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@113
    const/4 v15, 0x1

    #@114
    invoke-virtual {v13, v15, v11}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@117
    :try_start_8
    monitor-exit v14

    #@118
    .line 8357
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    #@11b
    move-result-wide v2

    #@11c
    .line 8358
    .local v2, "delay":J
    const-string/jumbo v13, "BackupManagerService"

    #@11f
    new-instance v14, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v15, "Init failed on "

    #@127
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v14

    #@12b
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v14

    #@12f
    const-string/jumbo v15, " resched in "

    #@132
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v14

    #@136
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@139
    move-result-object v14

    #@13a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v14

    #@13e
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@141
    .line 8359
    move-object/from16 v0, p0

    #@143
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@145
    invoke-static {v13}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    #@148
    move-result-object v13

    #@149
    .line 8360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14c
    move-result-wide v14

    #@14d
    add-long/2addr v14, v2

    #@14e
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@152
    move-object/from16 v16, v0

    #@154
    move-object/from16 v0, v16

    #@156
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@158
    move-object/from16 v16, v0

    #@15a
    .line 8359
    const/16 v17, 0x0

    #@15c
    move/from16 v0, v17

    #@15e
    move-object/from16 v1, v16

    #@160
    invoke-virtual {v13, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@163
    goto/16 :goto_0

    #@165
    .line 8353
    .end local v2    # "delay":J
    :catchall_2
    move-exception v13

    #@166
    monitor-exit v14

    #@167
    throw v13
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@168
    .line 8369
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    #@16a
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16c
    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@16e
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    #@171
    goto/16 :goto_1
.end method
