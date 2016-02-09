.class public Ljunit/extensions/TestSetup;
.super Ljunit/extensions/TestDecorator;
.source "TestSetup.java"


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    #@3
    .line 14
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 20
    new-instance v0, Ljunit/extensions/TestSetup$1;

    #@2
    invoke-direct {v0, p0, p1}, Ljunit/extensions/TestSetup$1;-><init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V

    #@5
    .line 27
    .local v0, "p":Ljunit/framework/Protectable;
    invoke-virtual {p1, p0, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    #@8
    .line 19
    return-void
.end method

.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    return-void
.end method
