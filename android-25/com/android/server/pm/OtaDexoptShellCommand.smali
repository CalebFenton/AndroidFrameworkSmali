.class Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "OtaDexoptShellCommand.java"


# instance fields
.field final mInterface:Landroid/content/pm/IOtaDexopt;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/OtaDexoptService;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@5
    .line 28
    return-void
.end method

.method private runOtaCleanup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@2
    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->cleanup()V

    #@5
    .line 70
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method private runOtaDone()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 75
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@6
    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->isDone()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 76
    const-string/jumbo v1, "OTA complete."

    #@f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 80
    :goto_0
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 78
    :cond_0
    const-string/jumbo v1, "OTA incomplete."

    #@17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    goto :goto_0
.end method

.method private runOtaNext()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@6
    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->nextDexoptCommand()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d
    .line 90
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private runOtaPrepare()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@2
    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->prepare()V

    #@5
    .line 64
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Success"

    #@c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 65
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private runOtaProgress()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 94
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@3
    invoke-interface {v2}, Landroid/content/pm/IOtaDexopt;->getProgress()F

    #@6
    move-result v0

    #@7
    .line 95
    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 96
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "%.2f"

    #@e
    const/4 v3, 0x1

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@14
    move-result-object v4

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1a
    .line 97
    return v5
.end method

.method private runOtaStep()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    #@2
    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->dexoptNextPackage()V

    #@5
    .line 85
    const/4 v0, 0x0

    #@6
    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 34
    if-nez p1, :cond_0

    #@3
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@b
    move-result-object v1

    #@c
    .line 40
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "prepare"

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaPrepare()I

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 40
    :cond_1
    const-string/jumbo v2, "cleanup"

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 44
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaCleanup()I

    #@26
    move-result v2

    #@27
    return v2

    #@28
    .line 40
    :cond_2
    const-string/jumbo v2, "done"

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 46
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaDone()I

    #@34
    move-result v2

    #@35
    return v2

    #@36
    .line 40
    :cond_3
    const-string/jumbo v2, "step"

    #@39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_4

    #@3f
    .line 48
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaStep()I

    #@42
    move-result v2

    #@43
    return v2

    #@44
    .line 40
    :cond_4
    const-string/jumbo v2, "next"

    #@47
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_5

    #@4d
    .line 50
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaNext()I

    #@50
    move-result v2

    #@51
    return v2

    #@52
    .line 40
    :cond_5
    const-string/jumbo v2, "progress"

    #@55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_6

    #@5b
    .line 52
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaProgress()I

    #@5e
    move-result v2

    #@5f
    return v2

    #@60
    .line 54
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    move-result v2

    #@64
    return v2

    #@65
    .line 56
    :catch_0
    move-exception v0

    #@66
    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v3, "Remote exception: "

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 59
    const/4 v2, -0x1

    #@7e
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 103
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "OTA Dexopt (ota) commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 104
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 105
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 106
    const-string/jumbo v1, ""

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 107
    const-string/jumbo v1, "  prepare"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 108
    const-string/jumbo v1, "    Prepare an OTA dexopt pass, collecting all packages."

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 109
    const-string/jumbo v1, "  done"

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 110
    const-string/jumbo v1, "    Replies whether the OTA is complete or not."

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 111
    const-string/jumbo v1, "  step"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 112
    const-string/jumbo v1, "    OTA dexopt the next package."

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 113
    const-string/jumbo v1, "  next"

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 114
    const-string/jumbo v1, "    Get parameters for OTA dexopt of the next package."

    #@49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 115
    const-string/jumbo v1, "  cleanup"

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 116
    const-string/jumbo v1, "    Clean up internal states. Ends an OTA session."

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 101
    return-void
.end method
