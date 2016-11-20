.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$pi"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 3498
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    #@4
    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    #@6
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 3500
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 3501
    const/4 v8, 0x1

    #@8
    .line 3502
    .local v8, "success":Z
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 3504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@f
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@11
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    #@13
    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    #@15
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :goto_0
    monitor-exit v1

    #@19
    .line 3510
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 3513
    if-eqz v8, :cond_1

    #@1f
    const/4 v2, 0x1

    #@20
    .line 3514
    .local v2, "code":I
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    #@22
    const/4 v1, 0x0

    #@23
    const/4 v3, 0x0

    #@24
    .line 3515
    const/4 v4, 0x0

    #@25
    const/4 v5, 0x0

    #@26
    .line 3514
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 3499
    .end local v2    # "code":I
    :cond_0
    :goto_2
    return-void

    #@2a
    .line 3505
    :catch_0
    move-exception v6

    #@2b
    .line 3506
    .local v6, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :try_start_2
    const-string/jumbo v0, "PackageManager"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Couldn\'t clear application caches: "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 3507
    const/4 v8, 0x0

    #@46
    goto :goto_0

    #@47
    .line 3502
    .end local v6    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v1

    #@49
    throw v0

    #@4a
    .line 3513
    :cond_1
    const/4 v2, 0x0

    #@4b
    .restart local v2    # "code":I
    goto :goto_1

    #@4c
    .line 3516
    :catch_1
    move-exception v7

    #@4d
    .line 3517
    .local v7, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "PackageManager"

    #@50
    const-string/jumbo v1, "Failed to send pending intent"

    #@53
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    goto :goto_2
.end method
