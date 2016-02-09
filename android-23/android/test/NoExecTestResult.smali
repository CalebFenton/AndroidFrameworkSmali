.class Landroid/test/NoExecTestResult;
.super Ljunit/framework/TestResult;
.source "NoExecTestResult.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->startTest(Ljunit/framework/Test;)V

    #@3
    .line 36
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->endTest(Ljunit/framework/Test;)V

    #@6
    .line 34
    return-void
.end method
