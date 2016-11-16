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
    .line 9067
    .local p2, "transportNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 9068
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    #@7
    .line 9067
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    #@0
    .prologue
    .line 9073
    :try_start_0
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    #@2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v9

    #@6
    .local v9, "transportName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v10

    #@a
    if-eqz v10, :cond_3

    #@c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v8

    #@10
    check-cast v8, Ljava/lang/String;

    #@12
    .line 9074
    .local v8, "transportName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14
    invoke-static {v10, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@17
    move-result-object v7

    #@18
    .line 9075
    .local v7, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v7, :cond_0

    #@1a
    .line 9076
    const-string/jumbo v10, "BackupManagerService"

    #@1d
    new-instance v11, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v12, "Requested init for "

    #@25
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v11

    #@29
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v11

    #@2d
    const-string/jumbo v12, " but not found"

    #@30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v11

    #@38
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 9114
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@3d
    .line 9115
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "BackupManagerService"

    #@40
    const-string/jumbo v11, "Unexpected error performing init"

    #@43
    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 9118
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@48
    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@4a
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4d
    .line 9071
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    #@4e
    .line 9080
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "transportName":Ljava/lang/String;
    .restart local v9    # "transportName$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    const-string/jumbo v10, "BackupManagerService"

    #@51
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v12, "Initializing (wiping) backup transport storage: "

    #@59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v11

    #@61
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v11

    #@65
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 9081
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    const/16 v11, 0xb05

    #@6e
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@71
    .line 9082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@74
    move-result-wide v4

    #@75
    .line 9083
    .local v4, "startRealtime":J
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    #@78
    move-result v6

    #@79
    .line 9085
    .local v6, "status":I
    if-nez v6, :cond_1

    #@7b
    .line 9086
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@7e
    move-result v6

    #@7f
    .line 9090
    :cond_1
    if-nez v6, :cond_2

    #@81
    .line 9091
    const-string/jumbo v10, "BackupManagerService"

    #@84
    const-string/jumbo v11, "Device init successful"

    #@87
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 9092
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8d
    move-result-wide v10

    #@8e
    sub-long/2addr v10, v4

    #@8f
    long-to-int v3, v10

    #@90
    .line 9093
    .local v3, "millis":I
    const/4 v10, 0x0

    #@91
    new-array v10, v10, [Ljava/lang/Object;

    #@93
    const/16 v11, 0xb0b

    #@95
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@98
    .line 9094
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9a
    new-instance v11, Ljava/io/File;

    #@9c
    iget-object v12, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9e
    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@a0
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@a3
    move-result-object v13

    #@a4
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a7
    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@aa
    .line 9095
    const/4 v10, 0x2

    #@ab
    new-array v10, v10, [Ljava/lang/Object;

    #@ad
    const/4 v11, 0x0

    #@ae
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b1
    move-result-object v11

    #@b2
    const/4 v12, 0x0

    #@b3
    aput-object v11, v10, v12

    #@b5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v11

    #@b9
    const/4 v12, 0x1

    #@ba
    aput-object v11, v10, v12

    #@bc
    const/16 v11, 0xb09

    #@be
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@c1
    .line 9096
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c3
    iget-object v11, v10, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@c5
    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c6
    .line 9097
    :try_start_3
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c8
    const/4 v12, 0x0

    #@c9
    invoke-virtual {v10, v12, v8}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@cc
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cd
    goto/16 :goto_0

    #@cf
    .line 9116
    .end local v3    # "millis":I
    .end local v4    # "startRealtime":J
    .end local v6    # "status":I
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@d0
    .line 9118
    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d2
    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@d4
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d7
    .line 9116
    throw v10

    #@d8
    .line 9096
    .restart local v3    # "millis":I
    .restart local v4    # "startRealtime":J
    .restart local v6    # "status":I
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "transportName":Ljava/lang/String;
    .restart local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v10

    #@d9
    :try_start_5
    monitor-exit v11

    #@da
    throw v10

    #@db
    .line 9102
    .end local v3    # "millis":I
    :cond_2
    const-string/jumbo v10, "BackupManagerService"

    #@de
    const-string/jumbo v11, "Transport error in initializeDevice()"

    #@e1
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    .line 9103
    const-string/jumbo v10, "(initialize)"

    #@e7
    const/16 v11, 0xb06

    #@e9
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@ec
    .line 9104
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ee
    iget-object v11, v10, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@f0
    monitor-enter v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f1
    .line 9105
    :try_start_6
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f3
    const/4 v12, 0x1

    #@f4
    invoke-virtual {v10, v12, v8}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@f7
    :try_start_7
    monitor-exit v11

    #@f8
    .line 9108
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    #@fb
    move-result-wide v0

    #@fc
    .line 9109
    .local v0, "delay":J
    const-string/jumbo v10, "BackupManagerService"

    #@ff
    new-instance v11, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v12, "Init failed on "

    #@107
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v11

    #@10b
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v11

    #@10f
    const-string/jumbo v12, " resched in "

    #@112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v11

    #@116
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@119
    move-result-object v11

    #@11a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v11

    #@11e
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 9110
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@123
    invoke-static {v10}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    #@126
    move-result-object v10

    #@127
    .line 9111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12a
    move-result-wide v12

    #@12b
    add-long/2addr v12, v0

    #@12c
    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@12e
    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@130
    .line 9110
    const/4 v14, 0x0

    #@131
    invoke-virtual {v10, v14, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@134
    goto/16 :goto_0

    #@136
    .line 9104
    .end local v0    # "delay":J
    :catchall_2
    move-exception v10

    #@137
    monitor-exit v11

    #@138
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@139
    .line 9118
    .end local v4    # "startRealtime":J
    .end local v6    # "status":I
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@13b
    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@13d
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    #@140
    goto/16 :goto_1
.end method
