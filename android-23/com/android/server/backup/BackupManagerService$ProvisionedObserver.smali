.class Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 357
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 356
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-boolean v1, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@4
    .line 362
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    #@9
    move-result v0

    #@a
    .line 364
    .local v0, "isProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    if-nez v1, :cond_1

    #@e
    .end local v0    # "isProvisioned":Z
    :goto_0
    iput-boolean v0, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@10
    .line 370
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@12
    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@14
    monitor-enter v3

    #@15
    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@17
    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v2, :cond_0

    #@1b
    if-eqz v1, :cond_2

    #@1d
    :cond_0
    :goto_1
    monitor-exit v3

    #@1e
    .line 360
    return-void

    #@1f
    .line 364
    .restart local v0    # "isProvisioned":Z
    :cond_1
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 371
    .end local v0    # "isProvisioned":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23
    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 374
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2b
    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@2e
    .line 375
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@30
    const-wide/16 v4, 0x0

    #@32
    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 370
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2
.end method
