.class public Landroid/test/TestPrinter;
.super Ljava/lang/Object;
.source "TestPrinter.java"

# interfaces
.implements Landroid/test/TestRunner$Listener;
.implements Ljunit/framework/TestListener;


# instance fields
.field private mFailedTests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyFailures:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "onlyFailures"    # Z

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    #@a
    .line 44
    iput-object p1, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@c
    .line 45
    iput-boolean p2, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    #@e
    .line 43
    return-void
.end method

.method private failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0, p2}, Landroid/test/TestPrinter;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    .line 88
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@3
    .line 93
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    #@3
    .line 97
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->finished(Ljava/lang/String;)V

    #@7
    .line 103
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->passed(Ljava/lang/String;)V

    #@1a
    .line 106
    :cond_0
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    #@1c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@23
    .line 101
    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "failed: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 83
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@1b
    const-string/jumbo v1, "----- begin exception -----"

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 84
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@23
    const-string/jumbo v1, ""

    #@26
    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 85
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@2b
    const-string/jumbo v1, "----- end exception -----"

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 81
    return-void
.end method

.method public finished(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "finished: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 54
    :cond_0
    return-void
.end method

.method public passed(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "passed: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 75
    :cond_0
    return-void
.end method

.method public performance(Ljava/lang/String;JILjava/util/List;)V
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "itemTimeNS"    # J
    .param p4, "iterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p5, "intermediates":Ljava/util/List;, "Ljava/util/List<Landroid/test/TestRunner$IntermediateTime;>;"
    iget-object v3, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "perf: "

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, " = "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "ns/op (done "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 64
    const-string/jumbo v5, " times)"

    #@2b
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 65
    if-eqz p5, :cond_0

    #@38
    invoke-interface {p5}, Ljava/util/List;->size()I

    #@3b
    move-result v3

    #@3c
    if-lez v3, :cond_0

    #@3e
    .line 66
    invoke-interface {p5}, Ljava/util/List;->size()I

    #@41
    move-result v0

    #@42
    .line 67
    .local v0, "N":I
    const/4 v1, 0x0

    #@43
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@45
    .line 68
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Landroid/test/TestRunner$IntermediateTime;

    #@4b
    .line 69
    .local v2, "time":Landroid/test/TestRunner$IntermediateTime;
    iget-object v3, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@4d
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "  intermediate: "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    iget-object v5, v2, Landroid/test/TestRunner$IntermediateTime;->name:Ljava/lang/String;

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    const-string/jumbo v5, " = "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 70
    iget-wide v6, v2, Landroid/test/TestRunner$IntermediateTime;->timeInNS:J

    #@68
    .line 69
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    .line 70
    const-string/jumbo v5, "ns"

    #@6f
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 67
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 62
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "time":Landroid/test/TestRunner$IntermediateTime;
    :cond_0
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->started(Ljava/lang/String;)V

    #@7
    .line 109
    return-void
.end method

.method public started(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 50
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "started: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 48
    :cond_0
    return-void
.end method
