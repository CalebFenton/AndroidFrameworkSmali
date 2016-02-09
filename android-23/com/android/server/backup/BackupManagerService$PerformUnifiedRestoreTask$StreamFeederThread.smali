.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 7866
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@7
    .line 7857
    const-string/jumbo v0, "StreamFeederThread"

    #@a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    #@c
    .line 7867
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@12
    .line 7868
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@18
    .line 7869
    const/4 v0, 0x1

    #@19
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@1c
    .line 7866
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    #@0
    .prologue
    .line 7874
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    .line 7875
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    const/16 v18, 0x0

    #@4
    .line 7878
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
    .line 7877
    const/16 v3, 0xb1c

    #@10
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@13
    .line 7880
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
    move-result-object v5

    #@23
    const/4 v4, 0x0

    #@24
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x0

    #@26
    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2d
    .line 7881
    new-instance v12, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@3b
    const/4 v5, 0x0

    #@3c
    aget-object v4, v4, v5

    #@3e
    invoke-direct {v12, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    #@41
    .line 7883
    .local v12, "eThread":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@45
    const/4 v3, 0x1

    #@46
    aget-object v13, v2, v3

    #@48
    .line 7884
    .local v13, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@4c
    const/4 v3, 0x0

    #@4d
    aget-object v19, v2, v3

    #@4f
    .line 7885
    .local v19, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@53
    const/4 v3, 0x1

    #@54
    aget-object v20, v2, v3

    #@56
    .line 7887
    .local v20, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v9, 0x8000

    #@59
    .line 7888
    .local v9, "bufferSize":I
    new-array v8, v9, [B

    #@5b
    .line 7889
    .local v8, "buffer":[B
    new-instance v14, Ljava/io/FileOutputStream;

    #@5d
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@60
    move-result-object v2

    #@61
    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@64
    .line 7890
    .local v14, "engineOut":Ljava/io/FileOutputStream;
    new-instance v22, Ljava/io/FileInputStream;

    #@66
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@69
    move-result-object v2

    #@6a
    move-object/from16 v0, v22

    #@6c
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@6f
    .line 7893
    .local v22, "transportIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/Thread;

    #@71
    const-string/jumbo v3, "unified-restore-engine"

    #@74
    invoke-direct {v2, v12, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@77
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@7a
    .line 7896
    :cond_0
    :goto_0
    if-nez v18, :cond_3

    #@7c
    .line 7898
    :try_start_0
    move-object/from16 v0, p0

    #@7e
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@80
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@83
    move-result-object v2

    #@84
    move-object/from16 v0, v20

    #@86
    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    #@89
    move-result v17

    #@8a
    .line 7899
    .local v17, "result":I
    if-lez v17, :cond_2

    #@8c
    .line 7905
    move/from16 v0, v17

    #@8e
    if-le v0, v9, :cond_1

    #@90
    .line 7906
    move/from16 v9, v17

    #@92
    .line 7907
    new-array v8, v9, [B

    #@94
    .line 7909
    :cond_1
    move/from16 v21, v17

    #@96
    .line 7910
    .local v21, "toCopy":I
    :goto_1
    if-lez v21, :cond_0

    #@98
    .line 7911
    const/4 v2, 0x0

    #@99
    move-object/from16 v0, v22

    #@9b
    move/from16 v1, v21

    #@9d
    invoke-virtual {v0, v8, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    #@a0
    move-result v15

    #@a1
    .line 7912
    .local v15, "n":I
    const/4 v2, 0x0

    #@a2
    invoke-virtual {v14, v8, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a5
    .line 7913
    sub-int v21, v21, v15

    #@a7
    goto :goto_1

    #@a8
    .line 7918
    .end local v15    # "n":I
    .end local v21    # "toCopy":I
    :cond_2
    const/4 v2, -0x1

    #@a9
    move/from16 v0, v17

    #@ab
    if-ne v0, v2, :cond_4

    #@ad
    .line 7924
    const/16 v18, 0x0

    #@af
    .line 7955
    .end local v17    # "result":I
    :cond_3
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@b3
    const/4 v3, 0x1

    #@b4
    aget-object v2, v2, v3

    #@b6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b9
    .line 7956
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@bd
    const/4 v3, 0x0

    #@be
    aget-object v2, v2, v3

    #@c0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c3
    .line 7957
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@c7
    const/4 v3, 0x1

    #@c8
    aget-object v2, v2, v3

    #@ca
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cd
    .line 7960
    invoke-virtual {v12}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@d0
    .line 7967
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@d4
    const/4 v3, 0x0

    #@d5
    aget-object v2, v2, v3

    #@d7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@da
    .line 7971
    if-nez v18, :cond_5

    #@dc
    .line 7973
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@de
    .line 7977
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@e6
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@e9
    move-result-object v3

    #@ea
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    #@ed
    .line 8000
    :goto_2
    move-object/from16 v0, p0

    #@ef
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@f1
    move-object/from16 v0, v16

    #@f3
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@f6
    .line 8001
    const/4 v2, 0x0

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@fc
    .line 7873
    :goto_3
    return-void

    #@fd
    .line 7929
    .restart local v17    # "result":I
    :cond_4
    :try_start_1
    const-string/jumbo v2, "StreamFeederThread"

    #@100
    new-instance v3, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v4, "Error "

    #@108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v3

    #@10c
    move/from16 v0, v17

    #@10e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@111
    move-result-object v3

    #@112
    const-string/jumbo v4, " streaming restore for "

    #@115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v3

    #@119
    .line 7930
    move-object/from16 v0, p0

    #@11b
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@11d
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@120
    move-result-object v4

    #@121
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@123
    .line 7929
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v3

    #@12b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12e
    .line 7931
    const/4 v2, 0x0

    #@12f
    new-array v2, v2, [Ljava/lang/Object;

    #@131
    const/16 v3, 0xb0f

    #@133
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@136
    .line 7932
    move/from16 v18, v17

    #@138
    goto/16 :goto_0

    #@13a
    .line 7982
    .end local v17    # "result":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@13c
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@13e
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@141
    move-result-object v2

    #@142
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@145
    .line 7991
    :goto_4
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@149
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@14f
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@152
    move-result-object v3

    #@153
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@155
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@158
    .line 7994
    const/16 v2, -0x3e8

    #@15a
    move/from16 v0, v18

    #@15c
    if-ne v0, v2, :cond_6

    #@15e
    .line 7995
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@160
    goto :goto_2

    #@161
    .line 7983
    :catch_0
    move-exception v10

    #@162
    .line 7986
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@164
    goto :goto_4

    #@165
    .line 7997
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_6
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@167
    goto :goto_2

    #@168
    .line 7944
    :catch_1
    move-exception v10

    #@169
    .line 7948
    .restart local v10    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "StreamFeederThread"

    #@16c
    const-string/jumbo v3, "Transport failed during restore"

    #@16f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@172
    .line 7949
    const/4 v2, 0x0

    #@173
    new-array v2, v2, [Ljava/lang/Object;

    #@175
    const/16 v3, 0xb0f

    #@177
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@17a
    .line 7950
    const/16 v18, -0x3e8

    #@17c
    .line 7955
    move-object/from16 v0, p0

    #@17e
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@180
    const/4 v3, 0x1

    #@181
    aget-object v2, v2, v3

    #@183
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@186
    .line 7956
    move-object/from16 v0, p0

    #@188
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@18a
    const/4 v3, 0x0

    #@18b
    aget-object v2, v2, v3

    #@18d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@190
    .line 7957
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@194
    const/4 v3, 0x1

    #@195
    aget-object v2, v2, v3

    #@197
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19a
    .line 7960
    invoke-virtual {v12}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@19d
    .line 7967
    move-object/from16 v0, p0

    #@19f
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@1a1
    const/4 v3, 0x0

    #@1a2
    aget-object v2, v2, v3

    #@1a4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1a7
    .line 7982
    :try_start_4
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1ab
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@1ae
    move-result-object v2

    #@1af
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@1b2
    .line 7991
    :goto_5
    move-object/from16 v0, p0

    #@1b4
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1b6
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1bc
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@1bf
    move-result-object v3

    #@1c0
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1c2
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@1c5
    .line 7994
    const/16 v2, -0x3e8

    #@1c7
    move/from16 v0, v18

    #@1c9
    if-ne v0, v2, :cond_7

    #@1cb
    .line 7995
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1cd
    .line 8000
    :goto_6
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1d1
    move-object/from16 v0, v16

    #@1d3
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1d6
    .line 8001
    const/4 v2, 0x0

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@1dc
    goto/16 :goto_3

    #@1de
    .line 7983
    :catch_2
    move-exception v10

    #@1df
    .line 7986
    const/16 v18, -0x3e8

    #@1e1
    goto :goto_5

    #@1e2
    .line 7997
    :cond_7
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1e4
    goto :goto_6

    #@1e5
    .line 7936
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    #@1e6
    .line 7940
    .local v11, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "StreamFeederThread"

    #@1e9
    const-string/jumbo v3, "Unable to route data for restore"

    #@1ec
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ef
    .line 7941
    const/4 v2, 0x2

    #@1f0
    new-array v2, v2, [Ljava/lang/Object;

    #@1f2
    .line 7942
    move-object/from16 v0, p0

    #@1f4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@1f6
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@1f9
    move-result-object v3

    #@1fa
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1fc
    const/4 v4, 0x0

    #@1fd
    aput-object v3, v2, v4

    #@1ff
    const-string/jumbo v3, "I/O error on pipes"

    #@202
    const/4 v4, 0x1

    #@203
    aput-object v3, v2, v4

    #@205
    .line 7941
    const/16 v3, 0xb10

    #@207
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@20a
    .line 7943
    const/16 v18, -0x3eb

    #@20c
    .line 7955
    move-object/from16 v0, p0

    #@20e
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@210
    const/4 v3, 0x1

    #@211
    aget-object v2, v2, v3

    #@213
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@216
    .line 7956
    move-object/from16 v0, p0

    #@218
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@21a
    const/4 v3, 0x0

    #@21b
    aget-object v2, v2, v3

    #@21d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@220
    .line 7957
    move-object/from16 v0, p0

    #@222
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@224
    const/4 v3, 0x1

    #@225
    aget-object v2, v2, v3

    #@227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@22a
    .line 7960
    invoke-virtual {v12}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@22d
    .line 7967
    move-object/from16 v0, p0

    #@22f
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@231
    const/4 v3, 0x0

    #@232
    aget-object v2, v2, v3

    #@234
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@237
    .line 7982
    :try_start_6
    move-object/from16 v0, p0

    #@239
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@23b
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@23e
    move-result-object v2

    #@23f
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    #@242
    .line 7991
    :goto_7
    move-object/from16 v0, p0

    #@244
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@246
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@248
    move-object/from16 v0, p0

    #@24a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@24c
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@24f
    move-result-object v3

    #@250
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@252
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@255
    .line 7994
    const/16 v2, -0x3e8

    #@257
    move/from16 v0, v18

    #@259
    if-ne v0, v2, :cond_8

    #@25b
    .line 7995
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@25d
    .line 8000
    :goto_8
    move-object/from16 v0, p0

    #@25f
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@261
    move-object/from16 v0, v16

    #@263
    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@266
    .line 8001
    const/4 v2, 0x0

    #@267
    move-object/from16 v0, p0

    #@269
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@26c
    goto/16 :goto_3

    #@26e
    .line 7983
    :catch_4
    move-exception v10

    #@26f
    .line 7986
    .restart local v10    # "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@271
    goto :goto_7

    #@272
    .line 7997
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_8
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@274
    goto :goto_8

    #@275
    .line 7951
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@276
    .line 7955
    move-object/from16 v0, p0

    #@278
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@27a
    const/4 v4, 0x1

    #@27b
    aget-object v3, v3, v4

    #@27d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@280
    .line 7956
    move-object/from16 v0, p0

    #@282
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@284
    const/4 v4, 0x0

    #@285
    aget-object v3, v3, v4

    #@287
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28a
    .line 7957
    move-object/from16 v0, p0

    #@28c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    #@28e
    const/4 v4, 0x1

    #@28f
    aget-object v3, v3, v4

    #@291
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@294
    .line 7960
    invoke-virtual {v12}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    #@297
    .line 7967
    move-object/from16 v0, p0

    #@299
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    #@29b
    const/4 v4, 0x0

    #@29c
    aget-object v3, v3, v4

    #@29e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2a1
    .line 7971
    if-nez v18, :cond_9

    #@2a3
    .line 7973
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2a5
    .line 7977
    move-object/from16 v0, p0

    #@2a7
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2ad
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    #@2b0
    move-result-object v4

    #@2b1
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    #@2b4
    .line 8000
    :goto_9
    move-object/from16 v0, p0

    #@2b6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2b8
    move-object/from16 v0, v16

    #@2ba
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@2bd
    .line 8001
    const/4 v3, 0x0

    #@2be
    move-object/from16 v0, p0

    #@2c0
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    #@2c3
    .line 7951
    throw v2

    #@2c4
    .line 7982
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    #@2c6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2c8
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    #@2cb
    move-result-object v3

    #@2cc
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    #@2cf
    .line 7991
    :goto_a
    move-object/from16 v0, p0

    #@2d1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2d3
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@2d9
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    #@2dc
    move-result-object v4

    #@2dd
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2df
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@2e2
    .line 7994
    const/16 v3, -0x3e8

    #@2e4
    move/from16 v0, v18

    #@2e6
    if-ne v0, v3, :cond_a

    #@2e8
    .line 7995
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2ea
    goto :goto_9

    #@2eb
    .line 7983
    :catch_5
    move-exception v10

    #@2ec
    .line 7986
    .restart local v10    # "e":Landroid/os/RemoteException;
    const/16 v18, -0x3e8

    #@2ee
    goto :goto_a

    #@2ef
    .line 7997
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_a
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2f1
    goto :goto_9
.end method
