.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fFailures:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 29
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    #@b
    .line 30
    new-instance v0, Ljava/util/Vector;

    #@d
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@10
    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    #@12
    .line 31
    new-instance v0, Ljava/util/Vector;

    #@14
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@17
    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    #@19
    .line 33
    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    #@1b
    .line 34
    iput-boolean v1, p0, Ljunit/framework/TestResult;->fStop:Z

    #@1d
    .line 27
    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 70
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 71
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    iget-object v1, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 72
    return-object v0

    #@d
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 41
    :try_start_0
    iget-object v2, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    #@3
    new-instance v3, Ljunit/framework/TestFailure;

    #@5
    invoke-direct {v3, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@8
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@b
    .line 42
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljunit/framework/TestListener;

    #@1f
    .line 43
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .end local v0    # "each":Ljunit/framework/TestListener;
    .end local v1    # "each$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2

    #@26
    .restart local v1    # "each$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@27
    .line 40
    return-void
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 50
    :try_start_0
    iget-object v2, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    #@3
    new-instance v3, Ljunit/framework/TestFailure;

    #@5
    invoke-direct {v3, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@8
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@b
    .line 51
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljunit/framework/TestListener;

    #@1f
    .line 52
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .end local v0    # "each":Ljunit/framework/TestListener;
    .end local v1    # "each$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2

    #@26
    .restart local v1    # "each$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@27
    .line 49
    return-void
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 58
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 57
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljunit/framework/TestListener;

    #@14
    .line 79
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    #@17
    goto :goto_0

    #@18
    .line 77
    .end local v0    # "each":Ljunit/framework/TestListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized errorCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    #@3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 91
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    #@3
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized failureCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 99
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    #@3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    #@3
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 64
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 63
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    #@3
    .line 113
    new-instance v0, Ljunit/framework/TestResult$1;

    #@5
    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    #@8
    .line 118
    .local v0, "p":Ljunit/framework/Protectable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    #@b
    .line 120
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    #@e
    .line 111
    return-void
.end method

.method public declared-synchronized runCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 126
    :try_start_0
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;

    #@0
    .prologue
    .line 133
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 131
    :goto_0
    return-void

    #@4
    .line 141
    :catch_0
    move-exception v1

    #@5
    .line 142
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v1}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@8
    goto :goto_0

    #@9
    .line 138
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@a
    .line 139
    .local v0, "e":Ljava/lang/ThreadDeath;
    throw v0

    #@b
    .line 135
    .end local v0    # "e":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v2

    #@c
    .line 136
    .local v2, "e":Ljunit/framework/AssertionFailedError;
    invoke-virtual {p0, p1, v2}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    #@f
    goto :goto_0
.end method

.method public declared-synchronized shouldStop()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 155
    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    #@3
    move-result v0

    #@4
    .line 156
    .local v0, "count":I
    monitor-enter p0

    #@5
    .line 157
    :try_start_0
    iget v3, p0, Ljunit/framework/TestResult;->fRunTests:I

    #@7
    add-int/2addr v3, v0

    #@8
    iput v3, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 159
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "each$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljunit/framework/TestListener;

    #@1f
    .line 160
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    #@22
    goto :goto_0

    #@23
    .line 156
    .end local v1    # "each":Ljunit/framework/TestListener;
    .end local v2    # "each$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@24
    monitor-exit p0

    #@25
    throw v3

    #@26
    .line 154
    .restart local v2    # "each$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 166
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 165
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    monitor-exit p0

    #@10
    return v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method
