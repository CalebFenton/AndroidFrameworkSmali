.class public Landroid/test/AndroidTestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "AndroidTestRunner.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSkipExecution:Z

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mTestClassName:Ljava/lang/String;

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestResult:Ljunit/framework/TestResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    #@6
    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    #@c
    .line 36
    return-void
.end method

.method private buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .locals 5
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    const/4 v2, 0x0

    #@1
    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@6
    move-result-object v0

    #@7
    .line 97
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    invoke-direct {p0, p1, p2, v0, v2}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 98
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    #@10
    .line 102
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x1

    #@11
    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    #@13
    const-class v3, Ljava/lang/String;

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v3, v2, v4

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1b
    move-result-object v0

    #@1c
    .line 103
    .restart local v0    # "c":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    #@1d
    new-array v2, v2, [Ljava/lang/Object;

    #@1f
    const/4 v3, 0x0

    #@20
    aput-object p2, v2, v3

    #@22
    invoke-direct {p0, p1, p2, v0, v2}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    move-result-object v2

    #@26
    return-object v2

    #@27
    .line 104
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    #@28
    .line 107
    const/4 v2, 0x0

    #@29
    return-object v2
.end method

.method private getTest(Ljava/lang/Class;)Ljunit/framework/Test;
    .locals 7
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 134
    const-class v5, Landroid/test/TestSuiteProvider;

    #@2
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 137
    const/4 v5, 0x0

    #@9
    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    #@b
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@e
    move-result-object v5

    #@f
    const/4 v6, 0x0

    #@10
    new-array v6, v6, [Ljava/lang/Object;

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroid/test/TestSuiteProvider;

    #@18
    .line 138
    .local v4, "testSuiteProvider":Landroid/test/TestSuiteProvider;
    invoke-interface {v4}, Landroid/test/TestSuiteProvider;->getTestSuite()Ljunit/framework/TestSuite;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v5

    #@1c
    return-object v5

    #@1d
    .line 145
    .end local v4    # "testSuiteProvider":Landroid/test/TestSuiteProvider;
    :catch_0
    move-exception v2

    #@1e
    .line 146
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "No such method on test suite provider. Class: "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@39
    .line 149
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    #@40
    move-result-object v5

    #@41
    return-object v5

    #@42
    .line 143
    :catch_1
    move-exception v3

    #@43
    .line 144
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "Invocation exception test suite provider. Class: "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@5e
    goto :goto_0

    #@5f
    .line 141
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    #@60
    .line 142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v6, "Illegal access of test suite provider. Class: "

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@7b
    goto :goto_0

    #@7c
    .line 139
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    #@7d
    .line 140
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v6, "Could not instantiate test suite provider. Class: "

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@98
    goto :goto_0
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "testClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 88
    :catch_0
    move-exception v0

    #@c
    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Could not find test class. Class: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@23
    .line 91
    const/4 v1, 0x0

    #@24
    return-object v1
.end method

.method private varargs newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    .locals 7
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p4, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v4

    #@4
    check-cast v4, Ljunit/framework/TestCase;

    #@6
    .line 114
    .local v4, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v4, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 115
    return-object v4

    #@a
    .line 122
    .end local v4    # "testCase":Ljunit/framework/TestCase;
    :catch_0
    move-exception v3

    #@b
    .line 123
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Constructor thew an exception. Class: "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@26
    .line 125
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    const/4 v5, 0x0

    #@27
    return-object v5

    #@28
    .line 120
    :catch_1
    move-exception v1

    #@29
    .line 121
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Illegal argument passed to constructor. Class: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 118
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    #@46
    .line 119
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "Could not instantiate test class. Class: "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@61
    goto :goto_0

    #@62
    .line 116
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    #@63
    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v6, "Could not access test class. Class: "

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {p0, v5}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    #@7e
    goto :goto_0
.end method

.method private setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "testContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 196
    const-class v0, Landroid/test/AndroidTestCase;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 197
    check-cast v0, Landroid/test/AndroidTestCase;

    #@f
    invoke-virtual {v0, p2}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    #@12
    .line 198
    check-cast p1, Landroid/test/AndroidTestCase;

    #@14
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1, p3}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V

    #@17
    .line 195
    :cond_0
    return-void
.end method

.method private setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    #@0
    .prologue
    .line 208
    const-class v0, Landroid/test/InstrumentationTestCase;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 209
    check-cast p1, Landroid/test/InstrumentationTestCase;

    #@e
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1, p2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    #@11
    .line 207
    :cond_0
    return-void
.end method

.method private setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@0
    .prologue
    .line 215
    const-class v0, Landroid/test/PerformanceCollectorTestCase;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 216
    check-cast p1, Landroid/test/PerformanceCollectorTestCase;

    #@e
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-interface {p1, p2}, Landroid/test/PerformanceCollectorTestCase;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    #@11
    .line 214
    :cond_0
    return-void
.end method

.method private setTest(Ljunit/framework/Test;Ljava/lang/Class;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    #@7
    .line 67
    const-class v0, Ljunit/framework/TestSuite;

    #@9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 68
    invoke-static {p1}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    #@15
    .line 65
    :goto_0
    return-void

    #@16
    .line 70
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    #@1c
    goto :goto_0
.end method

.method private shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "testMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    if-eqz p1, :cond_0

    #@2
    const-class v0, Ljunit/framework/TestCase;

    #@4
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method


# virtual methods
.method public addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "testListener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    .line 79
    if-eqz p1, :cond_0

    #@2
    .line 80
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 78
    :cond_0
    return-void
.end method

.method public clearTestListeners()V
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 74
    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 154
    new-instance v0, Landroid/test/NoExecTestResult;

    #@6
    invoke-direct {v0}, Landroid/test/NoExecTestResult;-><init>()V

    #@9
    return-object v0

    #@a
    .line 156
    :cond_0
    new-instance v0, Ljunit/framework/TestResult;

    #@c
    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    #@f
    return-object v0
.end method

.method public getTestCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTestResult()Ljunit/framework/TestResult;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    #@2
    return-object v0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method public runTest()V
    .locals 1

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/test/AndroidTestRunner;->createTestResult()Ljunit/framework/TestResult;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->runTest(Ljunit/framework/TestResult;)V

    #@7
    .line 175
    return-void
.end method

.method public runTest(Ljunit/framework/TestResult;)V
    .locals 6
    .param p1, "testResult"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    #@2
    .line 182
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    #@4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v4

    #@8
    .local v4, "testListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljunit/framework/TestListener;

    #@14
    .line 183
    .local v3, "testListener":Ljunit/framework/TestListener;
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    #@16
    invoke-virtual {v5, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    #@19
    goto :goto_0

    #@1a
    .line 186
    .end local v3    # "testListener":Ljunit/framework/TestListener;
    :cond_0
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    #@1c
    if-nez v5, :cond_1

    #@1e
    iget-object v2, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    #@20
    .line 187
    .local v2, "testContext":Landroid/content/Context;
    :goto_1
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    #@22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "testCase$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljunit/framework/TestCase;

    #@32
    .line 188
    .local v0, "testCase":Ljunit/framework/TestCase;
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    #@34
    invoke-direct {p0, v0, v5, v2}, Landroid/test/AndroidTestRunner;->setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V

    #@37
    .line 189
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    #@39
    invoke-direct {p0, v0, v5}, Landroid/test/AndroidTestRunner;->setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V

    #@3c
    .line 190
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@3e
    invoke-direct {p0, v0, v5}, Landroid/test/AndroidTestRunner;->setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    #@41
    .line 191
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    #@43
    invoke-virtual {v0, v5}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    #@46
    goto :goto_2

    #@47
    .line 186
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    .end local v1    # "testCase$iterator":Ljava/util/Iterator;
    .end local v2    # "testContext":Landroid/content/Context;
    :cond_1
    iget-object v5, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    #@49
    invoke-virtual {v5}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    #@4c
    move-result-object v2

    #@4d
    .restart local v2    # "testContext":Landroid/content/Context;
    goto :goto_1

    #@4e
    .line 179
    .restart local v1    # "testCase$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    #@2
    .line 202
    return-void
.end method

.method public setInstrumentaiton(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    #@3
    .line 229
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    #@0
    .prologue
    .line 221
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    .line 220
    return-void
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    .line 236
    return-void
.end method

.method setSkipExecution(Z)V
    .locals 0
    .param p1, "skip"    # Z

    #@0
    .prologue
    .line 160
    iput-boolean p1, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    #@2
    .line 159
    return-void
.end method

.method public setTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    #@7
    .line 61
    return-void
.end method

.method public setTestClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/test/AndroidTestRunner;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 52
    .local v1, "testClass":Ljava/lang/Class;
    invoke-direct {p0, p2, v1}, Landroid/test/AndroidTestRunner;->shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 53
    invoke-direct {p0, v1, p2}, Landroid/test/AndroidTestRunner;->buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    #@d
    move-result-object v0

    #@e
    .line 54
    .local v0, "testCase":Ljunit/framework/TestCase;
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljunit/framework/TestCase;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v0, v2, v3

    #@14
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    #@1a
    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    #@20
    .line 49
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    :goto_0
    return-void

    #@21
    .line 57
    :cond_0
    invoke-direct {p0, v1}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/Class;)Ljunit/framework/Test;

    #@24
    move-result-object v2

    #@25
    invoke-direct {p0, v2, v1}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    #@28
    goto :goto_0
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 251
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    return-void
.end method
