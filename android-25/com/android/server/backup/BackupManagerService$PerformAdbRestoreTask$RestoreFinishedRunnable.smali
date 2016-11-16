.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFinishedRunnable"
.end annotation


# instance fields
.field final mAgent:Landroid/app/IBackupAgent;

.field final mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "token"    # I

    #@0
    .prologue
    .line 6543
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 6544
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    #@7
    .line 6545
    iput p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    #@9
    .line 6543
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 6551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    #@2
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    #@4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@6
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@8
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@a
    invoke-interface {v1, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 6549
    :goto_0
    return-void

    #@e
    .line 6552
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
