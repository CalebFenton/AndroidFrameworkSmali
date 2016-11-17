.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 8543
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@7
    .line 8533
    const-string/jumbo v0, "StreamFeederThread"

    #@a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    #@c
    .line 8544
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@12
    .line 8545
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@18
    .line 8546
    const/4 v0, 0x1

    #@19
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@1c
    .line 8543
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 8688
    return-void
.end method

.method public handleTimeout()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 8697
    const-string/jumbo v0, "StreamFeederThread"

    #@6
    const-string/jumbo v1, "Full-data restore target timed out; shutting down"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 8699
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@e
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    #@11
    .line 8701
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@13
    aget-object v0, v0, v3

    #@15
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@18
    .line 8702
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@1a
    aput-object v4, v0, v3

    #@1c
    .line 8703
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@1e
    aget-object v0, v0, v2

    #@20
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 8704
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@25
    aput-object v4, v0, v2

    #@27
    .line 8695
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    #@0
    .prologue
    .line 8691
    return-void
.end method

.method public run()V
    .locals 23

    #@0
    .prologue
    .line 8551
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    .line 8552
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    const/16 v18, 0x0

    #@4
    .line 8555
    .local v18, "status":I
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@8
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@b
    move-result-object v2

    #@c
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@e
    .line 8554
    const/16 v3, 0xb1c

    #@10
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@13
    .line 8557
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@19
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1f
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@22
    move-result-object v6

    #@23
    const/4 v5, 0x0

    #@24
    const/4 v7, 0x0

    #@25
    const/4 v8, 0x0

    #@26
    move-object/from16 v4, p0

    #@28
    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2f
    .line 8558
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@3d
    const/4 v6, 0x0

    #@3e
    aget-object v5, v5, v6

    #@40
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    #@43
    move-object/from16 v0, p0

    #@45
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@47
    .line 8560
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@4b
    const/4 v3, 0x1

    #@4c
    aget-object v13, v2, v3

    #@4e
    .line 8561
    .local v13, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@52
    const/4 v3, 0x0

    #@53
    aget-object v19, v2, v3

    #@55
    .line 8562
    .local v19, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@59
    const/4 v3, 0x1

    #@5a
    aget-object v20, v2, v3

    #@5c
    .line 8564
    .local v20, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v10, 0x8000

    #@5f
    .line 8565
    .local v10, "bufferSize":I
    new-array v9, v10, [B

    #@61
    .line 8566
    .local v9, "buffer":[B
    new-instance v14, Ljava/io/FileOutputStream;

    #@63
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@66
    move-result-object v2

    #@67
    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@6a
    .line 8567
    .local v14, "engineOut":Ljava/io/FileOutputStream;
    new-instance v22, Ljava/io/FileInputStream;

    #@6c
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6f
    move-result-object v2

    #@70
    move-object/from16 v0, v22

    #@72
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@75
    .line 8570
    .local v22, "transportIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/Thread;

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@7b
    const-string/jumbo v4, "unified-restore-engine"

    #@7e
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@81
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@84
    .line 8573
    :cond_0
    :goto_0
    if-nez v18, :cond_3

    #@86
    .line 8575
    :try_start_0
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@8a
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@8d
    move-result-object v2

    #@8e
    move-object/from16 v0, v20

    #@90
    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    #@93
    move-result v17

    #@94
    .line 8576
    .local v17, "result":I
    if-lez v17, :cond_2

    #@96
    .line 8582
    move/from16 v0, v17

    #@98
    if-le v0, v10, :cond_1

    #@9a
    .line 8583
    move/from16 v10, v17

    #@9c
    .line 8584
    move/from16 v0, v17

    #@9e
    new-array v9, v0, [B

    #@a0
    .line 8586
    :cond_1
    move/from16 v21, v17

    #@a2
    .line 8587
    .local v21, "toCopy":I
    :goto_1
    if-lez v21, :cond_0

    #@a4
    .line 8588
    const/4 v2, 0x0

    #@a5
    move-object/from16 v0, v22

    #@a7
    move/from16 v1, v21

    #@a9
    invoke-virtual {v0, v9, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    #@ac
    move-result v15

    #@ad
    .line 8589
    .local v15, "n":I
    const/4 v2, 0x0

    #@ae
    invoke-virtual {v14, v9, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b1
    .line 8590
    sub-int v21, v21, v15

    #@b3
    goto :goto_1

    #@b4
    .line 8595
    .end local v15    # "n":I
    .end local v21    # "toCopy":I
    :cond_2
    const/4 v2, -0x1

    #@b5
    move/from16 v0, v17

    #@b7
    if-ne v0, v2, :cond_4

    #@b9
    .line 8601
    const/16 v18, 0x0

    #@bb
    .line 8632
    .end local v17    # "result":I
    :cond_3
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@bf
    const/4 v3, 0x1

    #@c0
    aget-object v2, v2, v3

    #@c2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c5
    .line 8633
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@c9
    const/4 v3, 0x0

    #@ca
    aget-object v2, v2, v3

    #@cc
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cf
    .line 8634
    move-object/from16 v0, p0

    #@d1
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@d3
    const/4 v3, 0x1

    #@d4
    aget-object v2, v2, v3

    #@d6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d9
    .line 8637
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@dd
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@e0
    .line 8640
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@e4
    const/4 v3, 0x0

    #@e5
    aget-object v2, v2, v3

    #@e7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ea
    .line 8644
    move-object/from16 v0, p0

    #@ec
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@f2
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@f5
    move-result-object v2

    #@f6
    if-eqz v2, :cond_5

    #@f8
    const/4 v2, 0x1

    #@f9
    :goto_2
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    #@fc
    .line 8648
    if-nez v18, :cond_6

    #@fe
    .line 8650
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@100
    .line 8654
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@108
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@10b
    move-result-object v3

    #@10c
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    #@10f
    .line 8657
    move-object/from16 v0, p0

    #@111
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@117
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    #@11a
    move-result-object v3

    #@11b
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    #@11e
    .line 8680
    :goto_3
    move-object/from16 v0, p0

    #@120
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@122
    move-object/from16 v0, v16

    #@124
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@127
    .line 8681
    const/4 v2, 0x0

    #@128
    move-object/from16 v0, p0

    #@12a
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@12d
    .line 8550
    :goto_4
    return-void

    #@12e
    .line 8606
    .restart local v17    # "result":I
    :cond_4
    :try_start_1
    const-string/jumbo v2, "StreamFeederThread"

    #@131
    new-instance v3, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v4, "Error "

    #@139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v3

    #@13d
    move/from16 v0, v17

    #@13f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    const-string/jumbo v4, " streaming restore for "

    #@146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    .line 8607
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@14e
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@151
    move-result-object v4

    #@152
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@154
    .line 8606
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v3

    #@158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v3

    #@15c
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15f
    .line 8608
    const/4 v2, 0x0

    #@160
    new-array v2, v2, [Ljava/lang/Object;

    #@162
    const/16 v3, 0xb0f

    #@164
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@167
    .line 8609
    move/from16 v18, v17

    #@169
    goto/16 :goto_0

    #@16b
    .line 8644
    .end local v17    # "result":I
    :cond_5
    const/4 v2, 0x0

    #@16c
    goto :goto_2

    #@16d
    .line 8662
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@16f
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@171
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@174
    move-result-object v2

    #@175
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@178
    .line 8671
    :goto_5
    move-object/from16 v0, p0

    #@17a
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@17c
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@182
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@185
    move-result-object v3

    #@186
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@188
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@18b
    .line 8674
    const/16 v2, -0x3e8

    #@18d
    move/from16 v0, v18

    #@18f
    if-ne v0, v2, :cond_7

    #@191
    .line 8675
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@193
    goto :goto_3

    #@194
    .line 8663
    :catch_0
    move-exception v11

    #@195
    .line 8666
    .local v11, "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@197
    goto :goto_5

    #@198
    .line 8677
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_7
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@19a
    goto :goto_3

    #@19b
    .line 8621
    :catch_1
    move-exception v11

    #@19c
    .line 8625
    .restart local v11    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "StreamFeederThread"

    #@19f
    const-string/jumbo v3, "Transport failed during restore"

    #@1a2
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a5
    .line 8626
    const/4 v2, 0x0

    #@1a6
    new-array v2, v2, [Ljava/lang/Object;

    #@1a8
    const/16 v3, 0xb0f

    #@1aa
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1ad
    .line 8627
    const/16 v18, -0x3e8

    #@1af
    .line 8632
    move-object/from16 v0, p0

    #@1b1
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@1b3
    const/4 v3, 0x1

    #@1b4
    aget-object v2, v2, v3

    #@1b6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b9
    .line 8633
    move-object/from16 v0, p0

    #@1bb
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@1bd
    const/4 v3, 0x0

    #@1be
    aget-object v2, v2, v3

    #@1c0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c3
    .line 8634
    move-object/from16 v0, p0

    #@1c5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@1c7
    const/4 v3, 0x1

    #@1c8
    aget-object v2, v2, v3

    #@1ca
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1cd
    .line 8637
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@1d1
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@1d4
    .line 8640
    move-object/from16 v0, p0

    #@1d6
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@1d8
    const/4 v3, 0x0

    #@1d9
    aget-object v2, v2, v3

    #@1db
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1de
    .line 8644
    move-object/from16 v0, p0

    #@1e0
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@1e6
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@1e9
    move-result-object v2

    #@1ea
    if-eqz v2, :cond_8

    #@1ec
    const/4 v2, 0x1

    #@1ed
    :goto_6
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    #@1f0
    .line 8662
    :try_start_4
    move-object/from16 v0, p0

    #@1f2
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1f4
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@1f7
    move-result-object v2

    #@1f8
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@1fb
    .line 8671
    :goto_7
    move-object/from16 v0, p0

    #@1fd
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1ff
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@205
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@208
    move-result-object v3

    #@209
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@20b
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@20e
    .line 8674
    const/16 v2, -0x3e8

    #@210
    move/from16 v0, v18

    #@212
    if-ne v0, v2, :cond_9

    #@214
    .line 8675
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@216
    .line 8680
    :goto_8
    move-object/from16 v0, p0

    #@218
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@21a
    move-object/from16 v0, v16

    #@21c
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@21f
    .line 8681
    const/4 v2, 0x0

    #@220
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@225
    goto/16 :goto_4

    #@227
    .line 8644
    :cond_8
    const/4 v2, 0x0

    #@228
    goto :goto_6

    #@229
    .line 8663
    :catch_2
    move-exception v11

    #@22a
    .line 8666
    const/16 v18, -0x3e8

    #@22c
    goto :goto_7

    #@22d
    .line 8677
    :cond_9
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@22f
    goto :goto_8

    #@230
    .line 8613
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v12

    #@231
    .line 8617
    .local v12, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "StreamFeederThread"

    #@234
    const-string/jumbo v3, "Unable to route data for restore"

    #@237
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23a
    .line 8618
    const/4 v2, 0x2

    #@23b
    new-array v2, v2, [Ljava/lang/Object;

    #@23d
    .line 8619
    move-object/from16 v0, p0

    #@23f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@241
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@244
    move-result-object v3

    #@245
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@247
    const/4 v4, 0x0

    #@248
    aput-object v3, v2, v4

    #@24a
    const-string/jumbo v3, "I/O error on pipes"

    #@24d
    const/4 v4, 0x1

    #@24e
    aput-object v3, v2, v4

    #@250
    .line 8618
    const/16 v3, 0xb10

    #@252
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@255
    .line 8620
    const/16 v18, -0x3eb

    #@257
    .line 8632
    move-object/from16 v0, p0

    #@259
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@25b
    const/4 v3, 0x1

    #@25c
    aget-object v2, v2, v3

    #@25e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@261
    .line 8633
    move-object/from16 v0, p0

    #@263
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@265
    const/4 v3, 0x0

    #@266
    aget-object v2, v2, v3

    #@268
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@26b
    .line 8634
    move-object/from16 v0, p0

    #@26d
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@26f
    const/4 v3, 0x1

    #@270
    aget-object v2, v2, v3

    #@272
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@275
    .line 8637
    move-object/from16 v0, p0

    #@277
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@279
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@27c
    .line 8640
    move-object/from16 v0, p0

    #@27e
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@280
    const/4 v3, 0x0

    #@281
    aget-object v2, v2, v3

    #@283
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@286
    .line 8644
    move-object/from16 v0, p0

    #@288
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@28a
    move-object/from16 v0, p0

    #@28c
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@28e
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@291
    move-result-object v2

    #@292
    if-eqz v2, :cond_a

    #@294
    const/4 v2, 0x1

    #@295
    :goto_9
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    #@298
    .line 8662
    :try_start_6
    move-object/from16 v0, p0

    #@29a
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@29c
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@29f
    move-result-object v2

    #@2a0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    #@2a3
    .line 8671
    :goto_a
    move-object/from16 v0, p0

    #@2a5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2a7
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2ad
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@2b0
    move-result-object v3

    #@2b1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2b3
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@2b6
    .line 8674
    const/16 v2, -0x3e8

    #@2b8
    move/from16 v0, v18

    #@2ba
    if-ne v0, v2, :cond_b

    #@2bc
    .line 8675
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2be
    .line 8680
    :goto_b
    move-object/from16 v0, p0

    #@2c0
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2c2
    move-object/from16 v0, v16

    #@2c4
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@2c7
    .line 8681
    const/4 v2, 0x0

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@2cd
    goto/16 :goto_4

    #@2cf
    .line 8644
    :cond_a
    const/4 v2, 0x0

    #@2d0
    goto :goto_9

    #@2d1
    .line 8663
    :catch_4
    move-exception v11

    #@2d2
    .line 8666
    .restart local v11    # "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@2d4
    goto :goto_a

    #@2d5
    .line 8677
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_b
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2d7
    goto :goto_b

    #@2d8
    .line 8628
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@2d9
    .line 8632
    move-object/from16 v0, p0

    #@2db
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@2dd
    const/4 v4, 0x1

    #@2de
    aget-object v3, v3, v4

    #@2e0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2e3
    .line 8633
    move-object/from16 v0, p0

    #@2e5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@2e7
    const/4 v4, 0x0

    #@2e8
    aget-object v3, v3, v4

    #@2ea
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2ed
    .line 8634
    move-object/from16 v0, p0

    #@2ef
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@2f1
    const/4 v4, 0x1

    #@2f2
    aget-object v3, v3, v4

    #@2f4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2f7
    .line 8637
    move-object/from16 v0, p0

    #@2f9
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@2fb
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@2fe
    .line 8640
    move-object/from16 v0, p0

    #@300
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@302
    const/4 v4, 0x0

    #@303
    aget-object v3, v3, v4

    #@305
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@308
    .line 8644
    move-object/from16 v0, p0

    #@30a
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@30c
    move-object/from16 v0, p0

    #@30e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@310
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@313
    move-result-object v3

    #@314
    if-eqz v3, :cond_c

    #@316
    const/4 v3, 0x1

    #@317
    :goto_c
    invoke-static {v4, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    #@31a
    .line 8648
    if-nez v18, :cond_d

    #@31c
    .line 8650
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@31e
    .line 8654
    move-object/from16 v0, p0

    #@320
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@322
    move-object/from16 v0, p0

    #@324
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@326
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@329
    move-result-object v4

    #@32a
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    #@32d
    .line 8657
    move-object/from16 v0, p0

    #@32f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@331
    move-object/from16 v0, p0

    #@333
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@335
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    #@338
    move-result-object v4

    #@339
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    #@33c
    .line 8680
    :goto_d
    move-object/from16 v0, p0

    #@33e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@340
    move-object/from16 v0, v16

    #@342
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@345
    .line 8681
    const/4 v3, 0x0

    #@346
    move-object/from16 v0, p0

    #@348
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@34b
    .line 8628
    throw v2

    #@34c
    .line 8644
    :cond_c
    const/4 v3, 0x0

    #@34d
    goto :goto_c

    #@34e
    .line 8662
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    #@350
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@352
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@355
    move-result-object v3

    #@356
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    #@359
    .line 8671
    :goto_e
    move-object/from16 v0, p0

    #@35b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@35d
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@35f
    move-object/from16 v0, p0

    #@361
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@363
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@366
    move-result-object v4

    #@367
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@369
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@36c
    .line 8674
    const/16 v3, -0x3e8

    #@36e
    move/from16 v0, v18

    #@370
    if-ne v0, v3, :cond_e

    #@372
    .line 8675
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@374
    goto :goto_d

    #@375
    .line 8663
    :catch_5
    move-exception v11

    #@376
    .line 8666
    .restart local v11    # "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@378
    goto :goto_e

    #@379
    .line 8677
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_e
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@37b
    goto :goto_d
.end method
