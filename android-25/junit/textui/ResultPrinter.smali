.class public Ljunit/textui/ResultPrinter;
.super Ljava/lang/Object;
.source "ResultPrinter.java"

# interfaces
.implements Ljunit/framework/TestListener;


# instance fields
.field fColumn:I

.field fWriter:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    #@6
    .line 22
    iput-object p1, p0, Ljunit/textui/ResultPrinter;->fWriter:Ljava/io/PrintStream;

    #@8
    .line 21
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "E"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 116
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "F"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 123
    return-void
.end method

.method protected elapsedTimeAsString(J)Ljava/lang/String;
    .locals 5
    .param p1, "runTime"    # J

    #@0
    .prologue
    .line 107
    long-to-double v0, p1

    #@1
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@6
    div-double/2addr v0, v2

    #@7
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 130
    return-void
.end method

.method public getWriter()Ljava/io/PrintStream;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljunit/textui/ResultPrinter;->fWriter:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method

.method declared-synchronized print(Ljunit/framework/TestResult;J)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 29
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljunit/textui/ResultPrinter;->printHeader(J)V

    #@4
    .line 30
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    #@7
    .line 31
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    #@a
    .line 32
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 28
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public printDefect(Ljunit/framework/TestFailure;I)V
    .locals 0
    .param p1, "booBoo"    # Ljunit/framework/TestFailure;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Ljunit/textui/ResultPrinter;->printDefectHeader(Ljunit/framework/TestFailure;I)V

    #@3
    .line 69
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printDefectTrace(Ljunit/framework/TestFailure;)V

    #@6
    .line 67
    return-void
.end method

.method protected printDefectHeader(Ljunit/framework/TestFailure;I)V
    .locals 3
    .param p1, "booBoo"    # Ljunit/framework/TestFailure;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ") "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p1}, Ljunit/framework/TestFailure;->failedTest()Ljunit/framework/Test;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@23
    .line 72
    return-void
.end method

.method protected printDefectTrace(Ljunit/framework/TestFailure;)V
    .locals 2
    .param p1, "booBoo"    # Ljunit/framework/TestFailure;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljunit/framework/TestFailure;->trace()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@f
    .line 78
    return-void
.end method

.method protected printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V
    .locals 4
    .param p2, "count"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p1, "booBoos":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljunit/framework/TestFailure;>;"
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 58
    :cond_0
    const/4 v1, 0x1

    #@4
    if-ne p2, v1, :cond_1

    #@6
    .line 59
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@9
    move-result-object v1

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "There was "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, ":"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 62
    :goto_0
    const/4 v0, 0x1

    #@34
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 63
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Ljunit/framework/TestFailure;

    #@40
    invoke-virtual {p0, v1, v0}, Ljunit/textui/ResultPrinter;->printDefect(Ljunit/framework/TestFailure;I)V

    #@43
    .line 62
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 61
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@49
    move-result-object v1

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "There were "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, " "

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    const-string/jumbo v3, "s:"

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    goto :goto_0

    #@74
    .line 56
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected printErrors(Ljunit/framework/TestResult;)V
    .locals 3
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Ljunit/framework/TestResult;->errors()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljunit/framework/TestResult;->errorCount()I

    #@7
    move-result v1

    #@8
    const-string/jumbo v2, "error"

    #@b
    invoke-virtual {p0, v0, v1, v2}, Ljunit/textui/ResultPrinter;->printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V

    #@e
    .line 48
    return-void
.end method

.method protected printFailures(Ljunit/framework/TestResult;)V
    .locals 3
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 53
    invoke-virtual {p1}, Ljunit/framework/TestResult;->failures()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljunit/framework/TestResult;->failureCount()I

    #@7
    move-result v1

    #@8
    const-string/jumbo v2, "failure"

    #@b
    invoke-virtual {p0, v0, v1, v2}, Ljunit/textui/ResultPrinter;->printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V

    #@e
    .line 52
    return-void
.end method

.method protected printFooter(Ljunit/framework/TestResult;)V
    .locals 4
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 83
    invoke-virtual {p1}, Ljunit/framework/TestResult;->wasSuccessful()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 84
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@d
    .line 85
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "OK"

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17
    .line 86
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@1a
    move-result-object v1

    #@1b
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, " ("

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string/jumbo v2, " test"

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    #@39
    move-result v0

    #@3a
    const/4 v3, 0x1

    #@3b
    if-ne v0, v3, :cond_0

    #@3d
    const-string/jumbo v0, ""

    #@40
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v2, ")"

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52
    .line 95
    :goto_1
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@59
    .line 82
    return-void

    #@5a
    .line 86
    :cond_0
    const-string/jumbo v0, "s"

    #@5d
    goto :goto_0

    #@5e
    .line 89
    :cond_1
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@65
    .line 90
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@68
    move-result-object v0

    #@69
    const-string/jumbo v1, "FAILURES!!!"

    #@6c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6f
    .line 91
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@72
    move-result-object v0

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v2, "Tests run: "

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    #@82
    move-result v2

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 92
    const-string/jumbo v2, ",  Failures: "

    #@8a
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 92
    invoke-virtual {p1}, Ljunit/framework/TestResult;->failureCount()I

    #@91
    move-result v2

    #@92
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 93
    const-string/jumbo v2, ",  Errors: "

    #@99
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    .line 93
    invoke-virtual {p1}, Ljunit/framework/TestResult;->errorCount()I

    #@a0
    move-result v2

    #@a1
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ac
    goto :goto_1
.end method

.method protected printHeader(J)V
    .locals 3
    .param p1, "runTime"    # J

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@7
    .line 45
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Time: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, p1, p2}, Ljunit/textui/ResultPrinter;->elapsedTimeAsString(J)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 43
    return-void
.end method

.method printWaitPrompt()V
    .locals 2

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@7
    .line 37
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "<RETURN> to continue"

    #@e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11
    .line 35
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "."

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 138
    iget v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    #@c
    add-int/lit8 v1, v0, 0x1

    #@e
    iput v1, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    #@10
    const/16 v1, 0x28

    #@12
    if-lt v0, v1, :cond_0

    #@14
    .line 139
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@1b
    .line 140
    const/4 v0, 0x0

    #@1c
    iput v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    #@1e
    .line 136
    :cond_0
    return-void
.end method
