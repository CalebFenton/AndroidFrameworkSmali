.class Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand.java"


# instance fields
.field final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .locals 0
    .param p1, "service"    # Landroid/webkit/IWebViewUpdateService;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    #@5
    .line 27
    return-void
.end method

.method private enableFallbackLogic(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    #@6
    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableFallbackLogic(Z)V

    #@9
    .line 58
    const-string/jumbo v1, "Success"

    #@c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 59
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private setWebViewImplementation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 63
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v1

    #@6
    .line 64
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getNextArg()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 65
    .local v2, "shellChosenPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    #@c
    invoke-interface {v3, v2}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 66
    .local v0, "newPackage":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 67
    const-string/jumbo v3, "Success"

    #@19
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 68
    return v5

    #@1d
    .line 71
    :cond_0
    const-string/jumbo v3, "Failed to switch to %s, the WebView implementation is now provided by %s."

    #@20
    .line 70
    const/4 v4, 0x2

    #@21
    new-array v4, v4, [Ljava/lang/Object;

    #@23
    .line 72
    aput-object v2, v4, v5

    #@25
    aput-object v0, v4, v6

    #@27
    .line 70
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 73
    return v6
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    if-nez p1, :cond_0

    #@2
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 39
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "enable-redundant-packages"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 41
    const/4 v2, 0x0

    #@15
    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 39
    :cond_1
    const-string/jumbo v2, "disable-redundant-packages"

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 43
    const/4 v2, 0x1

    #@24
    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 39
    :cond_2
    const-string/jumbo v2, "set-webview-implementation"

    #@2c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 45
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->setWebViewImplementation()I

    #@35
    move-result v2

    #@36
    return v2

    #@37
    .line 47
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result v2

    #@3b
    return v2

    #@3c
    .line 49
    :catch_0
    move-exception v0

    #@3d
    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Remote exception: "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 52
    const/4 v2, -0x1

    #@55
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 80
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "WebView updater commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 81
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 82
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 83
    const-string/jumbo v1, ""

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 84
    const-string/jumbo v1, "  enable-redundant-packages"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 85
    const-string/jumbo v1, "    Allow a fallback package to be installed and enabled even when a"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 86
    const-string/jumbo v1, "    more-preferred package is available. This command is useful when testing"

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 87
    const-string/jumbo v1, "    fallback packages."

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 88
    const-string/jumbo v1, "  disable-redundant-packages"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 89
    const-string/jumbo v1, "    Disallow installing and enabling fallback packages when a more-preferred"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 90
    const-string/jumbo v1, "    package is available."

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 91
    const-string/jumbo v1, "  set-webview-implementation PACKAGE"

    #@49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 92
    const-string/jumbo v1, "    Set the WebView implementation to the specified package."

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 93
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@55
    .line 78
    return-void
.end method
