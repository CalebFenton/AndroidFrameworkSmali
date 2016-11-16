.class Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyShellCommand"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 3391
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@5
    .line 3393
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@8
    .line 3391
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@3
    return-void
.end method

.method private clearLauncher()V
    .locals 3

    #@0
    .prologue
    .line 3531
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@b
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->forceClearLauncher()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 3530
    return-void

    #@14
    .line 3531
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private handleClearDefaultLauncher()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3548
    const/4 v0, 0x1

    #@8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    #@b
    .line 3550
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 3546
    return-void

    #@10
    .line 3547
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private handleClearShortcuts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3574
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3575
    const/4 v1, 0x1

    #@8
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    #@b
    .line 3576
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 3578
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "cmd: handleClearShortcuts: user"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, ", "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 3580
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@38
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@3a
    .line 3581
    const/4 v4, 0x1

    #@3b
    .line 3580
    invoke-static {v1, v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->-wrap0(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit v2

    #@3f
    .line 3573
    return-void

    #@40
    .line 3574
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method private handleGetDefaultLauncher()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3555
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3556
    const/4 v0, 0x1

    #@8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    #@b
    .line 3558
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    #@e
    .line 3559
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 3554
    return-void

    #@13
    .line 3555
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private handleOverrideConfig()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3511
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3513
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "cmd: handleOverrideConfig: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 3515
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@20
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    monitor-enter v2

    #@25
    .line 3516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@27
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 3517
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    #@2f
    const-string/jumbo v3, "override-config failed.  See logcat for details."

    #@32
    invoke-direct {v1, v3}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 3515
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1

    #@39
    :cond_0
    monitor-exit v2

    #@3a
    .line 3510
    return-void
.end method

.method private handleResetAllThrottling()V
    .locals 2

    #@0
    .prologue
    .line 3505
    const-string/jumbo v0, "ShortcutService"

    #@3
    const-string/jumbo v1, "cmd: handleResetAllThrottling"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 3507
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    #@e
    .line 3504
    return-void
.end method

.method private handleResetConfig()V
    .locals 2

    #@0
    .prologue
    .line 3523
    const-string/jumbo v0, "ShortcutService"

    #@3
    const-string/jumbo v1, "cmd: handleResetConfig"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 3525
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 3526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@12
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-wrap6(Lcom/android/server/pm/ShortcutService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 3522
    return-void

    #@17
    .line 3525
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private handleResetThrottling()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3496
    const/4 v0, 0x1

    #@8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    #@b
    .line 3498
    const-string/jumbo v0, "ShortcutService"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "cmd: handleResetThrottling: user="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 3500
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@29
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@2b
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v1

    #@2f
    .line 3494
    return-void

    #@30
    .line 3495
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method private handleUnloadUser()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3564
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3565
    const/4 v0, 0x1

    #@8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    #@b
    .line 3567
    const-string/jumbo v0, "ShortcutService"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "cmd: handleUnloadUser: user="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 3569
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@29
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@2b
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->handleCleanupUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v1

    #@2f
    .line 3563
    return-void

    #@30
    .line 3564
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method private handleVerifyStates()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-wrap7(Lcom/android/server/pm/ShortcutService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3585
    return-void

    #@6
    .line 3588
    :catch_0
    move-exception v0

    #@7
    .line 3589
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "\n"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method private parseOptionsLocked(Z)V
    .locals 4
    .param p1, "takeUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 3398
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextOption()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@6
    .line 3399
    const-string/jumbo v1, "--user"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 3401
    if-eqz p1, :cond_1

    #@11
    .line 3402
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@1b
    .line 3403
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1d
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 3404
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    #@27
    .line 3405
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "User "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v3, " is not running or locked"

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 3404
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 3411
    :cond_1
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "Unknown option: "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 3396
    :cond_2
    return-void
.end method

.method private showLauncher()V
    .locals 5

    #@0
    .prologue
    .line 3537
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    const-string/jumbo v2, "-"

    #@c
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@e
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    #@11
    .line 3541
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@14
    move-result-object v0

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Launcher: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 3542
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@23
    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@25
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    #@2c
    move-result-object v3

    #@2d
    .line 3541
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 3536
    return-void

    #@3a
    .line 3537
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3418
    if-nez p1, :cond_0

    #@2
    .line 3419
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 3421
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 3423
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "reset-throttling"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 3425
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_0
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3458
    :goto_0
    const-string/jumbo v2, "Success"

    #@1a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 3459
    const/4 v2, 0x0

    #@1e
    return v2

    #@1f
    .line 3423
    :cond_1
    :try_start_1
    const-string/jumbo v2, "reset-all-throttling"

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 3428
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V
    :try_end_1
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 3454
    :catch_0
    move-exception v0

    #@2d
    .line 3455
    .local v0, "e":Lcom/android/server/pm/ShortcutService$CommandException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Error: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$CommandException;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 3456
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 3423
    .end local v0    # "e":Lcom/android/server/pm/ShortcutService$CommandException;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "override-config"

    #@4d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_3

    #@53
    .line 3431
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    #@56
    goto :goto_0

    #@57
    .line 3423
    :cond_3
    const-string/jumbo v2, "reset-config"

    #@5a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_4

    #@60
    .line 3434
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    #@63
    goto :goto_0

    #@64
    .line 3423
    :cond_4
    const-string/jumbo v2, "clear-default-launcher"

    #@67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 3437
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearDefaultLauncher()V

    #@70
    goto :goto_0

    #@71
    .line 3423
    :cond_5
    const-string/jumbo v2, "get-default-launcher"

    #@74
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    .line 3440
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    #@7d
    goto :goto_0

    #@7e
    .line 3423
    :cond_6
    const-string/jumbo v2, "unload-user"

    #@81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_7

    #@87
    .line 3443
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    #@8a
    goto :goto_0

    #@8b
    .line 3423
    :cond_7
    const-string/jumbo v2, "clear-shortcuts"

    #@8e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_8

    #@94
    .line 3446
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    #@97
    goto :goto_0

    #@98
    .line 3423
    :cond_8
    const-string/jumbo v2, "verify-states"

    #@9b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_9

    #@a1
    .line 3449
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleVerifyStates()V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 3452
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_2 .. :try_end_2} :catch_0

    #@a9
    move-result v2

    #@aa
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 3464
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 3465
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Usage: cmd shortcut COMMAND [options ...]"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 3466
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@d
    .line 3467
    const-string/jumbo v1, "cmd shortcut reset-throttling [--user USER_ID]"

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 3468
    const-string/jumbo v1, "    Reset throttling for all packages and users"

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 3469
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 3470
    const-string/jumbo v1, "cmd shortcut reset-all-throttling"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 3471
    const-string/jumbo v1, "    Reset the throttling state for all users"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 3472
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@2b
    .line 3473
    const-string/jumbo v1, "cmd shortcut override-config CONFIG"

    #@2e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 3474
    const-string/jumbo v1, "    Override the configuration for testing (will last until reboot)"

    #@34
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 3475
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 3476
    const-string/jumbo v1, "cmd shortcut reset-config"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 3477
    const-string/jumbo v1, "    Reset the configuration set with \"update-config\""

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 3478
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@49
    .line 3479
    const-string/jumbo v1, "cmd shortcut clear-default-launcher [--user USER_ID]"

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 3480
    const-string/jumbo v1, "    Clear the cached default launcher"

    #@52
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 3481
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@58
    .line 3482
    const-string/jumbo v1, "cmd shortcut get-default-launcher [--user USER_ID]"

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 3483
    const-string/jumbo v1, "    Show the default launcher"

    #@61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 3484
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@67
    .line 3485
    const-string/jumbo v1, "cmd shortcut unload-user [--user USER_ID]"

    #@6a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 3486
    const-string/jumbo v1, "    Unload a user from the memory"

    #@70
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 3487
    const-string/jumbo v1, "    (This should not affect any observable behavior)"

    #@76
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@79
    .line 3488
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@7c
    .line 3489
    const-string/jumbo v1, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    #@7f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 3490
    const-string/jumbo v1, "    Remove all shortcuts from a package, including pinned shortcuts"

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 3491
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@8b
    .line 3463
    return-void
.end method
