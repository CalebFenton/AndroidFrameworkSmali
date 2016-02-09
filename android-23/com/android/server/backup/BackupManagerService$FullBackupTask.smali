.class abstract Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FullBackupTask"
.end annotation


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    #@0
    .prologue
    .line 3559
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3560
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    .line 3559
    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3588
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3587
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3591
    :catch_0
    move-exception v0

    #@c
    .line 3592
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full backup observer went away: endBackup"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 3593
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3576
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3575
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3580
    :catch_0
    move-exception v0

    #@c
    .line 3581
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full backup observer went away: backupPackage"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 3582
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method final sendStartBackup()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3565
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3564
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3568
    :catch_0
    move-exception v0

    #@c
    .line 3569
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full backup observer went away: startBackup"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 3570
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method
