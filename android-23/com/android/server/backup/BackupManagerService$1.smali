.class Lcom/android/server/backup/BackupManagerService$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 1354
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v9, v8, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4
    monitor-enter v9

    #@5
    .line 1356
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@7
    const/16 v8, 0x1000

    #@9
    invoke-direct {v3, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@c
    .line 1357
    .local v3, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@e
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@11
    .line 1358
    .local v2, "bufOut":Ljava/io/DataOutputStream;
    const/4 v8, 0x1

    #@12
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@15
    .line 1367
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@17
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    .line 1368
    .local v0, "N":I
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@20
    .line 1370
    const/4 v6, 0x0

    #@21
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    #@23
    .line 1371
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@25
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@2d
    .line 1372
    .local v5, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v8, v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@32
    .line 1373
    iget-wide v10, v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@34
    invoke-virtual {v2, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@37
    .line 1370
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1375
    .end local v5    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    #@3d
    .line 1377
    new-instance v1, Landroid/util/AtomicFile;

    #@3f
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@41
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@43
    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@46
    .line 1378
    .local v1, "af":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@49
    move-result-object v7

    #@4a
    .line 1379
    .local v7, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    #@51
    .line 1380
    invoke-virtual {v1, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .end local v0    # "N":I
    .end local v1    # "af":Landroid/util/AtomicFile;
    .end local v2    # "bufOut":Ljava/io/DataOutputStream;
    .end local v3    # "bufStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "i":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v9

    #@55
    .line 1353
    return-void

    #@56
    .line 1381
    :catch_0
    move-exception v4

    #@57
    .line 1382
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "BackupManagerService"

    #@5a
    const-string/jumbo v10, "Unable to write backup schedule!"

    #@5d
    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    goto :goto_1

    #@61
    .line 1354
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@62
    monitor-exit v9

    #@63
    throw v8
.end method
