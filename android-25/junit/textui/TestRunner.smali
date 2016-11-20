.class public Ljunit/textui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"


# static fields
.field public static final EXCEPTION_EXIT:I = 0x2

.field public static final FAILURE_EXIT:I = 0x1

.field public static final SUCCESS_EXIT:I


# instance fields
.field private fPrinter:Ljunit/textui/ResultPrinter;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    #@5
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 48
    new-instance v0, Ljunit/textui/ResultPrinter;

    #@2
    invoke-direct {v0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    #@5
    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljunit/textui/ResultPrinter;)V

    #@8
    .line 47
    return-void
.end method

.method public constructor <init>(Ljunit/textui/ResultPrinter;)V
    .locals 0
    .param p1, "printer"    # Ljunit/textui/ResultPrinter;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    #@5
    .line 54
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 136
    new-instance v0, Ljunit/textui/TestRunner;

    #@2
    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    #@5
    .line 138
    .local v0, "aTestRunner":Ljunit/textui/TestRunner;
    :try_start_0
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->start([Ljava/lang/String;)Ljunit/framework/TestResult;

    #@8
    move-result-object v2

    #@9
    .line 139
    .local v2, "r":Ljunit/framework/TestResult;
    invoke-virtual {v2}, Ljunit/framework/TestResult;->wasSuccessful()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 140
    const/4 v3, 0x1

    #@10
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    #@13
    .line 141
    :cond_0
    const/4 v3, 0x0

    #@14
    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 135
    .end local v2    # "r":Ljunit/framework/TestResult;
    :goto_0
    return-void

    #@18
    .line 142
    :catch_0
    move-exception v1

    #@19
    .line 143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 144
    const/4 v3, 0x2

    #@23
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    #@26
    goto :goto_0
.end method

.method public static run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 2
    .param p0, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 76
    new-instance v0, Ljunit/textui/TestRunner;

    #@2
    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    #@5
    .line 77
    .local v0, "runner":Ljunit/textui/TestRunner;
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    new-instance v0, Ljunit/framework/TestSuite;

    #@2
    invoke-direct {v0, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@5
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    #@8
    .line 61
    return-void
.end method

.method public static runAndWait(Ljunit/framework/Test;)V
    .locals 2
    .param p0, "suite"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 85
    new-instance v0, Ljunit/textui/TestRunner;

    #@2
    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    #@5
    .line 86
    .local v0, "aTestRunner":Ljunit/textui/TestRunner;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    #@9
    .line 84
    return-void
.end method


# virtual methods
.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    #@0
    .prologue
    .line 105
    new-instance v0, Ljunit/framework/TestResult;

    #@2
    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    #@5
    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    .locals 8
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "wait"    # Z

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Ljunit/textui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    #@3
    move-result-object v2

    #@4
    .line 114
    .local v2, "result":Ljunit/framework/TestResult;
    iget-object v3, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    #@6
    invoke-virtual {v2, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    #@9
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v6

    #@d
    .line 116
    .local v6, "startTime":J
    invoke-interface {p1, v2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    #@10
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v0

    #@14
    .line 118
    .local v0, "endTime":J
    sub-long v4, v0, v6

    #@16
    .line 119
    .local v4, "runTime":J
    iget-object v3, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    #@18
    invoke-virtual {v3, v2, v4, v5}, Ljunit/textui/ResultPrinter;->print(Ljunit/framework/TestResult;J)V

    #@1b
    .line 121
    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->pause(Z)V

    #@1e
    .line 122
    return-object v2
.end method

.method protected pause(Z)V
    .locals 2
    .param p1, "wait"    # Z

    #@0
    .prologue
    .line 126
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 127
    :cond_0
    iget-object v1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    #@5
    invoke-virtual {v1}, Ljunit/textui/ResultPrinter;->printWaitPrompt()V

    #@8
    .line 129
    :try_start_0
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 125
    :goto_0
    return-void

    #@e
    .line 131
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 195
    const/4 v0, 0x1

    #@6
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@9
    .line 193
    return-void
.end method

.method protected runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;
    .locals 4
    .param p1, "testCase"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    invoke-virtual {p0, p1}, Ljunit/textui/TestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    const-class v3, Ljunit/framework/TestCase;

    #@6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    .line 188
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-static {v1, p2}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    #@d
    move-result-object v0

    #@e
    .line 189
    .local v0, "test":Ljunit/framework/Test;
    invoke-virtual {p0, v0, p3}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method

.method public setPrinter(Ljunit/textui/ResultPrinter;)V
    .locals 0
    .param p1, "printer"    # Ljunit/textui/ResultPrinter;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    #@2
    .line 198
    return-void
.end method

.method public start([Ljava/lang/String;)Ljunit/framework/TestResult;
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const-string/jumbo v6, ""

    #@3
    .line 154
    .local v6, "testCase":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@6
    .line 155
    .local v4, "method":Ljava/lang/String;
    const/4 v7, 0x0

    #@7
    .line 157
    .local v7, "wait":Z
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    array-length v8, p1

    #@9
    if-ge v2, v8, :cond_4

    #@b
    .line 158
    aget-object v8, p1, v2

    #@d
    const-string/jumbo v9, "-wait"

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_0

    #@16
    .line 159
    const/4 v7, 0x1

    #@17
    .line 157
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 160
    :cond_0
    aget-object v8, p1, v2

    #@1c
    const-string/jumbo v9, "-c"

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_1

    #@25
    .line 161
    add-int/lit8 v2, v2, 0x1

    #@27
    aget-object v8, p1, v2

    #@29
    invoke-virtual {p0, v8}, Ljunit/textui/TestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    goto :goto_1

    #@2e
    .line 162
    :cond_1
    aget-object v8, p1, v2

    #@30
    const-string/jumbo v9, "-m"

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_2

    #@39
    .line 163
    add-int/lit8 v2, v2, 0x1

    #@3b
    aget-object v0, p1, v2

    #@3d
    .line 164
    .local v0, "arg":Ljava/lang/String;
    const/16 v8, 0x2e

    #@3f
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@42
    move-result v3

    #@43
    .line 165
    .local v3, "lastIndex":I
    const/4 v8, 0x0

    #@44
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 166
    add-int/lit8 v8, v3, 0x1

    #@4a
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    goto :goto_1

    #@4f
    .line 167
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    :cond_2
    aget-object v8, p1, v2

    #@51
    const-string/jumbo v9, "-v"

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_3

    #@5a
    .line 168
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v10, "JUnit "

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    const-string/jumbo v10, " by Kent Beck and Erich Gamma"

    #@73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7e
    goto :goto_1

    #@7f
    .line 170
    :cond_3
    aget-object v6, p1, v2

    #@81
    goto :goto_1

    #@82
    .line 173
    :cond_4
    const-string/jumbo v8, ""

    #@85
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v8

    #@89
    if-eqz v8, :cond_5

    #@8b
    .line 174
    new-instance v8, Ljava/lang/Exception;

    #@8d
    const-string/jumbo v9, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    #@90
    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@93
    throw v8

    #@94
    .line 177
    :cond_5
    :try_start_0
    const-string/jumbo v8, ""

    #@97
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v8

    #@9b
    if-nez v8, :cond_6

    #@9d
    .line 178
    invoke-virtual {p0, v6, v4, v7}, Ljunit/textui/TestRunner;->runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;

    #@a0
    move-result-object v8

    #@a1
    return-object v8

    #@a2
    .line 179
    :cond_6
    invoke-virtual {p0, v6}, Ljunit/textui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    #@a5
    move-result-object v5

    #@a6
    .line 180
    .local v5, "suite":Ljunit/framework/Test;
    invoke-virtual {p0, v5, v7}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    move-result-object v8

    #@aa
    return-object v8

    #@ab
    .line 181
    .end local v5    # "suite":Ljunit/framework/Test;
    :catch_0
    move-exception v1

    #@ac
    .line 182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/Exception;

    #@ae
    new-instance v9, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v10, "Could not create and run test suite: "

    #@b6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@c5
    throw v8
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 90
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    return-void
.end method
