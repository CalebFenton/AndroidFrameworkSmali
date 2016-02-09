.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDeleteObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@0
    .prologue
    .line 6443
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@2
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    #@5
    .line 6444
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 6443
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 6465
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 6466
    :try_start_0
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mResult:I

    #@5
    .line 6467
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@b
    .line 6468
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 6464
    return-void

    #@12
    .line 6465
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 6448
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 6449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 6447
    return-void

    #@b
    .line 6448
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
    .line 6454
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v2

    #@3
    .line 6455
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 6457
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 6458
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
    .line 6453
    return-void

    #@15
    .line 6454
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method
