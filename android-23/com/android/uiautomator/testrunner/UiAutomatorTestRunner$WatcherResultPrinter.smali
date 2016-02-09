.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# static fields
.field private static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field private static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field private static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field private static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_VALUE_ID:Ljava/lang/String; = "UiAutomatorTestRunner"

.field private static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field private static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field private static final REPORT_VALUE_RESULT_START:I = 0x1


# instance fields
.field private final mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

.field private final mResultTemplate:Landroid/os/Bundle;

.field private final mStream:Ljava/io/ByteArrayOutputStream;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field private final mWriter:Ljava/io/PrintStream;

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .param p2, "numTests"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 262
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 254
    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    #@8
    .line 255
    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@a
    .line 256
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@d
    .line 263
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@14
    .line 264
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@16
    const-string/jumbo v1, "id"

    #@19
    const-string/jumbo v2, "UiAutomatorTestRunner"

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 265
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@21
    const-string/jumbo v1, "numtests"

    #@24
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@27
    .line 267
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@29
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    #@2e
    .line 268
    new-instance v0, Ljava/io/PrintStream;

    #@30
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    #@32
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@35
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    #@37
    .line 269
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@39
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    #@3b
    invoke-direct {v0, p1, v1, v3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    #@3e
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@40
    .line 262
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "stack"

    #@5
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 317
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@f
    .line 319
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@11
    const-string/jumbo v2, "stream"

    #@14
    .line 320
    const-string/jumbo v3, "\nError in %s:\n%s"

    #@17
    const/4 v0, 0x2

    #@18
    new-array v4, v0, [Ljava/lang/Object;

    #@1a
    move-object v0, p1

    #@1b
    .line 321
    check-cast v0, Ljunit/framework/TestCase;

    #@1d
    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const/4 v5, 0x0

    #@22
    aput-object v0, v4, v5

    #@24
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    const/4 v5, 0x1

    #@29
    aput-object v0, v4, v5

    #@2b
    .line 320
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 319
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 323
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@34
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@37
    .line 315
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "stack"

    #@5
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 329
    const/4 v0, -0x2

    #@d
    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@f
    .line 331
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@11
    const-string/jumbo v2, "stream"

    #@14
    .line 332
    const-string/jumbo v3, "\nFailure in %s:\n%s"

    #@17
    const/4 v0, 0x2

    #@18
    new-array v4, v0, [Ljava/lang/Object;

    #@1a
    move-object v0, p1

    #@1b
    .line 333
    check-cast v0, Ljunit/framework/TestCase;

    #@1d
    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const/4 v5, 0x0

    #@22
    aput-object v0, v4, v5

    #@24
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    const/4 v5, 0x1

    #@29
    aput-object v0, v4, v5

    #@2b
    .line 332
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 331
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 335
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@34
    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    #@37
    .line 327
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 340
    iget v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 341
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@6
    const-string/jumbo v1, "stream"

    #@9
    const-string/jumbo v2, "."

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@11
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-get1(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@17
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@19
    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    #@1c
    .line 345
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->endTest(Ljunit/framework/Test;)V

    #@21
    .line 339
    return-void
.end method

.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    #@5
    .line 351
    const-string/jumbo v0, "stream"

    #@8
    .line 352
    const-string/jumbo v1, "\nTest results for %s=%s"

    #@b
    const/4 v2, 0x2

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    .line 353
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    .line 354
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    #@1b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    const/4 v4, 0x1

    #@20
    aput-object v3, v2, v4

    #@22
    .line 352
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 351
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 355
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    #@2b
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    #@2e
    .line 356
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@30
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-get1(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@33
    move-result-object v0

    #@34
    const/4 v1, -0x1

    #@35
    invoke-interface {v0, v1, p4}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    #@38
    .line 349
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "Test run aborted due to unexpected exception: %s"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v3, v2, v4

    #@f
    .line 361
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 363
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@1b
    .line 360
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 11
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .local v2, "testClass":Ljava/lang/String;
    move-object v5, p1

    #@b
    .line 279
    check-cast v5, Ljunit/framework/TestCase;

    #@d
    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 280
    .local v4, "testName":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    #@13
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@15
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@18
    iput-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@1a
    .line 281
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@1c
    const-string/jumbo v6, "class"

    #@1f
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 282
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@24
    const-string/jumbo v6, "test"

    #@27
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 283
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2c
    const-string/jumbo v6, "current"

    #@2f
    iget v7, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    #@31
    add-int/lit8 v7, v7, 0x1

    #@33
    iput v7, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    #@35
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    .line 285
    if-eqz v2, :cond_0

    #@3a
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@3c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 290
    :cond_0
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@44
    const-string/jumbo v6, "stream"

    #@47
    const-string/jumbo v7, ""

    #@4a
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 293
    :goto_0
    const/4 v3, 0x0

    #@4e
    .line 295
    .local v3, "testMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object v5

    #@52
    const/4 v6, 0x0

    #@53
    new-array v6, v6, [Ljava/lang/Class;

    #@55
    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@58
    move-result-object v3

    #@59
    .line 297
    .local v3, "testMethod":Ljava/lang/reflect/Method;
    const-class v5, Landroid/test/RepetitiveTest;

    #@5b
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_1

    #@61
    .line 298
    const-class v5, Landroid/test/RepetitiveTest;

    #@63
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Landroid/test/RepetitiveTest;

    #@69
    invoke-interface {v5}, Landroid/test/RepetitiveTest;->numIterations()I

    #@6c
    move-result v1

    #@6d
    .line 300
    .local v1, "numIterations":I
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@6f
    const-string/jumbo v6, "numiterations"

    #@72
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    .line 308
    .end local v1    # "numIterations":I
    .end local v3    # "testMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@77
    invoke-static {v5}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-get1(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@7a
    move-result-object v5

    #@7b
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@7d
    invoke-interface {v5, v10, v6}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    #@80
    .line 309
    iput v9, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@82
    .line 311
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@84
    invoke-virtual {v5, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->startTest(Ljunit/framework/Test;)V

    #@87
    .line 277
    return-void

    #@88
    .line 286
    :cond_2
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@8a
    const-string/jumbo v6, "stream"

    #@8d
    .line 287
    const-string/jumbo v7, "\n%s:"

    #@90
    new-array v8, v10, [Ljava/lang/Object;

    #@92
    aput-object v2, v8, v9

    #@94
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 286
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9b
    .line 288
    iput-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@9d
    goto :goto_0

    #@9e
    .line 302
    :catch_0
    move-exception v0

    #@9f
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1
.end method
