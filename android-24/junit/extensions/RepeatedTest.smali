.class public Ljunit/extensions/RepeatedTest;
.super Ljunit/extensions/TestDecorator;
.source "RepeatedTest.java"


# instance fields
.field private fTimesRepeat:I


# direct methods
.method public constructor <init>(Ljunit/framework/Test;I)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "repeat"    # I

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    #@3
    .line 15
    if-gez p2, :cond_0

    #@5
    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Repetition count must be >= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 17
    :cond_0
    iput p2, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    #@10
    .line 13
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 2

    #@0
    .prologue
    .line 22
    invoke-super {p0}, Ljunit/extensions/TestDecorator;->countTestCases()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    #@6
    mul-int/2addr v0, v1

    #@7
    return v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 27
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 28
    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 26
    :cond_0
    return-void

    #@c
    .line 30
    :cond_1
    invoke-super {p0, p1}, Ljunit/extensions/TestDecorator;->run(Ljunit/framework/TestResult;)V

    #@f
    .line 27
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljunit/extensions/TestDecorator;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "(repeated)"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
