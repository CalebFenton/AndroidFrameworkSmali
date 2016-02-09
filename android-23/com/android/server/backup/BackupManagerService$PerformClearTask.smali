.class Lcom/android/server/backup/BackupManagerService$PerformClearTask;
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
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 8280
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 8281
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 8282
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@9
    .line 8280
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 8288
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@6
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 8289
    .local v2, "stateDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@11
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@13
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@15
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 8290
    .local v3, "stateFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@1b
    .line 8294
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@1d
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@1f
    invoke-interface {v4, v5}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 8302
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@24
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    #@27
    .line 8308
    :goto_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2b
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2e
    .line 8285
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "stateFile":Ljava/io/File;
    :goto_1
    return-void

    #@2f
    .line 8297
    :catch_0
    move-exception v1

    #@30
    .line 8298
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Transport threw attempting to clear data for "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 8302
    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@4e
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    #@51
    .line 8308
    :goto_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@53
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@55
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@58
    goto :goto_1

    #@59
    .line 8295
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@5a
    .line 8302
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@5c
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@5f
    .line 8308
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@61
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@63
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@66
    goto :goto_1

    #@67
    .line 8299
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@68
    .line 8302
    :try_start_5
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@6a
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    #@6d
    .line 8308
    :goto_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6f
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@71
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@74
    .line 8299
    throw v4

    #@75
    .line 8303
    :catch_2
    move-exception v0

    #@76
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    #@77
    :catch_3
    move-exception v0

    #@78
    goto :goto_3

    #@79
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@7a
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@7b
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "stateDir":Ljava/io/File;
    .restart local v3    # "stateFile":Ljava/io/File;
    :catch_5
    move-exception v0

    #@7c
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
