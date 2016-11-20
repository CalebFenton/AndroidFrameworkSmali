.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/statusbar/StatusBarManagerService;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@5
    .line 28
    return-void
.end method

.method private runAddTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->addTile(Landroid/content/ComponentName;)V

    #@d
    .line 63
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private runClickTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->clickTile(Landroid/content/ComponentName;)V

    #@d
    .line 73
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private runCollapse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V

    #@5
    .line 78
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method private runExpandNotifications()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V

    #@5
    .line 88
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method private runExpandSettings()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V

    #@6
    .line 83
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method private runRemoveTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V

    #@d
    .line 68
    const/4 v0, 0x0

    #@e
    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    if-nez p1, :cond_0

    #@2
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 38
    :cond_0
    :try_start_0
    const-string/jumbo v2, "expand-notifications"

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 40
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 38
    :cond_1
    const-string/jumbo v2, "expand-settings"

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 42
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 38
    :cond_2
    const-string/jumbo v2, "collapse"

    #@26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_3

    #@2c
    .line 44
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 38
    :cond_3
    const-string/jumbo v2, "add-tile"

    #@34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 46
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    #@3d
    move-result v2

    #@3e
    return v2

    #@3f
    .line 38
    :cond_4
    const-string/jumbo v2, "remove-tile"

    #@42
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_5

    #@48
    .line 48
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    #@4b
    move-result v2

    #@4c
    return v2

    #@4d
    .line 38
    :cond_5
    const-string/jumbo v2, "click-tile"

    #@50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_6

    #@56
    .line 50
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    #@59
    move-result v2

    #@5a
    return v2

    #@5b
    .line 52
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    move-result v2

    #@5f
    return v2

    #@60
    .line 54
    :catch_0
    move-exception v0

    #@61
    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@64
    move-result-object v1

    #@65
    .line 56
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v3, "Remote exception: "

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 58
    const/4 v2, -0x1

    #@7d
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Status bar commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 95
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 96
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 97
    const-string/jumbo v1, ""

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 98
    const-string/jumbo v1, "  expand-notifications"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 99
    const-string/jumbo v1, "    Open the notifications panel."

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 100
    const-string/jumbo v1, ""

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 101
    const-string/jumbo v1, "  expand-settings"

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 102
    const-string/jumbo v1, "    Open the notifications panel and expand quick settings if present."

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 103
    const-string/jumbo v1, ""

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 104
    const-string/jumbo v1, "  collapse"

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 105
    const-string/jumbo v1, "    Collapse the notifications and settings panel."

    #@49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 106
    const-string/jumbo v1, ""

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 107
    const-string/jumbo v1, "  add-tile COMPONENT"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 108
    const-string/jumbo v1, "    Add a TileService of the specified component"

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 109
    const-string/jumbo v1, ""

    #@61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 110
    const-string/jumbo v1, "  remove-tile COMPONENT"

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 111
    const-string/jumbo v1, "    Remove a TileService of the specified component"

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 112
    const-string/jumbo v1, ""

    #@73
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@76
    .line 113
    const-string/jumbo v1, "  click-tile COMPONENT"

    #@79
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 114
    const-string/jumbo v1, "    Click on a TileService of the specified component"

    #@7f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 115
    const-string/jumbo v1, ""

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 92
    return-void
.end method
