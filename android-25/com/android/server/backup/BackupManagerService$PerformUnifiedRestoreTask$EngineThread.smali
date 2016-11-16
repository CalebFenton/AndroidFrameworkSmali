.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .param p2, "engine"    # Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
    .param p3, "engineSocket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 8746
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 8747
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@8
    .line 8748
    invoke-virtual {p2, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    #@b
    .line 8752
    new-instance v0, Ljava/io/FileInputStream;

    #@d
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    #@14
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    #@16
    .line 8746
    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    #@0
    .prologue
    .line 8778
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    #@2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5
    .line 8779
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@7
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->handleTimeout()V

    #@a
    .line 8777
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 8756
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 8766
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 8768
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@a
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 8770
    :catchall_0
    move-exception v0

    #@12
    .line 8773
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    #@14
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 8770
    throw v0

    #@18
    .line 8773
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    #@1a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 8764
    return-void
.end method

.method public waitForResult()I
    .locals 1

    #@0
    .prologue
    .line 8760
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->waitForResult()I

    #@5
    move-result v0

    #@6
    return v0
.end method
