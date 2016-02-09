.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
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
    name = "RestoreFileRunnable"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

.field mSocket:Landroid/os/ParcelFileDescriptor;

.field mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p4, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5852
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 5854
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    #@7
    .line 5855
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@9
    .line 5856
    iput p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mToken:I

    #@b
    .line 5863
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@15
    .line 5853
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    .line 5869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    #@2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@6
    iget-wide v3, v3, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@8
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@a
    iget v5, v5, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@c
    .line 5870
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@e
    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@10
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@12
    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@14
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@16
    iget-wide v8, v8, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@18
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@1a
    iget-wide v10, v10, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@1c
    .line 5871
    iget v12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->mToken:I

    #@1e
    iget-object v13, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    #@20
    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22
    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@24
    .line 5869
    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 5867
    :goto_0
    return-void

    #@28
    .line 5872
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
