.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 82
    invoke-static {}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-get0()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "uncaught exception"

    #@7
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    .line 83
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    .line 84
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "shortMsg"

    #@12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 85
    const-string/jumbo v1, "longMsg"

    #@20
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 86
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@29
    invoke-static {v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-get2(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x0

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    #@32
    .line 88
    const/4 v1, -0x1

    #@33
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@36
    .line 81
    return-void
.end method
