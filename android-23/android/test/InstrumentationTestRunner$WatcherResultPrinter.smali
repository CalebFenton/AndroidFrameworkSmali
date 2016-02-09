.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;
.implements Landroid/os/PerformanceCollector$PerformanceResultsWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field mIncludeDetailedStats:Z

.field mIsTimedTest:Z

.field mPerfCollector:Landroid/os/PerformanceCollector;

.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .locals 3
    .param p1, "this$0"    # Landroid/test/InstrumentationTestRunner;
    .param p2, "numTests"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 751
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 744
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    #@8
    .line 745
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@a
    .line 746
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@d
    .line 747
    new-instance v0, Landroid/os/PerformanceCollector;

    #@f
    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    #@12
    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@14
    .line 748
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@16
    .line 749
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    #@18
    .line 752
    new-instance v0, Landroid/os/Bundle;

    #@1a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@1f
    .line 753
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@21
    const-string/jumbo v1, "id"

    #@24
    const-string/jumbo v2, "InstrumentationTestRunner"

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 754
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@2c
    const-string/jumbo v1, "numtests"

    #@2f
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    .line 751
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "stack"

    #@5
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 835
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@f
    .line 837
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@11
    const-string/jumbo v1, "stream"

    #@14
    .line 838
    const-string/jumbo v2, "\nError in %s:\n%s"

    #@17
    const/4 v3, 0x2

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 839
    check-cast p1, Ljunit/framework/TestCase;

    #@1c
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, 0x0

    #@21
    aput-object v4, v3, v5

    #@23
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    const/4 v5, 0x1

    #@28
    aput-object v4, v3, v5

    #@2a
    .line 838
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 833
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "stack"

    #@5
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 847
    const/4 v0, -0x2

    #@d
    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@f
    .line 849
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@11
    const-string/jumbo v1, "stream"

    #@14
    .line 850
    const-string/jumbo v2, "\nFailure in %s:\n%s"

    #@17
    const/4 v3, 0x2

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 851
    check-cast p1, Ljunit/framework/TestCase;

    #@1c
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, 0x0

    #@21
    aput-object v4, v3, v5

    #@23
    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    const/4 v5, 0x1

    #@28
    aput-object v4, v3, v5

    #@2a
    .line 850
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 849
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 845
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 858
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@2
    if-eqz v1, :cond_2

    #@4
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 859
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@a
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@c
    invoke-virtual {v2}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    .line 864
    :cond_0
    :goto_0
    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@15
    if-nez v1, :cond_1

    #@17
    .line 865
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@19
    const-string/jumbo v2, "stream"

    #@1c
    const-string/jumbo v3, "."

    #@1f
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 867
    :cond_1
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@24
    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@26
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@28
    invoke-virtual {v1, v2, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    #@2b
    .line 870
    :try_start_0
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@2d
    invoke-static {v1}, Landroid/test/InstrumentationTestRunner;->-get0(Landroid/test/InstrumentationTestRunner;)I

    #@30
    move-result v1

    #@31
    int-to-long v2, v1

    #@32
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 857
    return-void

    #@36
    .line 860
    :cond_2
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 861
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@3c
    const-string/jumbo v2, ""

    #@3f
    invoke-virtual {v1, v2}, Landroid/os/PerformanceCollector;->stopTiming(Ljava/lang/String;)Landroid/os/Bundle;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p0, v1}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->writeStopTiming(Landroid/os/Bundle;)V

    #@46
    goto :goto_0

    #@47
    .line 871
    :catch_0
    move-exception v0

    #@48
    .line 872
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4a
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 13
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 762
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .local v4, "testClass":Ljava/lang/String;
    move-object v7, p1

    #@b
    .line 763
    check-cast v7, Ljunit/framework/TestCase;

    #@d
    invoke-virtual {v7}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 764
    .local v6, "testName":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    #@13
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    #@15
    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@18
    iput-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@1a
    .line 765
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@1c
    const-string/jumbo v8, "class"

    #@1f
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 766
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@24
    const-string/jumbo v8, "test"

    #@27
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 767
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2c
    const-string/jumbo v8, "current"

    #@2f
    iget v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    #@31
    add-int/lit8 v9, v9, 0x1

    #@33
    iput v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    #@35
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    .line 769
    if-eqz v4, :cond_0

    #@3a
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@3c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_5

    #@42
    .line 774
    :cond_0
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@44
    const-string/jumbo v8, "stream"

    #@47
    const-string/jumbo v9, ""

    #@4a
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 777
    :goto_0
    const/4 v5, 0x0

    #@4e
    .line 779
    .local v5, "testMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object v7

    #@52
    const/4 v8, 0x0

    #@53
    new-array v8, v8, [Ljava/lang/Class;

    #@55
    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@58
    move-result-object v5

    #@59
    .line 781
    .local v5, "testMethod":Ljava/lang/reflect/Method;
    const-class v7, Landroid/test/RepetitiveTest;

    #@5b
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_1

    #@61
    .line 783
    const-class v7, Landroid/test/RepetitiveTest;

    #@63
    .line 782
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@66
    move-result-object v7

    #@67
    check-cast v7, Landroid/test/RepetitiveTest;

    #@69
    invoke-interface {v7}, Landroid/test/RepetitiveTest;->numIterations()I

    #@6c
    move-result v3

    #@6d
    .line 784
    .local v3, "numIterations":I
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@6f
    const-string/jumbo v8, "numiterations"

    #@72
    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    #@75
    .line 797
    .end local v3    # "numIterations":I
    .end local v5    # "testMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    :try_start_1
    iget v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    #@77
    if-ne v7, v12, :cond_2

    #@79
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@7b
    invoke-static {v7}, Landroid/test/InstrumentationTestRunner;->-get0(Landroid/test/InstrumentationTestRunner;)I

    #@7e
    move-result v7

    #@7f
    int-to-long v8, v7

    #@80
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    .line 802
    :cond_2
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@85
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@87
    invoke-virtual {v7, v12, v8}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    #@8a
    .line 803
    iput v11, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    #@8c
    .line 805
    iput-boolean v11, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@8e
    .line 806
    iput-boolean v11, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    #@90
    .line 809
    if-eqz v5, :cond_6

    #@92
    :try_start_2
    const-class v7, Landroid/test/TimedTest;

    #@94
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_6

    #@9a
    .line 810
    const/4 v7, 0x1

    #@9b
    iput-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@9d
    .line 812
    const-class v7, Landroid/test/TimedTest;

    #@9f
    .line 811
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@a2
    move-result-object v7

    #@a3
    check-cast v7, Landroid/test/TimedTest;

    #@a5
    invoke-interface {v7}, Landroid/test/TimedTest;->includeDetailedStats()Z

    #@a8
    move-result v7

    #@a9
    iput-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    #@ab
    .line 823
    :cond_3
    :goto_2
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@ad
    if-eqz v7, :cond_7

    #@af
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    #@b1
    if-eqz v7, :cond_7

    #@b3
    .line 824
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@b5
    const-string/jumbo v8, ""

    #@b8
    invoke-virtual {v7, v8}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    #@bb
    .line 761
    :cond_4
    :goto_3
    return-void

    #@bc
    .line 770
    :cond_5
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@be
    const-string/jumbo v8, "stream"

    #@c1
    .line 771
    const-string/jumbo v9, "\n%s:"

    #@c4
    new-array v10, v12, [Ljava/lang/Object;

    #@c6
    aput-object v4, v10, v11

    #@c8
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    .line 770
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@cf
    .line 772
    iput-object v4, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    #@d1
    goto/16 :goto_0

    #@d3
    .line 798
    :catch_0
    move-exception v0

    #@d4
    .line 799
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/IllegalStateException;

    #@d6
    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@d9
    throw v7

    #@da
    .line 813
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@dd
    move-result-object v7

    #@de
    const-class v8, Landroid/test/TimedTest;

    #@e0
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@e3
    move-result v7

    #@e4
    if-eqz v7, :cond_3

    #@e6
    .line 814
    const/4 v7, 0x1

    #@e7
    iput-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@e9
    .line 815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ec
    move-result-object v7

    #@ed
    .line 816
    const-class v8, Landroid/test/TimedTest;

    #@ef
    .line 815
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@f2
    move-result-object v7

    #@f3
    check-cast v7, Landroid/test/TimedTest;

    #@f5
    invoke-interface {v7}, Landroid/test/TimedTest;->includeDetailedStats()Z

    #@f8
    move-result v7

    #@f9
    iput-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    #@fb
    goto :goto_2

    #@fc
    .line 818
    :catch_1
    move-exception v2

    #@fd
    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_2

    #@fe
    .line 825
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_7
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    #@100
    if-eqz v7, :cond_4

    #@102
    .line 826
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@104
    const-string/jumbo v8, ""

    #@107
    invoke-virtual {v7, v8}, Landroid/os/PerformanceCollector;->startTiming(Ljava/lang/String;)V

    #@10a
    goto :goto_3

    #@10b
    .line 786
    :catch_2
    move-exception v1

    #@10c
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_1
.end method

.method public writeBeginSnapshot(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 876
    return-void
.end method

.method public writeEndSnapshot(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@2
    invoke-static {v0}, Landroid/test/InstrumentationTestRunner;->-get1(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@9
    .line 880
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@5
    .line 912
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;J)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@5
    .line 908
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 916
    return-void
.end method

.method public writeStartTiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 886
    return-void
.end method

.method public writeStopTiming(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 893
    const/4 v0, 0x0

    #@1
    .line 895
    .local v0, "i":I
    const-string/jumbo v5, "iterations"

    #@4
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@7
    move-result-object v5

    #@8
    .line 894
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v4

    #@c
    .local v4, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/os/Parcelable;

    #@18
    .local v3, "p":Landroid/os/Parcelable;
    move-object v2, v3

    #@19
    .line 896
    check-cast v2, Landroid/os/Bundle;

    #@1b
    .line 897
    .local v2, "iteration":Landroid/os/Bundle;
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "iteration"

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, "."

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 898
    .local v1, "index":Ljava/lang/String;
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@38
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v7, "label"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    .line 899
    const-string/jumbo v7, "label"

    #@4f
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 898
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 900
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@58
    new-instance v6, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    const-string/jumbo v7, "cpu_time"

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 901
    const-string/jumbo v7, "cpu_time"

    #@6f
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@72
    move-result-wide v8

    #@73
    .line 900
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@76
    .line 902
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    #@78
    new-instance v6, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    const-string/jumbo v7, "execution_time"

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    .line 903
    const-string/jumbo v7, "execution_time"

    #@8f
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@92
    move-result-wide v8

    #@93
    .line 902
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@96
    .line 904
    add-int/lit8 v0, v0, 0x1

    #@98
    goto/16 :goto_0

    #@9a
    .line 890
    .end local v1    # "index":Ljava/lang/String;
    .end local v2    # "iteration":Landroid/os/Bundle;
    .end local v3    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method
