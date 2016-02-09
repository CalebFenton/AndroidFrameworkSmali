.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;
    }
.end annotation


# static fields
.field private static final EXIT_EXCEPTION:I = -0x1

.field private static final EXIT_OK:I = 0x0

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomatorHandlerThread"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mDebug:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMonkey:Z

.field private mParams:Landroid/os/Bundle;

.field private mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;

.field private final mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    #@8
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@6
    .line 66
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    #@8
    .line 67
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    #@a
    invoke-direct {v0, p0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;)V

    #@d
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    #@f
    .line 68
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;

    #@11
    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    #@14
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@16
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    #@1d
    .line 54
    return-void
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 413
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 411
    :cond_0
    return-void
.end method

.method protected getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 399
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector;

    #@2
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;-><init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V

    #@9
    return-object v0
.end method

.method public getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;
    .locals 1

    #@0
    .prologue
    .line 408
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    #@2
    invoke-direct {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;-><init>()V

    #@5
    return-object v0
.end method

.method protected prepareTestCase(Ljunit/framework/TestCase;)V
    .locals 2
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 427
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@3
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@5
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V

    #@8
    move-object v0, p1

    #@9
    .line 428
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@b
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V

    #@10
    .line 429
    check-cast p1, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@12
    .end local p1    # "testCase":Ljunit/framework/TestCase;
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@14
    invoke-virtual {p1, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setParams(Landroid/os/Bundle;)V

    #@17
    .line 426
    return-void
.end method

.method protected removeTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 417
    return-void
.end method

.method public run(Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 1
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "debug"    # Z
    .param p4, "monkey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p1, "testClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    #@5
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@8
    .line 92
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    #@a
    .line 93
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@c
    .line 94
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    #@e
    .line 95
    iput-boolean p4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    #@10
    .line 96
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->start()V

    #@13
    .line 97
    const/4 v0, 0x0

    #@14
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@17
    .line 78
    return-void
.end method

.method protected start()V
    .locals 28

    #@0
    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v24

    #@4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v24

    #@8
    move-object/from16 v0, p0

    #@a
    move-object/from16 v1, v24

    #@c
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;

    #@f
    move-result-object v5

    #@10
    .line 106
    .local v5, "collector":Lcom/android/uiautomator/testrunner/TestCaseCollector;
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    #@14
    move-object/from16 v24, v0

    #@16
    move-object/from16 v0, v24

    #@18
    invoke-virtual {v5, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClasses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 111
    move-object/from16 v0, p0

    #@1d
    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    #@1f
    move/from16 v24, v0

    #@21
    if-eqz v24, :cond_0

    #@23
    .line 112
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    #@26
    .line 114
    :cond_0
    new-instance v24, Landroid/os/HandlerThread;

    #@28
    const-string/jumbo v25, "UiAutomatorHandlerThread"

    #@2b
    invoke-direct/range {v24 .. v25}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@2e
    move-object/from16 v0, v24

    #@30
    move-object/from16 v1, p0

    #@32
    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@34
    .line 115
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@38
    move-object/from16 v24, v0

    #@3a
    const/16 v25, 0x1

    #@3c
    invoke-virtual/range {v24 .. v25}, Landroid/os/HandlerThread;->setDaemon(Z)V

    #@3f
    .line 116
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@43
    move-object/from16 v24, v0

    #@45
    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->start()V

    #@48
    .line 117
    new-instance v4, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@4a
    invoke-direct {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    #@4d
    .line 118
    .local v4, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    #@50
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@53
    move-result-wide v16

    #@54
    .line 121
    .local v16, "startTime":J
    new-instance v22, Ljunit/framework/TestResult;

    #@56
    invoke-direct/range {v22 .. v22}, Ljunit/framework/TestResult;-><init>()V

    #@59
    .line 123
    .local v22, "testRunResult":Ljunit/framework/TestResult;
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@5d
    move-object/from16 v24, v0

    #@5f
    const-string/jumbo v25, "outputFormat"

    #@62
    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v11

    #@66
    .line 124
    .local v11, "outputFormat":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->getTestCases()Ljava/util/List;

    #@69
    move-result-object v20

    #@6a
    .line 125
    .local v20, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    new-instance v21, Landroid/os/Bundle;

    #@6c
    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    #@6f
    .line 126
    .local v21, "testRunOutput":Landroid/os/Bundle;
    const-string/jumbo v24, "simple"

    #@72
    move-object/from16 v0, v24

    #@74
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v24

    #@78
    if-eqz v24, :cond_2

    #@7a
    .line 127
    new-instance v12, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    #@7c
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7e
    const/16 v25, 0x1

    #@80
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, v24

    #@84
    move/from16 v2, v25

    #@86
    invoke-direct {v12, v0, v1, v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    #@89
    .line 132
    .local v12, "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@8b
    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    #@8d
    move/from16 v24, v0

    #@8f
    move/from16 v0, v24

    #@91
    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    #@94
    .line 133
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    #@97
    move-result-object v24

    #@98
    move-object/from16 v0, v24

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    #@9e
    .line 134
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    #@a2
    move-object/from16 v24, v0

    #@a4
    new-instance v25, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    #@a6
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    #@a9
    move-result-object v26

    #@aa
    invoke-direct/range {v25 .. v26}, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    #@ad
    invoke-virtual/range {v24 .. v25}, Lcom/android/uiautomator/core/UiDevice;->initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    #@b0
    .line 136
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@b4
    move-object/from16 v24, v0

    #@b6
    const-string/jumbo v25, "traceOutputMode"

    #@b9
    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@bc
    move-result-object v23

    #@bd
    .line 137
    .local v23, "traceType":Ljava/lang/String;
    if-eqz v23, :cond_5

    #@bf
    .line 138
    const-class v24, Lcom/android/uiautomator/core/Tracer$Mode;

    #@c1
    move-object/from16 v0, v24

    #@c3
    move-object/from16 v1, v23

    #@c5
    invoke-static {v0, v1}, Lcom/android/uiautomator/core/Tracer$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@c8
    move-result-object v10

    #@c9
    check-cast v10, Lcom/android/uiautomator/core/Tracer$Mode;

    #@cb
    .line 139
    .local v10, "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    sget-object v24, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@cd
    move-object/from16 v0, v24

    #@cf
    if-eq v10, v0, :cond_1

    #@d1
    sget-object v24, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    #@d3
    move-object/from16 v0, v24

    #@d5
    if-ne v10, v0, :cond_4

    #@d7
    .line 140
    :cond_1
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    #@db
    move-object/from16 v24, v0

    #@dd
    const-string/jumbo v25, "traceLogFilename"

    #@e0
    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    .line 141
    .local v7, "filename":Ljava/lang/String;
    if-nez v7, :cond_3

    #@e6
    .line 142
    new-instance v24, Ljava/lang/RuntimeException;

    #@e8
    const-string/jumbo v25, "Name of log file not specified. Please specify it using traceLogFilename parameter"

    #@eb
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v24
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ef
    .line 162
    .end local v7    # "filename":Ljava/lang/String;
    .end local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    .end local v23    # "traceType":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@f0
    .line 164
    .local v13, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v12, v13}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->printUnexpectedError(Ljava/lang/Throwable;)V

    #@f3
    .line 165
    const-string/jumbo v24, "shortMsg"

    #@f6
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@f9
    move-result-object v25

    #@fa
    move-object/from16 v0, v21

    #@fc
    move-object/from16 v1, v24

    #@fe
    move-object/from16 v2, v25

    #@100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@103
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@106
    move-result-wide v24

    #@107
    sub-long v14, v24, v16

    #@109
    .line 168
    .local v14, "runTime":J
    move-object/from16 v0, v22

    #@10b
    move-object/from16 v1, v21

    #@10d
    invoke-interface {v12, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    #@110
    .line 169
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@113
    .line 170
    const/16 v24, 0x0

    #@115
    move/from16 v0, v24

    #@117
    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    #@11a
    .line 171
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@11e
    move-object/from16 v24, v0

    #@120
    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->quit()Z

    #@123
    .line 103
    .end local v13    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    #@124
    .line 107
    .end local v4    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .end local v11    # "outputFormat":Ljava/lang/String;
    .end local v12    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .end local v14    # "runTime":J
    .end local v16    # "startTime":J
    .end local v20    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v21    # "testRunOutput":Landroid/os/Bundle;
    .end local v22    # "testRunResult":Ljunit/framework/TestResult;
    :catch_1
    move-exception v6

    #@125
    .line 109
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v24, Ljava/lang/RuntimeException;

    #@127
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    #@12a
    move-result-object v25

    #@12b
    move-object/from16 v0, v24

    #@12d
    move-object/from16 v1, v25

    #@12f
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@132
    throw v24

    #@133
    .line 129
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .restart local v11    # "outputFormat":Ljava/lang/String;
    .restart local v16    # "startTime":J
    .restart local v20    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .restart local v21    # "testRunOutput":Landroid/os/Bundle;
    .restart local v22    # "testRunResult":Ljunit/framework/TestResult;
    :cond_2
    new-instance v12, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;

    #@135
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@138
    move-result v24

    #@139
    move-object/from16 v0, p0

    #@13b
    move/from16 v1, v24

    #@13d
    invoke-direct {v12, v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V

    #@140
    .restart local v12    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    goto/16 :goto_0

    #@142
    .line 145
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    .restart local v23    # "traceType":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    #@145
    move-result-object v24

    #@146
    move-object/from16 v0, v24

    #@148
    invoke-virtual {v0, v7}, Lcom/android/uiautomator/core/Tracer;->setOutputFilename(Ljava/lang/String;)V

    #@14b
    .line 147
    .end local v7    # "filename":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    #@14e
    move-result-object v24

    #@14f
    move-object/from16 v0, v24

    #@151
    invoke-virtual {v0, v10}, Lcom/android/uiautomator/core/Tracer;->setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V

    #@154
    .line 151
    .end local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    :cond_5
    move-object/from16 v0, v22

    #@156
    invoke-virtual {v0, v12}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    #@159
    .line 153
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    #@15d
    move-object/from16 v24, v0

    #@15f
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@162
    move-result-object v9

    #@163
    .local v9, "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@166
    move-result v24

    #@167
    if-eqz v24, :cond_6

    #@169
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16c
    move-result-object v8

    #@16d
    check-cast v8, Ljunit/framework/TestListener;

    #@16f
    .line 154
    .local v8, "listener":Ljunit/framework/TestListener;
    move-object/from16 v0, v22

    #@171
    invoke-virtual {v0, v8}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@174
    goto :goto_2

    #@175
    .line 166
    .end local v8    # "listener":Ljunit/framework/TestListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    .end local v23    # "traceType":Ljava/lang/String;
    :catchall_0
    move-exception v24

    #@176
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@179
    move-result-wide v26

    #@17a
    sub-long v14, v26, v16

    #@17c
    .line 168
    .restart local v14    # "runTime":J
    move-object/from16 v0, v22

    #@17e
    move-object/from16 v1, v21

    #@180
    invoke-interface {v12, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    #@183
    .line 169
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@186
    .line 170
    const/16 v25, 0x0

    #@188
    move/from16 v0, v25

    #@18a
    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    #@18d
    .line 171
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@191
    move-object/from16 v25, v0

    #@193
    invoke-virtual/range {v25 .. v25}, Landroid/os/HandlerThread;->quit()Z

    #@196
    .line 166
    throw v24

    #@197
    .line 158
    .end local v14    # "runTime":J
    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    .restart local v23    # "traceType":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19a
    move-result-object v19

    #@19b
    .local v19, "testCase$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@19e
    move-result v24

    #@19f
    if-eqz v24, :cond_7

    #@1a1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a4
    move-result-object v18

    #@1a5
    check-cast v18, Ljunit/framework/TestCase;

    #@1a7
    .line 159
    .local v18, "testCase":Ljunit/framework/TestCase;
    move-object/from16 v0, p0

    #@1a9
    move-object/from16 v1, v18

    #@1ab
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->prepareTestCase(Ljunit/framework/TestCase;)V

    #@1ae
    .line 160
    move-object/from16 v0, v18

    #@1b0
    move-object/from16 v1, v22

    #@1b2
    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1b5
    goto :goto_3

    #@1b6
    .line 167
    .end local v18    # "testCase":Ljunit/framework/TestCase;
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b9
    move-result-wide v24

    #@1ba
    sub-long v14, v24, v16

    #@1bc
    .line 168
    .restart local v14    # "runTime":J
    move-object/from16 v0, v22

    #@1be
    move-object/from16 v1, v21

    #@1c0
    invoke-interface {v12, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    #@1c3
    .line 169
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@1c6
    .line 170
    const/16 v24, 0x0

    #@1c8
    move/from16 v0, v24

    #@1ca
    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    #@1cd
    .line 171
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    #@1d1
    move-object/from16 v24, v0

    #@1d3
    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->quit()Z

    #@1d6
    goto/16 :goto_1
.end method
