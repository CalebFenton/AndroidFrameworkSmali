.class public Landroid/test/TestRunner$JunitTestSuite;
.super Ljunit/framework/TestSuite;
.source "TestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JunitTestSuite"
.end annotation


# instance fields
.field mError:Z

.field final synthetic this$0:Landroid/test/TestRunner;


# direct methods
.method public constructor <init>(Landroid/test/TestRunner;)V
    .locals 1
    .param p1, "this$0"    # Landroid/test/TestRunner;

    #@0
    .prologue
    .line 83
    iput-object p1, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@2
    .line 84
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    #@5
    .line 81
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    #@8
    .line 83
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    #@3
    .line 125
    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    .line 123
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 129
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    #@3
    .line 130
    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    .line 128
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/test/TestRunner;->-wrap0(Landroid/test/TestRunner;Ljava/lang/String;)V

    #@9
    .line 112
    iget-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 113
    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    #@16
    .line 110
    :cond_0
    return-void
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 89
    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    #@3
    .line 90
    invoke-super {p0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    #@6
    .line 91
    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->removeListener(Ljunit/framework/TestListener;)V

    #@9
    .line 88
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/test/TestRunner;->-wrap1(Landroid/test/TestRunner;Ljava/lang/String;)V

    #@9
    .line 100
    return-void
.end method
