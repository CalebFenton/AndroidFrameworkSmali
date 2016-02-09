.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p2, "manager"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@0
    .prologue
    .line 9540
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 9541
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    #@7
    .line 9542
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@9
    .line 9540
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 9547
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@2
    monitor-enter v1

    #@3
    .line 9548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->-set0(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    #@9
    .line 9549
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@b
    const/4 v2, 0x1

    #@c
    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 9554
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    #@11
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    #@16
    .line 9545
    return-void

    #@17
    .line 9547
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
