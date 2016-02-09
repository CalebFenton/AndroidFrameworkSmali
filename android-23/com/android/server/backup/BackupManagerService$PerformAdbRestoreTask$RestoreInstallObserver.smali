.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackageName:Ljava/lang/String;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@0
    .prologue
    .line 6406
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@2
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    #@5
    .line 6407
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 6406
    return-void
.end method


# virtual methods
.method getResult()I
    .locals 1

    #@0
    .prologue
    .line 6428
    iget v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mResult:I

    #@2
    return v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6434
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 6435
    :try_start_0
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mResult:I

    #@5
    .line 6436
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@7
    .line 6437
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@d
    .line 6438
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 6433
    return-void

    #@14
    .line 6434
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 6412
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 6413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 6411
    return-void

    #@b
    .line 6412
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public waitForCompletion()V
    .locals 3

    #@0
    .prologue
    .line 6418
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v2

    #@3
    .line 6419
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 6421
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 6422
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@13
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    #@14
    .line 6417
    return-void

    #@15
    .line 6418
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method
