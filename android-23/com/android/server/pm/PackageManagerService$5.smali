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
    .line 2948
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
    .locals 8

    #@0
    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 2951
    const/4 v7, -0x1

    #@8
    .line 2952
    .local v7, "retCode":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 2953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@f
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@11
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    #@13
    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    #@15
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    #@18
    move-result v7

    #@19
    .line 2954
    if-gez v7, :cond_0

    #@1b
    .line 2955
    const-string/jumbo v0, "PackageManager"

    #@1e
    const-string/jumbo v3, "Couldn\'t clear application caches"

    #@21
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v1

    #@25
    .line 2958
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 2961
    if-ltz v7, :cond_2

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 2962
    .local v2, "code":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    #@2e
    const/4 v1, 0x0

    #@2f
    const/4 v3, 0x0

    #@30
    .line 2963
    const/4 v4, 0x0

    #@31
    const/4 v5, 0x0

    #@32
    .line 2962
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 2949
    .end local v2    # "code":I
    :cond_1
    :goto_1
    return-void

    #@36
    .line 2952
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0

    #@39
    .line 2961
    :cond_2
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "code":I
    goto :goto_0

    #@3b
    .line 2964
    :catch_0
    move-exception v6

    #@3c
    .line 2965
    .local v6, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "PackageManager"

    #@3f
    const-string/jumbo v1, "Failed to send pending intent"

    #@42
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    goto :goto_1
.end method
