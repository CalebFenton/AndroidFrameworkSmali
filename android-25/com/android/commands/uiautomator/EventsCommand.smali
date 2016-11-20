.class public Lcom/android/commands/uiautomator/EventsCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "EventsCommand.java"


# instance fields
.field private mQuitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "events"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 35
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    #@d
    .line 37
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 53
    new-instance v0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@2
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    #@5
    .line 54
    .local v0, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    #@8
    .line 55
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    #@b
    move-result-object v2

    #@c
    .line 56
    new-instance v3, Lcom/android/commands/uiautomator/EventsCommand$1;

    #@e
    invoke-direct {v3, p0}, Lcom/android/commands/uiautomator/EventsCommand$1;-><init>(Lcom/android/commands/uiautomator/EventsCommand;)V

    #@11
    .line 55
    invoke-virtual {v2, v3}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    #@14
    .line 66
    iget-object v3, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    #@19
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :goto_0
    monitor-exit v3

    #@1d
    .line 73
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@20
    .line 52
    return-void

    #@21
    .line 69
    :catch_0
    move-exception v1

    #@22
    .line 70
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 66
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "prints out accessibility events until terminated"

    #@3
    return-object v0
.end method
