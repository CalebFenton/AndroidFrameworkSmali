.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "testCaseName"    # Ljava/lang/String;
    .param p2, "runnerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    #@6
    .line 36
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    #@8
    .line 33
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 10
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    .line 42
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "Bad component name"

    #@11
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 45
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    #@17
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@1a
    .line 46
    .local v4, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "class"

    #@1d
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    #@1f
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 48
    const/4 v2, 0x0

    #@23
    const/4 v3, 0x0

    #@24
    const/4 v5, 0x0

    #@25
    const/4 v6, 0x0

    #@26
    const/4 v7, 0x0

    #@27
    const/4 v8, 0x0

    #@28
    move-object v0, p2

    #@29
    :try_start_0
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 53
    const/4 v0, 0x1

    #@2d
    return v0

    #@2e
    .line 49
    :catch_0
    move-exception v9

    #@2f
    .line 50
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31
    const-string/jumbo v2, "** Failed talking with activity manager!"

    #@34
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 51
    const/4 v0, -0x1

    #@38
    return v0
.end method
