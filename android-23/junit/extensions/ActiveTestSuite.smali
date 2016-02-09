.class public Ljunit/extensions/ActiveTestSuite;
.super Ljunit/framework/TestSuite;
.source "ActiveTestSuite.java"


# instance fields
.field private volatile fActiveTestDeathCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
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
    .line 21
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@3
    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 29
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1, p2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    #@3
    .line 24
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    #@3
    .line 35
    invoke-super {p0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    #@6
    .line 36
    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->waitUntilFinished()V

    #@9
    .line 33
    return-void
.end method

.method public declared-synchronized runFinished()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 67
    :try_start_0
    iget v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    #@7
    .line 68
    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 66
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 41
    new-instance v0, Ljunit/extensions/ActiveTestSuite$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljunit/extensions/ActiveTestSuite$1;-><init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    #@5
    .line 53
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@8
    .line 40
    return-void
.end method

.method declared-synchronized waitUntilFinished()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 57
    :goto_0
    :try_start_0
    iget v1, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    #@3
    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->testCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    goto :goto_0

    #@d
    .line 60
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    #@f
    .line 61
    return-void

    #@10
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    #@11
    .line 56
    return-void

    #@12
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method
