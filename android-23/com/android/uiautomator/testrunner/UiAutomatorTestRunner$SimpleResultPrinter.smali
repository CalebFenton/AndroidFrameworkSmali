.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleResultPrinter"
.end annotation


# instance fields
.field private final mFullOutput:Z

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .param p2, "writer"    # Ljava/io/PrintStream;
    .param p3, "fullOutput"    # Z

    #@0
    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@2
    .line 374
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    #@5
    .line 375
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    #@7
    .line 373
    return-void
.end method


# virtual methods
.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 380
    invoke-virtual {p0, p2, p3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printHeader(J)V

    #@3
    .line 381
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    #@a
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    #@d
    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFooter(Ljunit/framework/TestResult;)V

    #@10
    .line 379
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 391
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "Test run aborted due to unexpected exeption: %s"

    #@b
    const/4 v2, 0x1

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    .line 392
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    .line 391
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@18
    .line 393
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@1f
    .line 389
    :cond_0
    return-void
.end method
