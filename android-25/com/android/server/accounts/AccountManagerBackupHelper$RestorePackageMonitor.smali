.class final Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@0
    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@2
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@9
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v3

    #@d
    if-nez v3, :cond_0

    #@f
    monitor-exit v4

    #@10
    .line 276
    return-void

    #@11
    .line 278
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    monitor-exit v4

    #@18
    .line 279
    return-void

    #@19
    .line 281
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@1b
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@22
    move-result v0

    #@23
    .line 282
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    #@25
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@27
    .line 284
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@29
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    #@33
    .line 285
    .local v2, "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->-get0(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_3

    #@3d
    .line 282
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@3f
    goto :goto_0

    #@40
    .line 289
    :cond_3
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@42
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    #@45
    move-result-object v3

    #@46
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4b
    move-result-object v3

    #@4c
    .line 288
    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_2

    #@52
    .line 290
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@54
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 273
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    :catchall_0
    move-exception v3

    #@5d
    monitor-exit v4

    #@5e
    throw v3

    #@5f
    .line 293
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@61
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    #@64
    move-result-object v3

    #@65
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_5

    #@6b
    .line 294
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@6d
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    #@70
    move-result-object v3

    #@71
    if-eqz v3, :cond_5

    #@73
    .line 295
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@75
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    #@78
    move-result-object v3

    #@79
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@7b
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@7d
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v3, v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@84
    .line 296
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@86
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    #@89
    move-result-object v3

    #@8a
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@8d
    .line 297
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@8f
    const/4 v5, 0x0

    #@90
    invoke-static {v3, v5}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set0(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    :cond_5
    monitor-exit v4

    #@94
    .line 272
    return-void
.end method
