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
    .line 9032
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 9033
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 9034
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@9
    .line 9032
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 9040
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@6
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 9041
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@11
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@13
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@15
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 9042
    .local v2, "stateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@1b
    .line 9046
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@1d
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@1f
    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 9052
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@24
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    .line 9059
    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2e
    .line 9037
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :goto_1
    return-void

    #@2f
    .line 9053
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "stateFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@30
    .line 9055
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Unable to mark clear operation finished: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0

    #@4f
    .line 9047
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :catch_1
    move-exception v0

    #@50
    .line 9048
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Transport threw clearing data for "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, ": "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    .line 9052
    :try_start_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7d
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@80
    .line 9059
    :goto_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@82
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@84
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@87
    goto :goto_1

    #@88
    .line 9053
    :catch_2
    move-exception v0

    #@89
    .line 9055
    const-string/jumbo v3, "BackupManagerService"

    #@8c
    new-instance v4, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v5, "Unable to mark clear operation finished: "

    #@94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_2

    #@a8
    .line 9049
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@a9
    .line 9052
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@ab
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@ae
    .line 9059
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b0
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@b2
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b5
    .line 9049
    throw v3

    #@b6
    .line 9053
    :catch_3
    move-exception v0

    #@b7
    .line 9055
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BackupManagerService"

    #@ba
    new-instance v5, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v6, "Unable to mark clear operation finished: "

    #@c2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_3
.end method
