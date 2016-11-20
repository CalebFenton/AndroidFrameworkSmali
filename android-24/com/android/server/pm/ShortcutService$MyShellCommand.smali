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
    .line 2348
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@5
    .line 2350
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@8
    .line 2348
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
    .locals 4

    #@0
    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@b
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@e
    move-result-object v0

    #@f
    .line 2503
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@11
    const/4 v3, 0x0

    #@12
    .line 2502
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutUser;->setLauncherComponent(Lcom/android/server/pm/ShortcutService;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2500
    return-void

    #@17
    .line 2501
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private handleClearDefaultLauncher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2518
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2520
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    #@7
    .line 2517
    return-void
.end method

.method private handleClearShortcuts()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2545
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2546
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2548
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "cmd: handleClearShortcuts: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ", "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2550
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@31
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@33
    invoke-static {v1, v0, v2}, Lcom/android/server/pm/ShortcutService;->-wrap0(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@36
    .line 2544
    return-void
.end method

.method private handleGetDefaultLauncher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2524
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2526
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    #@7
    .line 2523
    return-void
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
    .line 2481
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2483
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
    .line 2485
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@20
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    monitor-enter v2

    #@25
    .line 2486
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@27
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 2487
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
    .line 2485
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
    .line 2480
    return-void
.end method

.method private handleRefreshDefaultLauncher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2530
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2532
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    #@7
    .line 2533
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    #@a
    .line 2529
    return-void
.end method

.method private handleResetAllThrottling()V
    .locals 2

    #@0
    .prologue
    .line 2465
    const-string/jumbo v0, "ShortcutService"

    #@3
    const-string/jumbo v1, "cmd: handleResetAllThrottling"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2467
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    #@e
    .line 2464
    return-void
.end method

.method private handleResetConfig()V
    .locals 2

    #@0
    .prologue
    .line 2493
    const-string/jumbo v0, "ShortcutService"

    #@3
    const-string/jumbo v1, "cmd: handleResetConfig"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 2496
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@12
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-wrap5(Lcom/android/server/pm/ShortcutService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2492
    return-void

    #@17
    .line 2495
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private handleResetPackageThrottling()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2471
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2473
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2475
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "cmd: handleResetPackageThrottling: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2477
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@24
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@26
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ShortcutService;->resetPackageThrottling(Ljava/lang/String;I)V

    #@29
    .line 2470
    return-void
.end method

.method private handleResetThrottling()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2457
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2459
    const-string/jumbo v0, "ShortcutService"

    #@7
    const-string/jumbo v1, "cmd: handleResetThrottling"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2461
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@f
    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@11
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    #@14
    .line 2456
    return-void
.end method

.method private handleUnloadUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2537
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    #@4
    .line 2539
    const-string/jumbo v0, "ShortcutService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "cmd: handleUnloadUser: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 2541
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@22
    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->handleCleanupUser(I)V

    #@27
    .line 2536
    return-void
.end method

.method private parseOptions(Z)V
    .locals 4
    .param p1, "takeUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    #@0
    .prologue
    .line 2355
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextOption()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@6
    .line 2356
    const-string/jumbo v1, "--user"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 2358
    if-eqz p1, :cond_0

    #@11
    .line 2359
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
    goto :goto_0

    #@1c
    .line 2364
    :cond_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Unknown option: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 2353
    :cond_1
    return-void
.end method

.method private showLauncher()V
    .locals 5

    #@0
    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2510
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    const-string/jumbo v2, "-"

    #@c
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@e
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    #@11
    .line 2512
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
    .line 2513
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    #@23
    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    #@25
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLauncherComponent()Landroid/content/ComponentName;

    #@2c
    move-result-object v3

    #@2d
    .line 2512
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
    .line 2507
    return-void

    #@3a
    .line 2508
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
    .line 2371
    if-nez p1, :cond_0

    #@2
    .line 2372
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 2374
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 2376
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "reset-package-throttling"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 2378
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetPackageThrottling()V
    :try_end_0
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2414
    :goto_0
    const-string/jumbo v2, "Success"

    #@1a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 2415
    const/4 v2, 0x0

    #@1e
    return v2

    #@1f
    .line 2376
    :cond_1
    :try_start_1
    const-string/jumbo v2, "reset-throttling"

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 2381
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_1
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 2410
    :catch_0
    move-exception v0

    #@2d
    .line 2411
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
    .line 2412
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 2376
    .end local v0    # "e":Lcom/android/server/pm/ShortcutService$CommandException;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "reset-all-throttling"

    #@4d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_3

    #@53
    .line 2384
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V

    #@56
    goto :goto_0

    #@57
    .line 2376
    :cond_3
    const-string/jumbo v2, "override-config"

    #@5a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_4

    #@60
    .line 2387
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    #@63
    goto :goto_0

    #@64
    .line 2376
    :cond_4
    const-string/jumbo v2, "reset-config"

    #@67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 2390
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    #@70
    goto :goto_0

    #@71
    .line 2376
    :cond_5
    const-string/jumbo v2, "clear-default-launcher"

    #@74
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    .line 2393
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearDefaultLauncher()V

    #@7d
    goto :goto_0

    #@7e
    .line 2376
    :cond_6
    const-string/jumbo v2, "get-default-launcher"

    #@81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_7

    #@87
    .line 2396
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    #@8a
    goto :goto_0

    #@8b
    .line 2376
    :cond_7
    const-string/jumbo v2, "refresh-default-launcher"

    #@8e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_8

    #@94
    .line 2399
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleRefreshDefaultLauncher()V

    #@97
    goto :goto_0

    #@98
    .line 2376
    :cond_8
    const-string/jumbo v2, "unload-user"

    #@9b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_9

    #@a1
    .line 2402
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 2376
    :cond_9
    const-string/jumbo v2, "clear-shortcuts"

    #@a9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v2

    #@ad
    if-eqz v2, :cond_a

    #@af
    .line 2405
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 2408
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_2 .. :try_end_2} :catch_0

    #@b7
    move-result v2

    #@b8
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 2420
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 2421
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Usage: cmd shortcut COMMAND [options ...]"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 2422
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@d
    .line 2423
    const-string/jumbo v1, "cmd shortcut reset-package-throttling [--user USER_ID] PACKAGE"

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 2424
    const-string/jumbo v1, "    Reset throttling for a package"

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 2425
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 2426
    const-string/jumbo v1, "cmd shortcut reset-throttling [--user USER_ID]"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 2427
    const-string/jumbo v1, "    Reset throttling for all packages and users"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 2428
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@2b
    .line 2429
    const-string/jumbo v1, "cmd shortcut reset-all-throttling"

    #@2e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 2430
    const-string/jumbo v1, "    Reset the throttling state for all users"

    #@34
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 2431
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 2432
    const-string/jumbo v1, "cmd shortcut override-config CONFIG"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 2433
    const-string/jumbo v1, "    Override the configuration for testing (will last until reboot)"

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 2434
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@49
    .line 2435
    const-string/jumbo v1, "cmd shortcut reset-config"

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 2436
    const-string/jumbo v1, "    Reset the configuration set with \"update-config\""

    #@52
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 2437
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@58
    .line 2438
    const-string/jumbo v1, "cmd shortcut clear-default-launcher [--user USER_ID]"

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 2439
    const-string/jumbo v1, "    Clear the cached default launcher"

    #@61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 2440
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@67
    .line 2441
    const-string/jumbo v1, "cmd shortcut get-default-launcher [--user USER_ID]"

    #@6a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 2442
    const-string/jumbo v1, "    Show the cached default launcher"

    #@70
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 2443
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@76
    .line 2444
    const-string/jumbo v1, "cmd shortcut refresh-default-launcher [--user USER_ID]"

    #@79
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 2445
    const-string/jumbo v1, "    Refresh the cached default launcher"

    #@7f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 2446
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@85
    .line 2447
    const-string/jumbo v1, "cmd shortcut unload-user [--user USER_ID]"

    #@88
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 2448
    const-string/jumbo v1, "    Unload a user from the memory"

    #@8e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 2449
    const-string/jumbo v1, "    (This should not affect any observable behavior)"

    #@94
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 2450
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@9a
    .line 2451
    const-string/jumbo v1, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 2452
    const-string/jumbo v1, "    Remove all shortcuts from a package, including pinned shortcuts"

    #@a3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 2453
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@a9
    .line 2419
    return-void
.end method
