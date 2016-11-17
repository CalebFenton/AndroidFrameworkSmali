.class public Ljunit/extensions/TestDecorator;
.super Ljunit/framework/Assert;
.source "TestDecorator.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field protected fTest:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    #@3
    .line 17
    iput-object p1, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    #@5
    .line 16
    return-void
.end method


# virtual methods
.method public basicRun(Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    #@2
    invoke-interface {v0, p1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    #@5
    .line 23
    return-void
.end method

.method public countTestCases()I
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    #@2
    invoke-interface {v0}, Ljunit/framework/Test;->countTestCases()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTest()Ljunit/framework/Test;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    #@2
    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 32
    invoke-virtual {p0, p1}, Ljunit/extensions/TestDecorator;->basicRun(Ljunit/framework/TestResult;)V

    #@3
    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
